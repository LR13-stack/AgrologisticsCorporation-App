<?php

namespace App\Filament\Widgets;

use Filament\Widgets\Widget;

class KPIContainer extends Widget
{
    protected static string $view = 'filament.widgets.k-p-i-container';

    public function getWidgets(): array
    {
        return [
            KPIGrossProfitMargin::class,
            KPISalesGrowthRate::class,
            KPICustomerRetentionRate::class,
        ];
    }
}
