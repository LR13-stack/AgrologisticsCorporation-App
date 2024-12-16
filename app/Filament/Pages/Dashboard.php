<?php

namespace App\Filament\Pages;

use App\Filament\Widgets\DashboardWidgetContainer;
use App\Filament\Widgets\KPIContainer;
use App\Filament\Widgets\OverallSalesAndPurchasesChart;
use Filament\Pages\Dashboard\Concerns\HasFiltersAction;
use Filament\Pages\Dashboard as BaseDashboard;

class Dashboard extends BaseDashboard
{
    use HasFiltersAction;

    public function getColumns(): int | string | array
    {
        return 1;
    }

    public function getWidgets(): array
    {
        return [
            DashboardWidgetContainer::class,
            KPIContainer::class,
            OverallSalesAndPurchasesChart::class,
        ];
    }
}
