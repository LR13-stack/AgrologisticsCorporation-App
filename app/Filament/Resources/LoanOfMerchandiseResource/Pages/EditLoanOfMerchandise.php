<?php

namespace App\Filament\Resources\LoanOfMerchandiseResource\Pages;

use App\Filament\Resources\LoanOfMerchandiseResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditLoanOfMerchandise extends EditRecord
{
    protected static string $resource = LoanOfMerchandiseResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}
