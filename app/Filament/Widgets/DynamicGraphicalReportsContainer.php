<?php

namespace App\Filament\Widgets;

use Filament\Widgets\Widget;

class DynamicGraphicalReportsContainer extends Widget
{
    protected static string $view = 'filament.widgets.dynamic-graphical-reports-container';

    public function getWidgets(): array
    {
        return [
            CustomerLineChart::class,
            AreasWithTheHighestSalesChart::class,
        ];
    }
}
