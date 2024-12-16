<?php

namespace App\Filament\Widgets;

use Filament\Forms\Components\Select;
use Illuminate\Support\Facades\DB;
use Leandrocfe\FilamentApexCharts\Widgets\ApexChartWidget;

class OverallSalesAndPurchasesChart extends ApexChartWidget
{
    protected static ?string $chartId = 'overallSalesAndPurchasesChart';

    protected static ?string $heading = 'Compras Vs. Ventas por Año';

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
        ];
    }

    protected function getData()
    {
        $year = $this->form->getState()['year'] ?? date('Y');

        $purchasesByMonth = DB::table('purchases')
            ->selectRaw('EXTRACT(MONTH FROM created_at) as month, COUNT(*) as total')
            ->whereYear('created_at', $year)
            ->groupByRaw('EXTRACT(MONTH FROM created_at)')
            ->orderByRaw('EXTRACT(MONTH FROM created_at)')
            ->pluck('total', 'month');

        $salesByMonth = DB::table('sales')
            ->selectRaw('EXTRACT(MONTH FROM created_at) as month, COUNT(*) as total')
            ->whereYear('created_at', $year)
            ->groupByRaw('EXTRACT(MONTH FROM created_at)')
            ->orderByRaw('EXTRACT(MONTH FROM created_at)')
            ->pluck('total', 'month');

        $purchases = [];
        $sales = [];

        for ($month = 1; $month <= 12; $month++) {
            $purchases[] = $purchasesByMonth[$month] ?? 0;
            $sales[] = $salesByMonth[$month] ?? 0;
        }

        return [
            'purchases' => $purchases,
            'sales' => $sales,
        ];
    }

    protected function getOptions(): array
    {
        $purchases = $this->getData()['purchases'];
        $sales = $this->getData()['sales'];
        
        return [
            'chart' => [
                'type' => 'bar',
                'height' => 300,
            ],
            'series' => [
                [
                    'name' => 'Compras',
                    'data' => $purchases,
                ],
                [
                    'name' => 'Ventas',
                    'data' => $sales,
                ],
            ],
            'xaxis' => [
                'categories' => [
                    'Ene',
                    'Feb',
                    'Mar',
                    'Abr',
                    'May',
                    'Jun',
                    'Jul',
                    'Ago',
                    'Sep',
                    'Oct',
                    'Nov',
                    'Dic',
                ],
                'labels' => [
                    'style' => [
                        'fontFamily' => 'inherit',
                    ],
                ],
            ],
            'yaxis' => [
                'title' => [
                    'text' => '',
                ],
                'labels' => [
                    'style' => [
                        'fontFamily' => 'inherit',
                    ],
                ],
            ],
            'colors' => ['#fcd34d', '#15803d'],
            'plotOptions' => [
                'bar' => [
                    'horizontal' => false,
                    'columnWidth' => '55%',
                    'borderRadius' => 5,
                    'shadow' => [
                        'enabled' => true,
                        'blur' => 3,
                        'color' => 'rgba(0, 0, 0, 0.3)',
                        'offsetX' => 2,
                        'offsetY' => 2,
                    ],
                ],
            ],
            'dataLabels' => [
                'enabled' => false,
            ],
            'fill' => [
                'opacity' => 1,
            ],
        ];
    }
}
