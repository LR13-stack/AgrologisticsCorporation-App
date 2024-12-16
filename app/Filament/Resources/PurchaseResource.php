<?php

namespace App\Filament\Resources;

use App\Filament\Resources\PurchaseResource\Pages;
use App\Filament\Resources\PurchaseResource\RelationManagers;
use App\Models\Purchase;
use App\Models\Supplier;
use App\Models\Warehouse;
use Filament\Forms;
use Filament\Forms\Components\Actions\Action;
use Filament\Forms\Components\Tabs\Tab;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Support\Enums\IconPosition;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class PurchaseResource extends Resource
{
    protected static ?string $model = Purchase::class;

    protected static ?string $modelLabel = 'Compra';

    protected static ?string $pluralModelLabel = 'Compras';

    protected static ?string $navigationIcon = 'heroicon-o-shopping-cart';

    protected static ?string $navigationGroup = 'Transacciones';

    protected static ?string $slug = 'transactions/purchases';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\Tabs::make('Tabs')
                    ->tabs([
                        Tab::make('Información general')
                            ->icon('heroicon-o-document-plus')
                            ->iconPosition(IconPosition::After)
                            ->schema([
                                Forms\Components\Grid::make()
                                    ->schema([
                                        Forms\Components\Select::make('supplier_id')
                                            ->label('Proveedor')
                                            ->options(Supplier::all()->pluck('company_name', 'id'))
                                            ->label('Proveedor')
                                            ->required()
                                            ->native(false)
                                            ->searchable(),
                                        Forms\Components\Select::make('warehouse_id')
                                            ->label('Almacén')
                                            ->label('Almacén')
                                            ->options(Warehouse::all()->pluck('name', 'id'))
                                            ->required()
                                            ->native(false)
                                            ->searchable(),
                                        Forms\Components\Select::make('type_document')
                                            ->label('Tipo de documento')
                                            ->options([
                                                'Factura' => 'Factura',
                                                'Boleta' => 'Boleta',
                                                'Guía de remisión' => 'Guía de remisión',
                                            ])
                                            ->native(false)
                                            ->required(),
                                        Forms\Components\TextInput::make('payment_receipt_code')
                                            ->label('Código de comprobante de pago')
                                            ->required(),
                                        Forms\Components\TextInput::make('igv')
                                            ->label('IGV')
                                            ->numeric()
                                            ->prefix('%')
                                            ->default(18.00)
                                            ->step(0.01)
                                            ->minValue(0.0)
                                            ->required(),
                                        Forms\Components\TextInput::make('exchange_rate')
                                            ->label('Tasa de cambio')
                                            ->numeric()
                                            ->default(3.50)
                                            ->step(0.01)
                                            ->minValue(0.0)
                                            ->required(),
                                        Forms\Components\Select::make('currency_type')
                                                ->label('Tipo de moneda')
                                            ->options([
                                                'Soles' => 'Soles',
                                                'Dólares' => 'Dolares',
                                            ])
                                            ->native(false)
                                            ->required(),
                                        Forms\Components\Select::make('payment_condition')
                                                ->label('Condición de pago')
                                            ->options([
                                                'Contado' => 'Contado',
                                                'Crédito' => 'Crédito',
                                            ])
                                            ->native(false)
                                            ->required(),
                                        Forms\Components\DatePicker::make('date_of_entry')
                                            ->label('Fecha de ingreso')
                                            ->native(false)
                                            ->displayFormat('d F Y')
                                            ->minDate(now())
                                            ->required(),
                                        Forms\Components\Select::make('status')
                                                ->label('Estado')
                                            ->options([
                                                'Nuevo' => 'Nuevo',
                                                'Recibido' => 'Recibido',
                                                'Cancelado' => 'Cancelado',
                                            ])
                                            ->native(false)
                                            ->required(),
                                        Forms\Components\TextArea::make('observacion')
                                            ->columnSpanFull(),
                                    ])->columns(2),
                            ]),
                        Tab::make('Artículos solicitados')
                            ->icon('heroicon-o-shopping-bag')
                            ->iconPosition(IconPosition::After)
                            ->schema([
                                Forms\Components\Section::make('Agregar artículos para el pedido')
                                    ->description('Al finalizar con su lista de artículos, pulse en ´Calcular costos´.')
                                    ->headerActions([
                                        Action::make('Eliminar items')
                                            ->modalHeading('Está seguro?')
                                            ->modalDescription('Todos los artículos existentes se eliminarán del pedido.')
                                            ->requiresConfirmation()
                                            ->color('danger')
                                            ->action(fn(Forms\Set $set) => $set('items', [])),

                                        Action::make(('Calcular costos'))
                                            ->color('dark')
                                            ->action(
                                                function (Forms\Get $get, Forms\Set $set) {
                                                    $items = $get('items');
                                                    $exonerated = 0;
                                                    static::setTotals($items, $set, $exonerated);
                                                }
                                            ),
                                    ])
                                    ->schema([
                                        // static::getItemsRepeater(),
                                    ]),
                                Forms\Components\Fieldset::make('Resumen de costos')
                                    ->schema([
                                        Forms\Components\TextInput::make('sale_value')
                                            ->label('Valor de venta')
                                            ->required()
                                            ->numeric()
                                            ->live()
                                            ->required(),
                                        Forms\Components\TextInput::make('exonerated')
                                            ->required()
                                            ->numeric()
                                            ->live()
                                            ->afterStateUpdated(
                                                function (Forms\Set $set, Forms\Get $get) {
                                                    $items = $get('items');
                                                    $exonerado = $get('exonerado');
                                                    static::setTotals($items, $set, $exonerado);
                                                }
                                            ),
                                        Forms\Components\TextInput::make('total_freight')
                                            ->label('Total flete')
                                            ->required()
                                            ->live()
                                            ->numeric(),
                                        Forms\Components\TextInput::make('subtotal')
                                            ->required()
                                            ->live()
                                            ->numeric(),
                                        Forms\Components\TextInput::make('total_igv')
                                            ->label('Total IGV')
                                            ->required()
                                            ->live()
                                            ->numeric(),
                                        Forms\Components\TextInput::make('total')
                                            ->label('Total')
                                            ->required()
                                            ->live()
                                            ->numeric(),
                                    ])
                                    ->columns(3),
                            ]),
                    ])
                    ->activeTab(1)
                    ->columnSpanFull(),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('id')
                    ->sortable(),
                Tables\Columns\TextColumn::make('supplier.company_name')
                    ->label('Proveedor')
                    ->sortable(),
                Tables\Columns\TextColumn::make('warehouse.name')
                    ->label('Almacén')
                    ->sortable(),
                Tables\Columns\TextColumn::make('paymentReceipt.code')
                    ->label('Comprobante de pago')
                    ->sortable(),
                Tables\Columns\TextColumn::make('type_document')
                    ->label('Tipo de documento')
                    ->searchable(),
                Tables\Columns\TextColumn::make('date_of_entry')
                    ->label('Fecha de ingreso')
                    ->date()
                    ->sortable(),
                Tables\Columns\TextColumn::make('igv')
                    ->label('IGV')
                    ->numeric()
                    ->sortable(),
                Tables\Columns\TextColumn::make('exchange_rate')
                    ->label('Tasa de cambio')
                    ->numeric()
                    ->sortable(),
                Tables\Columns\TextColumn::make('payment_condition')
                    ->label('Condición de pago')
                    ->searchable(),
                Tables\Columns\TextColumn::make('status')
                    ->label('Estado')
                    ->searchable(),
                Tables\Columns\TextColumn::make('currency_type')
                    ->label('Tipo de moneda')
                    ->searchable(),
                Tables\Columns\TextColumn::make('total_igv')
                    ->label('IGV total')
                    ->money('PEN', locale: 'es_PE')
                    ->alignEnd()
                    ->sortable(),
                Tables\Columns\TextColumn::make('subtotal')
                    ->label('Subtotal')
                    ->money('PEN', locale: 'es_PE')
                    ->alignEnd()
                    ->sortable(),
                Tables\Columns\TextColumn::make('total')
                    ->label('Total')
                    ->money('PEN', locale: 'es_PE')
                    ->alignEnd()
                    ->sortable(),
                Tables\Columns\TextColumn::make('created_at')
                    ->label('Fecha de registro')
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
            'index' => Pages\ListPurchases::route('/'),
            'create' => Pages\CreatePurchase::route('/create'),
            'edit' => Pages\EditPurchase::route('/{record}/edit'),
        ];
    }
}
