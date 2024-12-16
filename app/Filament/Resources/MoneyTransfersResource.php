<?php

namespace App\Filament\Resources;

use App\Filament\Resources\MoneyTransfersResource\Pages;
use App\Filament\Resources\MoneyTransfersResource\RelationManagers;
use App\Models\MoneyTransfers;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class MoneyTransfersResource extends Resource
{
    protected static ?string $model = MoneyTransfers::class;

    protected static ?string $modelLabel = 'Transferencia de dinero';

    protected static ?string $pluralModelLabel = 'Transferencias de dinero';

    protected static ?string $navigationIcon = 'heroicon-o-sparkles';

    protected static ?string $navigationGroup = 'Finanzas';

    protected static ?string $slug = 'finances/money-transfers';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\TextInput::make('code')
                    ->required()
                    ->maxLength(255),
                Forms\Components\TextInput::make('amount')
                    ->required()
                    ->numeric(),
                Forms\Components\TextInput::make('source_account_id')
                    ->required()
                    ->numeric(),
                Forms\Components\TextInput::make('destination_account_id')
                    ->required()
                    ->numeric(),
                Forms\Components\TextInput::make('exchange_rate')
                    ->required()
                    ->numeric(),
                Forms\Components\Textarea::make('observation')
                    ->columnSpanFull(),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('code')
                    ->searchable(),
                Tables\Columns\TextColumn::make('amount')
                    ->numeric()
                    ->sortable(),
                Tables\Columns\TextColumn::make('source_account_id')
                    ->numeric()
                    ->sortable(),
                Tables\Columns\TextColumn::make('destination_account_id')
                    ->numeric()
                    ->sortable(),
                Tables\Columns\TextColumn::make('exchange_rate')
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
            'index' => Pages\ListMoneyTransfers::route('/'),
            'create' => Pages\CreateMoneyTransfers::route('/create'),
            'edit' => Pages\EditMoneyTransfers::route('/{record}/edit'),
        ];
    }
}
