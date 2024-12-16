<?php

namespace App\Filament\Resources\AdvancedSaleResource\Pages;

use App\Filament\Resources\AdvancedSaleResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListAdvancedSales extends ListRecords
{
    protected static string $resource = AdvancedSaleResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}
