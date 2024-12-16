<?php

namespace App\Filament\Resources;

use App\Filament\Resources\InventoryResource\Pages;
use App\Filament\Resources\InventoryResource\RelationManagers;
use App\Models\Inventory;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class InventoryResource extends Resource
{
    protected static ?string $model = Inventory::class;

    protected static ?string $modelLabel = 'Inventario';

    protected static ?string $pluralModelLabel = 'Inventarios';

    protected static ?string $navigationIcon = 'heroicon-o-arrow-path';

    protected static ?string $navigationGroup = 'Inventario';

    protected static ?string $slug = 'inventory/inventories';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\TextInput::make('article_id')
                    ->required()
                    ->numeric(),
                Forms\Components\TextInput::make('warehouse_id')
                    ->required()
                    ->numeric(),
                Forms\Components\TextInput::make('stock')
                    ->required()
                    ->numeric(),
                Forms\Components\TextInput::make('to_be_collected_from_supplier')
                    ->required()
                    ->numeric(),
                Forms\Components\TextInput::make('to_be_delivered_to_customer')
                    ->required()
                    ->numeric(),
                Forms\Components\TextInput::make('cost_price')
                    ->required()
                    ->numeric(),
                Forms\Components\TextInput::make('sale_price')
                    ->required()
                    ->numeric(),
                Forms\Components\TextInput::make('status')
                    ->required()
                    ->maxLength(255),
                Forms\Components\TextInput::make('batch_code')
                    ->required()
                    ->maxLength(255),
                Forms\Components\DatePicker::make('due_date')
                    ->required(),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('article.name')
                    ->label('Artículo')
                    ->sortable(),
                Tables\Columns\TextColumn::make('warehouse.name')
                    ->label('Almacén')
                    ->sortable(),
                Tables\Columns\TextColumn::make('stock')
                    ->numeric()
                    ->sortable(),
                Tables\Columns\TextColumn::make('to_be_collected_from_supplier')
                    ->label('Por recoger del proveedor')
                    ->numeric()
                    ->toggleable(isToggledHiddenByDefault: true)
                    ->sortable(),
                Tables\Columns\TextColumn::make('to_be_delivered_to_customer')
                    ->label('Por entregar al cliente')
                    ->numeric()
                    ->toggleable(isToggledHiddenByDefault: true)
                    ->sortable(),
                Tables\Columns\TextColumn::make('cost_price')
                    ->label('Precio de costo')
                    ->money('PEN', locale: 'es_PE')
                    ->alignEnd()
                    ->sortable(),
                Tables\Columns\TextColumn::make('sale_price')
                    ->label('Precio de venta')
                    ->money('PEN', locale: 'es_PE')
                    ->alignEnd()
                    ->sortable(),
                Tables\Columns\TextColumn::make('status')
                    ->label('Estado')
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
            'index' => Pages\ListInventories::route('/'),
            'create' => Pages\CreateInventory::route('/create'),
            'edit' => Pages\EditInventory::route('/{record}/edit'),
        ];
    }
}
