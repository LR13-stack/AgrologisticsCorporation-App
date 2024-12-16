<?php

namespace App\Filament\Resources;

use App\Filament\Resources\SaleResource\Pages;
use App\Filament\Resources\SaleResource\RelationManagers;
use App\Models\Sale;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class SaleResource extends Resource
{
    protected static ?string $model = Sale::class;

    protected static ?string $modelLabel = 'Venta';

    protected static ?string $pluralModelLabel = 'Ventas';

    protected static ?string $navigationIcon = 'heroicon-o-shopping-bag';

    protected static ?string $navigationGroup = 'Transacciones';

    protected static ?string $slug = 'transactions/sales';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\TextInput::make('customer_id')
                    ->required()
                    ->numeric(),
                Forms\Components\TextInput::make('warehouse_id')
                    ->required()
                    ->numeric(),
                Forms\Components\TextInput::make('seller_id')
                    ->required()
                    ->numeric(),
                Forms\Components\TextInput::make('bank_account_id')
                    ->required()
                    ->numeric(),
                Forms\Components\TextInput::make('payment_receipt_id')
                    ->required()
                    ->numeric(),
                Forms\Components\TextInput::make('type_document')
                    ->required()
                    ->maxLength(255),
                Forms\Components\TextInput::make('payment_receipt_code')
                    ->required()
                    ->maxLength(255),
                Forms\Components\TextInput::make('igv')
                    ->required()
                    ->numeric(),
                Forms\Components\TextInput::make('exchange_rate')
                    ->required()
                    ->numeric(),
                Forms\Components\TextInput::make('payment_condition')
                    ->required()
                    ->maxLength(255),
                Forms\Components\TextInput::make('status')
                    ->required()
                    ->maxLength(255),
                Forms\Components\TextInput::make('days')
                    ->required()
                    ->numeric(),
                Forms\Components\TextInput::make('currency_type')
                    ->required()
                    ->maxLength(255),
                Forms\Components\Textarea::make('observation')
                    ->columnSpanFull(),
                Forms\Components\TextInput::make('sale_value')
                    ->required()
                    ->numeric(),
                Forms\Components\TextInput::make('total_igv')
                    ->required()
                    ->numeric(),
                Forms\Components\TextInput::make('exonerated')
                    ->required()
                    ->numeric(),
                Forms\Components\TextInput::make('total')
                    ->required()
                    ->numeric(),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('customer_id')
                    ->numeric()
                    ->sortable(),
                Tables\Columns\TextColumn::make('warehouse_id')
                    ->numeric()
                    ->sortable(),
                Tables\Columns\TextColumn::make('seller_id')
                    ->numeric()
                    ->sortable(),
                Tables\Columns\TextColumn::make('bank_account_id')
                    ->numeric()
                    ->sortable(),
                Tables\Columns\TextColumn::make('payment_receipt_id')
                    ->numeric()
                    ->sortable(),
                Tables\Columns\TextColumn::make('type_document')
                    ->searchable(),
                Tables\Columns\TextColumn::make('payment_receipt_code')
                    ->searchable(),
                Tables\Columns\TextColumn::make('igv')
                    ->numeric()
                    ->sortable(),
                Tables\Columns\TextColumn::make('exchange_rate')
                    ->numeric()
                    ->sortable(),
                Tables\Columns\TextColumn::make('payment_condition')
                    ->searchable(),
                Tables\Columns\TextColumn::make('status')
                    ->searchable(),
                Tables\Columns\TextColumn::make('days')
                    ->numeric()
                    ->sortable(),
                Tables\Columns\TextColumn::make('currency_type')
                    ->searchable(),
                Tables\Columns\TextColumn::make('sale_value')
                    ->numeric()
                    ->sortable(),
                Tables\Columns\TextColumn::make('total_igv')
                    ->numeric()
                    ->sortable(),
                Tables\Columns\TextColumn::make('exonerated')
                    ->numeric()
                    ->sortable(),
                Tables\Columns\TextColumn::make('total')
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
            'index' => Pages\ListSales::route('/'),
            'create' => Pages\CreateSale::route('/create'),
            'edit' => Pages\EditSale::route('/{record}/edit'),
        ];
    }
}
