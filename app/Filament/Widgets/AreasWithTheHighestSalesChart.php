<?php

namespace App\Filament\Widgets;

use Filament\Forms\Components\Select;
use Illuminate\Support\Facades\DB;
use Leandrocfe\FilamentApexCharts\Widgets\ApexChartWidget;

class AreasWithTheHighestSalesChart extends ApexChartWidget
{
    protected static ?string $chartId = 'areasWithTheHighestSalesChart';

    protected static ?string $heading = 'Zonas con más ventas';

    protected function getFormSchema(): array
    {
        return [
            Select::make('year')
                ->label('Año')
                ->options([
                    date('Y') => date('Y'),
                    date('Y') - 1 => date('Y') - 1,
                    date('Y') - 2 => date('Y') - 2,
                ])
                ->native(false)
                ->default(date('Y')),
            Select::make('month')
                ->label('Mes')
                ->options([
                    '01' => 'Enero',
                    '02' => 'Febrero',
                    '03' => 'Marzo',
                    '04' => 'Abril',
                    '05' => 'Mayo',
                    '06' => 'Junio',
                    '07' => 'Julio',
                    '08' => 'Agosto',
                    '09' => 'Septiembre',
                    '10' => 'Octubre',
                    '11' => 'Noviembre',
                    '12' => 'Diciembre',
                ])
                ->native(false)
                ->default(date('m')),
        ];
    }

    protected function getData()
    {
        $year = $this->filterFormData['year'] ?? date('Y');
        $month = $this->filterFormData['month'] ?? date('m');

        $salesByZone = DB::table('sales')
            ->selectRaw('warehouses.zone_id, COUNT(sales.id) as total_sales, zones.name as zone_name')
            ->join('warehouses', 'warehouses.id', '=', 'sales.warehouse_id')
            ->join('zones', 'zones.id', '=', 'warehouses.zone_id')
            ->whereYear('sales.created_at', $year)
            ->whereMonth('sales.created_at', $month)
            ->groupBy('warehouses.zone_id', 'zones.name')
            ->get();

        $zones = $salesByZone->pluck('zone_name')->toArray();
        $sales = $salesByZone->pluck('total_sales')->toArray();

        return [
            'categories' => $zones,
            'sales' => $sales,
        ];
    }

    protected function getOptions(): array
    {
        $categories = $this->getData()['categories'];
        $quantitySales = $this->getData()['sales'];

        return [
            'chart' => [
                'type' => 'pie',
                'height' => 300,
            ],
            'series' => [2, 4, 6, 10, 14],
            'labels' => ['Jan', 'Feb', 'Mar', 'Apr', 'May'],
            'legend' => [
                'labels' => [
                    'fontFamily' => 'inherit',
                ],
            ],
        ];
    }
}
