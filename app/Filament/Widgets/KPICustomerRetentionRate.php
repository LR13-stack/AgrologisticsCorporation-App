<?php

namespace App\Filament\Widgets;

use Filament\Forms\Components\TextInput;
use Illuminate\Support\Facades\DB;
use Leandrocfe\FilamentApexCharts\Widgets\ApexChartWidget;

class KPICustomerRetentionRate extends ApexChartWidget
{
    protected static ?string $chartId = 'kPICustomerRetentionRate';

    protected static ?string $heading = 'Tasa de retención de clientes';

    protected function getFormSchema(): array
    {
        return [
            TextInput::make('end_customers')
                ->label('Clientes finales')
                ->numeric()
                ->minValue(1)
                ->default(90),
            TextInput::make('new_customers')
                ->label('Nuevos clientes')
                ->numeric()
                ->minValue(1)
                ->default(10),
            TextInput::make('initial_customers')
                ->label('Clientes iniciales')
                ->numeric()
                ->minValue(1)
                ->default(100),
        ];
    }

    protected function getData()
    {
        $end_customers = $this->form->getState()['end_customers'] ?? 90;
        $new_customers = $this->form->getState()['new_customers'] ?? 10;
        $initial_customers = $this->form->getState()['initial_customers'] ?? 100;

        $retention_rate = ($end_customers - $new_customers) / $initial_customers * 100;
        return round($retention_rate, 2);
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
