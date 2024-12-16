<?php

namespace App\Filament\Resources\GroupOfConceptsResource\Pages;

use App\Filament\Resources\GroupOfConceptsResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListGroupOfConcepts extends ListRecords
{
    protected static string $resource = GroupOfConceptsResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}
