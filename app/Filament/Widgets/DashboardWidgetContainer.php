<?php

namespace App\Filament\Widgets;

use Filament\Widgets\Widget;
use Filament\Widgets\AccountWidget;

class DashboardWidgetContainer extends Widget
{
    protected static string $view = 'filament.widgets.dashboard-widget-container';

    public function getWidgets(): array
    {
        return [
            AccountWidget::class,
        ];
    }
}
