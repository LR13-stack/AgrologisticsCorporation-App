<?php

namespace App\Filament\Resources\AdvancedSaleResource\Pages;

use App\Filament\Resources\AdvancedSaleResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditAdvancedSale extends EditRecord
{
    protected static string $resource = AdvancedSaleResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}
