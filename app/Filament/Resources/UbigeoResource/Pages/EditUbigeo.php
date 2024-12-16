<?php

namespace App\Filament\Resources\UbigeoResource\Pages;

use App\Filament\Resources\UbigeoResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditUbigeo extends EditRecord
{
    protected static string $resource = UbigeoResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}
