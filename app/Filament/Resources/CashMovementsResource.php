<?php

namespace App\Filament\Resources;

use App\Filament\Resources\CashMovementsResource\Pages;
use App\Filament\Resources\CashMovementsResource\RelationManagers;
use App\Models\CashMovements;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class CashMovementsResource extends Resource
{
    protected static ?string $model = CashMovements::class;

    protected static ?string $modelLabel = 'Movimiento de efectivo';

    protected static ?string $pluralModelLabel = 'Movimientos de efectivo';

    protected static ?string $navigationIcon = 'heroicon-o-inbox-arrow-down';

    protected static ?string $navigationGroup = 'Finanzas';

    protected static ?string $slug = 'finances/cash-movements';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\TextInput::make('account_id')
                    ->required()
                    ->numeric(),
                Forms\Components\TextInput::make('type_movement')
                    ->required()
                    ->maxLength(255),
                Forms\Components\TextInput::make('amount')
                    ->required()
                    ->numeric(),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('account_id')
                    ->numeric()
                    ->sortable(),
                Tables\Columns\TextColumn::make('type_movement')
                    ->searchable(),
                Tables\Columns\TextColumn::make('amount')
                    ->numeric()
                    ->sortable(),
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
            'index' => Pages\ListCashMovements::route('/'),
            'create' => Pages\CreateCashMovements::route('/create'),
            'edit' => Pages\EditCashMovements::route('/{record}/edit'),
        ];
    }
}
