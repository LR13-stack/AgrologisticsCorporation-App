<?php

namespace App\Filament\Pages;

use App\Filament\Widgets\DynamicGraphicalReportsContainer;
use App\Filament\Widgets\SalesOfArticlesPerMonthChart;
use Filament\Pages\Page;

class DynamicGraphicalReports extends Page
{
    protected static ?string $navigationIcon = 'heroicon-o-chart-pie';

    protected static ?string $title = 'Reportes: Gráficos Dinámicos';

    protected static string $view = 'filament.pages.dynamic-graphical-reports';

    public function getHeaderWidgetsColumns(): int | array
    {
        return 1;
    }

    protected function getHeaderWidgets(): array
    {
        return [
            SalesOfArticlesPerMonthChart::class,
            DynamicGraphicalReportsContainer::class,
        ];
    }
}
