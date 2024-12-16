<?php

namespace App\Filament\Widgets;

use Filament\Forms\Components\Select;
use Illuminate\Support\Facades\DB;
use Leandrocfe\FilamentApexCharts\Widgets\ApexChartWidget;

class KPIGrossProfitMargin extends ApexChartWidget
{
    protected static ?string $chartId = 'kPIGrossProfitMargin';

    protected static ?string $heading = 'Margen de beneficio bruto';

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
        $year = $this->form->getState()['year'] ?? date('Y');
        $month = $this->form->getState()['month'] ?? date('m');

        $totalRevenues = DB::table('sales')
            ->whereYear('created_at', $year)
            ->whereMonth('created_at', $month)
            ->sum('total');

        $totalCostSales = DB::table('purchases')
            ->whereYear('created_at', $year)
            ->whereMonth('created_at', $month)
            ->sum('total');

        if ($totalRevenues == 0  || $totalCostSales == 0) {
            return 0;
        }

        $margenBruto = (($totalCostSales-$totalRevenues) / $totalRevenues) * 100;

        if ($margenBruto < 0) {
            return 0;
        }

        if ($margenBruto > 100) {
            return 100;
        }

        return round($margenBruto, 2);
    }

    protected function getOptions(): array
    {
        $value = $this->getData();

        return [
            'chart' => [
                'type' => 'radialBar',
                'height' => 330,
                'toolbar' => [
                    'show' => false,
                ],
            ],
            'series' => [$value],
            'plotOptions' => [
                'radialBar' => [
                    'startAngle' => -135,
                    'endAngle' => 225,
                    'hollow' => [
                        'margin' => 0,
                        'size' => '60%',
                        'background' => 'transparent',
                        'position' => 'front',
                        'dropShadow' => [
                            'enabled' => true,
                            'top' => 3,
                            'left' => 0,
                            'blur' => 4,
                            'opacity' => 0.24,
                        ],
                    ],
                    'track' => [
                        'background' => '#fff',
                        'strokeWidth' => '67%',
                        'margin' => 0,
                        'dropShadow' => [
                            'enabled' => true,
                            'top' => -3,
                            'left' => 0,
                            'blur' => 4,
                            'opacity' => 0.35,
                        ],
                    ],
                    'dataLabels' => [
                        'show' => true,
                        'name' => [
                            'show' => true,
                            'offsetY' => -10,
                            'fontFamily' => 'inherit',
                            'fontWeight' => 600,
                        ],
                        'value' => [
                            'show' => true,
                            'fontFamily' => 'inherit',
                            'fontWeight' => 600,
                        ],
                    ],

                ],
            ],
            'fill' => [
                'type' => 'gradient',
                'gradient' => [
                    'shade' => 'dark',
                    'type' => 'horizontal',
                    'shadeIntensity' => 0.7,
                    'gradientToColors' => ['#fcd34d'],
                    'inverseColors' => true,
                    'opacityFrom' => 1,
                    'opacityTo' => 1,
                    'stops' => [0, 100],
                ],
            ],
            'stroke' => [
                'lineCap' => 'round',
            ],
            'labels' => ['Porcentaje'],
            'colors' => ['#15803d'],
        ];
    }
}
