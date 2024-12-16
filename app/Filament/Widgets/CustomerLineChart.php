<?php

namespace App\Filament\Widgets;

use Illuminate\Support\Facades\DB;
use Leandrocfe\FilamentApexCharts\Widgets\ApexChartWidget;

use function Termwind\style;

class CustomerLineChart extends ApexChartWidget
{
    protected static ?string $chartId = 'customerLineChart';

    protected static ?string $heading = 'Clientes registrados';

    protected function getData()
    {
        $totalCustomers = DB::table('customers')->count();
        $customerArray = range(0, $totalCustomers);

        return [
            'data' => $customerArray,
            'total' => $totalCustomers,
        ];
    }

    protected function getOptions(): array
    {
        $data = $this->getData()['data'];
        $subTitle = $this->getData()['total'];

        return [
            'chart' => [
                'type' => 'line',
                'height' => 300,
                'zoom' => [
                    'enabled' => false,
                ],
            ],
            'markers' => [
                'size' => 0,
            ],
            'xaxis' => [
                'labels' => [
                    'show' => false,
                ],
                'axisTicks' => [
                    'show' => false,
                ],
                'tooltip' => [
                    'enabled' => false,
                ],
            ],
            'yaxis' => [
                'tickAmount' => 4,
                'labels' => [
                    'show' => false,
                ],
                'axisBorder' => [
                    'show' => false,
                ],
                'axisTicks' => [
                    'show' => false,
                ],
                'min' => 0,
            ],
            'series' => [
                [
                    'name' => 'Clientes registrados',
                    'data' => $data,
                ],
            ],
            'colors' => ['#166534'],
            'stroke' => [
                'width' => 5,
                'curve' => 'smooth',
            ],
            'subtitle' => [
                'text' => $subTitle . ' clientes',
                'align' => 'center',
                'margin' => 30,
                'offsetY' => 40,
                'style' => [
                    'fontSize' => '18px',
                ],
            ],
        ];
    }
}
