<?php

namespace App\Filament\Resources\LoanOfMerchandiseResource\Pages;

use App\Filament\Resources\LoanOfMerchandiseResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListLoanOfMerchandises extends ListRecords
{
    protected static string $resource = LoanOfMerchandiseResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}
