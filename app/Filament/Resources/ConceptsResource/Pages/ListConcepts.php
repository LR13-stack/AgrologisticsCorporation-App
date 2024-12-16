<?php

namespace App\Filament\Resources\ConceptsResource\Pages;

use App\Filament\Resources\ConceptsResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListConcepts extends ListRecords
{
    protected static string $resource = ConceptsResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}
