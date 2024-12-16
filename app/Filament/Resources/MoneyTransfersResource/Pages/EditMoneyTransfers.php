<?php

namespace App\Filament\Resources\MoneyTransfersResource\Pages;

use App\Filament\Resources\MoneyTransfersResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditMoneyTransfers extends EditRecord
{
    protected static string $resource = MoneyTransfersResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}
