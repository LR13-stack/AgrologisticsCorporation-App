<?php

namespace App\Filament\Resources\GroupOfConceptsResource\Pages;

use App\Filament\Resources\GroupOfConceptsResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditGroupOfConcepts extends EditRecord
{
    protected static string $resource = GroupOfConceptsResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}
