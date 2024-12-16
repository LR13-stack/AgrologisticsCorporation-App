<?php

namespace App\Filament\Resources;

use App\Filament\Resources\TypeOfCustomerResource\Pages;
use App\Filament\Resources\TypeOfCustomerResource\RelationManagers;
use App\Models\TypeOfCustomer;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class TypeOfCustomerResource extends Resource
{
    protected static ?string $model = TypeOfCustomer::class;

    protected static ?string $modelLabel = 'Tipo de cliente';

    protected static ?string $pluralModelLabel = 'Tipos de clientes';

    protected static ?string $navigationIcon = 'heroicon-o-paper-clip';

    protected static ?string $navigationGroup = 'Stakeholders';

    protected static ?string $slug = 'stakeholders/types-of-customers';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\TextInput::make('name')
                    ->required()
                    ->maxLength(255),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('name')
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
            'index' => Pages\ListTypeOfCustomers::route('/'),
            'create' => Pages\CreateTypeOfCustomer::route('/create'),
            'edit' => Pages\EditTypeOfCustomer::route('/{record}/edit'),
        ];
    }
}
