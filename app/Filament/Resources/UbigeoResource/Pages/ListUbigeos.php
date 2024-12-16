<?php

namespace App\Filament\Resources\UbigeoResource\Pages;

use App\Filament\Resources\UbigeoResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListUbigeos extends ListRecords
{
    protected static string $resource = UbigeoResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}
