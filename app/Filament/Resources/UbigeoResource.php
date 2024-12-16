<?php

namespace App\Filament\Resources;

use App\Filament\Resources\UbigeoResource\Pages;
use App\Filament\Resources\UbigeoResource\RelationManagers;
use App\Models\Ubigeo;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class UbigeoResource extends Resource
{
    protected static ?string $model = Ubigeo::class;

    protected static ?string $modelLabel = 'Ubigeo';

    protected static ?string $pluralModelLabel = 'Códigos de ubigeo';

    protected static ?string $navigationIcon = 'heroicon-o-map-pin';

    protected static ?string $navigationGroup = 'Geografía';

    protected static ?string $slug = 'geography/ubigeos';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\TextInput::make('name')
                    ->required()
                    ->maxLength(255),
                Forms\Components\TextInput::make('code')
                    ->required()
                    ->maxLength(255),
                Forms\Components\TextInput::make('tag')
                    ->required()
                    ->maxLength(255),
                Forms\Components\TextInput::make('search_engine')
                    ->required()
                    ->maxLength(255),
                Forms\Components\TextInput::make('number_of_children')
                    ->required()
                    ->maxLength(255),
                Forms\Components\TextInput::make('level')
                    ->required()
                    ->numeric(),
                Forms\Components\TextInput::make('parent_code')
                    ->required()
                    ->maxLength(255),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('id')
                    ->searchable(),
                Tables\Columns\TextColumn::make('name')
                    ->searchable(),
                Tables\Columns\TextColumn::make('code')
                    ->searchable(),
                Tables\Columns\TextColumn::make('tag')
                    ->searchable(),
                Tables\Columns\TextColumn::make('search_engine')
                    ->searchable(),
                Tables\Columns\TextColumn::make('number_of_children')
                    ->searchable(),
                Tables\Columns\TextColumn::make('level')
                    ->numeric()
                    ->sortable(),
                Tables\Columns\TextColumn::make('parent_code')
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
            'index' => Pages\ListUbigeos::route('/'),
            'create' => Pages\CreateUbigeo::route('/create'),
            'edit' => Pages\EditUbigeo::route('/{record}/edit'),
        ];
    }
}
