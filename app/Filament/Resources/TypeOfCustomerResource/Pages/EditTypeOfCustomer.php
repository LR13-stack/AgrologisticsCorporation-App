<?php

namespace App\Filament\Resources\TypeOfCustomerResource\Pages;

use App\Filament\Resources\TypeOfCustomerResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditTypeOfCustomer extends EditRecord
{
    protected static string $resource = TypeOfCustomerResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}
