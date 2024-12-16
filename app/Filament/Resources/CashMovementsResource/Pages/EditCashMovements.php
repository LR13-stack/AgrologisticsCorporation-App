<?php

namespace App\Filament\Resources\CashMovementsResource\Pages;

use App\Filament\Resources\CashMovementsResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditCashMovements extends EditRecord
{
    protected static string $resource = CashMovementsResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}
