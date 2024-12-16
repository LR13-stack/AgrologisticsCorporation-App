<?php

namespace App\Filament\Resources;

use App\Filament\Resources\BankAccountResource\Pages;
use App\Filament\Resources\BankAccountResource\RelationManagers;
use App\Models\Bank;
use App\Models\BankAccount;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class BankAccountResource extends Resource
{
    protected static ?string $model = BankAccount::class;

    protected static ?string $modelLabel = 'Cuenta bancaria';

    protected static ?string $pluralModelLabel = 'Cuentas bancarias';

    protected static ?string $navigationIcon = 'heroicon-o-wallet';

    protected static ?string $navigationGroup = 'Finanzas';

    protected static ?string $slug = 'finances/bank-accounts';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\Select::make('bank_id')
                    ->label('Banco')
                    ->options(Bank::all()->pluck('name', 'id'))
                    ->required()
                    ->native(false)
                    ->searchable(),
                Forms\Components\TextInput::make('owner')
                    ->label('Propietario')
                    ->required()
                    ->maxLength(255),
                Forms\Components\TextInput::make('cci')
                    ->label('CCI')
                    ->required()
                    ->maxLength(255),
                Forms\Components\Select::make('currency_type')
                    ->label('Tipo de moneda')
                    ->options([
                        'Soles' => 'Soles',
                        'Dólares' => 'Dólares',
                    ])
                    ->required()
                    ->native(false)
                    ->searchable(),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('bank.name')
                    ->label('Banco')
                    ->numeric()
                    ->sortable(),
                Tables\Columns\TextColumn::make('owner')
                    ->label('Propietario')
                    ->searchable(),
                Tables\Columns\TextColumn::make('cci')
                    ->label('CCI')
                    ->searchable(),
                Tables\Columns\TextColumn::make('currency_type')
                    ->label('Tipo de moneda')
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
            'index' => Pages\ListBankAccounts::route('/'),
            'create' => Pages\CreateBankAccount::route('/create'),
            'edit' => Pages\EditBankAccount::route('/{record}/edit'),
        ];
    }
}
