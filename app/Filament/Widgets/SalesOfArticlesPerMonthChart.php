<?php

namespace App\Filament\Widgets;

use App\Models\Article;
use Carbon\Carbon;
use Filament\Forms\Components\Select;
use Illuminate\Support\Facades\DB;
use Leandrocfe\FilamentApexCharts\Widgets\ApexChartWidget;

class SalesOfArticlesPerMonthChart extends ApexChartWidget
{
    protected static ?string $chartId = 'salesOfArticlesPerMonthChart';

    protected static ?string $heading = 'Ventas de un artículo por mes';

    protected function getFormSchema(): array
    {
        return [
            Select::make('article_id')
                ->label('Artículo')
                ->options(Article::all()->pluck('name', 'id'))
                ->native(false)
                ->searchable()
                ->default(1),
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
        $articleId = $this->form->getState()['article_id'] ?? 1;
        $year = $this->form->getState()['year'] ?? date('Y');
        $month = $this->form->getState()['month'] ?? date('m');

        $startDate = Carbon::createFromDate($year, $month)->startOfMonth();
        $endDate = Carbon::createFromDate($year, $month)->endOfMonth();
        $daysInMonth = $startDate->daysInMonth;

        $days = array_map(function ($day) {
            return str_pad($day, 2, '0', STR_PAD_LEFT);
        }, range(1, $daysInMonth));

        $salesByDay = DB::table('sale_details')
            ->join('batches', 'sale_details.batch_id', '=', 'batches.id')
            ->join('inventories', 'batches.inventory_id', '=', 'inventories.id')
            ->join('articles', 'inventories.article_id', '=', 'articles.id')
            ->selectRaw('DATE(sale_details.created_at) as date, SUM(sale_details.quantity) as total_quantity')
            ->where('articles.id', $articleId)
            ->whereBetween('sale_details.created_at', [$startDate, $endDate])
            ->groupBy('date')
            ->orderBy('date', 'asc')
            ->pluck('total_quantity', 'date')
            ->toArray();

        $sales = [];
        foreach ($days as $day) {
            $currentDate = Carbon::createFromDate($year, $month, $day)->format('Y-m-d');
            $sales[] = $salesByDay[$currentDate] ?? 0;
        }

        return [
            'categories' => $days,
            'sales' => $sales,
        ];
    }

    protected function getOptions(): array
    {
        $quantitiesSales = $this->getData()['sales'];
        $categories = $this->getData()['categories'];

        return [
            'chart' => [
                'type' => 'bar',
                'height' => 300,
            ],
            'series' => [
                [
                    'name' => 'Cantidad',
                    'data' => $quantitiesSales,
                ],
            ],
            'xaxis' => [
                'categories' => $categories,
                'labels' => [
                    'style' => [
                        'fontFamily' => 'inherit',
                    ],
                ],
            ],
            'yaxis' => [
                'labels' => [
                    'style' => [
                        'fontFamily' => 'inherit',
                    ],
                ],
            ],
            'colors' => ['#15803d'],
            'plotOptions' => [
                'bar' => [
                    'horizontal' => false,
                    'columnWidth' => '55%',
                    'borderRadius' => 5,
                ],
            ],
            'dataLabels' => [
                'enabled' => false,
            ],
            'fill' => [
                'type' => 'gradient',
                'gradient' => [
                    'shade' => 'dark',
                    'type' => 'vertical',
                    'shadeIntensity' => 0.2,
                    'gradientToColors' => ['#86efac'],
                    'inverseColors' => true,
                    'opacityFrom' => 1,
                    'opacityTo' => 1,
                ],
            ],
        ];
    }
}
