<?php

namespace App\Filament\Resources\ArticleTransferResource\Pages;

use App\Filament\Resources\ArticleTransferResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditArticleTransfer extends EditRecord
{
    protected static string $resource = ArticleTransferResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}
