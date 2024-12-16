<?php

namespace App\Filament\Resources\ConceptsResource\Pages;

use App\Filament\Resources\ConceptsResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditConcepts extends EditRecord
{
    protected static string $resource = ConceptsResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}
