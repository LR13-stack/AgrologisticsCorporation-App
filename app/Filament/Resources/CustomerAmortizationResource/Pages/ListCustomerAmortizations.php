<?php

namespace App\Filament\Resources\CustomerAmortizationResource\Pages;

use App\Filament\Resources\CustomerAmortizationResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListCustomerAmortizations extends ListRecords
{
    protected static string $resource = CustomerAmortizationResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}
