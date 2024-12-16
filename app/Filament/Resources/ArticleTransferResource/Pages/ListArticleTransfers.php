<?php

namespace App\Filament\Resources\ArticleTransferResource\Pages;

use App\Filament\Resources\ArticleTransferResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListArticleTransfers extends ListRecords
{
    protected static string $resource = ArticleTransferResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}
