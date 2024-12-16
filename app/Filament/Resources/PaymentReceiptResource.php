<?php

namespace App\Filament\Resources;

use App\Filament\Resources\PaymentReceiptResource\Pages;
use App\Filament\Resources\PaymentReceiptResource\RelationManagers;
use App\Models\PaymentReceipt;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class PaymentReceiptResource extends Resource
{
    protected static ?string $model = PaymentReceipt::class;

    protected static ?string $modelLabel = 'Comprobante de pago';

    protected static ?string $pluralModelLabel = 'Comprobantes de pago';

    protected static ?string $navigationIcon = 'heroicon-o-square-3-stack-3d';

    protected static ?string $navigationGroup = 'Finanzas';

    protected static ?string $slug = 'finances/payment-receipts';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\TextInput::make('code')
                    ->required()
                    ->maxLength(255),
                Forms\Components\TextInput::make('type_document')
                    ->required()
                    ->maxLength(255),
                Forms\Components\TextInput::make('url_qr')
                    ->required()
                    ->maxLength(255),
                Forms\Components\TextInput::make('advances')
                    ->required()
                    ->numeric(),
                Forms\Components\TextInput::make('free_ops')
                    ->required()
                    ->numeric(),
                Forms\Components\TextInput::make('taxed_ops')
                    ->required()
                    ->numeric(),
                Forms\Components\TextInput::make('op_tax_free')
                    ->required()
                    ->numeric(),
                Forms\Components\TextInput::make('op_exempt_ops')
                    ->required()
                    ->numeric(),
                Forms\Components\TextInput::make('vat')
                    ->required()
                    ->numeric(),
                Forms\Components\TextInput::make('discounts')
                    ->required()
                    ->numeric(),
                Forms\Components\TextInput::make('total')
                    ->required()
                    ->numeric(),
                Forms\Components\TextInput::make('status')
                    ->required()
                    ->maxLength(255),
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
                Tables\Columns\TextColumn::make('type_document')
                    ->searchable(),
                Tables\Columns\TextColumn::make('url_qr')
                    ->searchable(),
                Tables\Columns\TextColumn::make('advances')
                    ->numeric()
                    ->sortable(),
                Tables\Columns\TextColumn::make('free_ops')
                    ->numeric()
                    ->sortable(),
                Tables\Columns\TextColumn::make('taxed_ops')
                    ->numeric()
                    ->sortable(),
                Tables\Columns\TextColumn::make('op_tax_free')
                    ->numeric()
                    ->sortable(),
                Tables\Columns\TextColumn::make('op_exempt_ops')
                    ->numeric()
                    ->sortable(),
                Tables\Columns\TextColumn::make('vat')
                    ->numeric()
                    ->sortable(),
                Tables\Columns\TextColumn::make('discounts')
                    ->numeric()
                    ->sortable(),
                Tables\Columns\TextColumn::make('total')
                    ->numeric()
                    ->sortable(),
                Tables\Columns\TextColumn::make('status')
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
            'index' => Pages\ListPaymentReceipts::route('/'),
            'create' => Pages\CreatePaymentReceipt::route('/create'),
            'edit' => Pages\EditPaymentReceipt::route('/{record}/edit'),
        ];
    }
}
