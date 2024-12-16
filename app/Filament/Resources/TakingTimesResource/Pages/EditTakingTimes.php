<?php

namespace App\Filament\Resources\TakingTimesResource\Pages;

use App\Filament\Resources\TakingTimesResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditTakingTimes extends EditRecord
{
    protected static string $resource = TakingTimesResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}
