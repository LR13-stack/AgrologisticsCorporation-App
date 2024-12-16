<?php

namespace App\Filament\Resources\TakingTimesResource\Pages;

use App\Filament\Resources\TakingTimesResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListTakingTimes extends ListRecords
{
    protected static string $resource = TakingTimesResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}
