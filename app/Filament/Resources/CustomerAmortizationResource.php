<?php

namespace App\Filament\Resources;

use App\Filament\Resources\CustomerAmortizationResource\Pages;
use App\Filament\Resources\CustomerAmortizationResource\RelationManagers;
use App\Models\CustomerAmortization;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class CustomerAmortizationResource extends Resource
{
    protected static ?string $model = CustomerAmortization::class;

    protected static ?string $modelLabel = 'Amortización de cliente';

    protected static ?string $pluralModelLabel = 'Amortizaciones de clientes';

    protected static ?string $navigationIcon = 'heroicon-o-scale';

    protected static ?string $navigationGroup = 'Créditos';

    protected static ?string $slug = 'credits/customer-amortizations';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\TextInput::make('credit_customer_id')
                    ->required()
                    ->numeric(),
                Forms\Components\TextInput::make('payment_receipt_id')
                    ->required()
                    ->numeric(),
                Forms\Components\TextInput::make('bank_account_id')
                    ->required()
                    ->numeric(),
                Forms\Components\TextInput::make('currency_type')
                    ->required()
                    ->maxLength(255),
                Forms\Components\TextInput::make('bank')
                    ->required()
                    ->maxLength(255),
                Forms\Components\TextInput::make('customer')
                    ->required()
                    ->maxLength(255),
                Forms\Components\TextInput::make('amount')
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
                Tables\Columns\TextColumn::make('credit_customer_id')
                    ->numeric()
                    ->sortable(),
                Tables\Columns\TextColumn::make('payment_receipt_id')
                    ->numeric()
                    ->sortable(),
                Tables\Columns\TextColumn::make('bank_account_id')
                    ->numeric()
                    ->sortable(),
                Tables\Columns\TextColumn::make('currency_type')
                    ->searchable(),
                Tables\Columns\TextColumn::make('bank')
                    ->searchable(),
                Tables\Columns\TextColumn::make('customer')
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
            'index' => Pages\ListCustomerAmortizations::route('/'),
            'create' => Pages\CreateCustomerAmortization::route('/create'),
            'edit' => Pages\EditCustomerAmortization::route('/{record}/edit'),
        ];
    }
}
