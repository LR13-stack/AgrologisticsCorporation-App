<?php

namespace App\Filament\Resources;

use App\Filament\Resources\ArticleTransferResource\Pages;
use App\Filament\Resources\ArticleTransferResource\RelationManagers;
use App\Models\ArticleTransfer;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class ArticleTransferResource extends Resource
{
    protected static ?string $model = ArticleTransfer::class;

    protected static ?string $modelLabel = 'Transferencia de artículo';

    protected static ?string $pluralModelLabel = 'Transferencias de artículos';

    protected static ?string $navigationIcon = 'heroicon-o-truck';

    protected static ?string $navigationGroup = 'Inventario';

    protected static ?string $slug = 'inventory/article-transfers';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\TextInput::make('warehouse_origin_id')
                    ->required()
                    ->numeric(),
                Forms\Components\TextInput::make('warehouse_destination_id')
                    ->required()
                    ->numeric(),
                Forms\Components\TextInput::make('observation')
                    ->maxLength(255),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('warehouse_origin_id')
                    ->numeric()
                    ->sortable(),
                Tables\Columns\TextColumn::make('warehouse_destination_id')
                    ->numeric()
                    ->sortable(),
                Tables\Columns\TextColumn::make('observation')
                    ->searchable(),
                Tables\Columns\TextColumn::make('created_at')
                    ->dateTime()
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
                Tables\Columns\TextColumn::make('updated_at')
                    ->dateTime()
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make(),
                ]),
            ]);
    }

    public static function getRelations(): array
    {
        return [
            //
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListArticleTransfers::route('/'),
            'create' => Pages\CreateArticleTransfer::route('/create'),
            'edit' => Pages\EditArticleTransfer::route('/{record}/edit'),
        ];
    }
}
