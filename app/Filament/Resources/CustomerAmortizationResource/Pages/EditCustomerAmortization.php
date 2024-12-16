<?php

namespace App\Filament\Resources\CustomerAmortizationResource\Pages;

use App\Filament\Resources\CustomerAmortizationResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditCustomerAmortization extends EditRecord
{
    protected static string $resource = CustomerAmortizationResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}
