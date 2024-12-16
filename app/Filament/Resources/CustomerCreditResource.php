<?php

namespace App\Filament\Resources;

use App\Filament\Resources\CustomerCreditResource\Pages;
use App\Filament\Resources\CustomerCreditResource\RelationManagers;
use App\Models\CustomerCredit;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class CustomerCreditResource extends Resource
{
    protected static ?string $model = CustomerCredit::class;

    protected static ?string $modelLabel = 'Crédito de cliente';

    protected static ?string $pluralModelLabel = 'Créditos de clientes';

    protected static ?string $navigationIcon = 'heroicon-o-calendar-days';

    protected static ?string $navigationGroup = 'Créditos';

    protected static ?string $slug = 'credits/customer-credits';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\TextInput::make('customer_id')
                    ->required()
                    ->numeric(),
                Forms\Components\TextInput::make('seller_id')
                    ->required()
                    ->numeric(),
                Forms\Components\TextInput::make('credit_limit')
                    ->required()
                    ->numeric(),
                Forms\Components\TextInput::make('credit_used')
                    ->required()
                    ->numeric()
                    ->default(0),
                Forms\Components\TextInput::make('credit_remaining')
                    ->required()
                    ->numeric()
                    ->default(0),
                Forms\Components\Toggle::make('is_active')
                    ->required(),
                Forms\Components\TextInput::make('payment_receipt_id')
                    ->numeric(),
                Forms\Components\TextInput::make('currency_type')
                    ->required()
                    ->maxLength(255),
                Forms\Components\TextInput::make('exchange_rate')
                    ->required()
                    ->numeric(),
                Forms\Components\DatePicker::make('die_date')
                    ->required(),
                Forms\Components\Textarea::make('observation')
                    ->columnSpanFull(),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('customer_id')
                    ->numeric()
                    ->sortable(),
                Tables\Columns\TextColumn::make('seller_id')
                    ->numeric()
                    ->sortable(),
                Tables\Columns\TextColumn::make('credit_limit')
                    ->numeric()
                    ->sortable(),
                Tables\Columns\TextColumn::make('credit_used')
                    ->numeric()
                    ->sortable(),
                Tables\Columns\TextColumn::make('credit_remaining')
                    ->numeric()
                    ->sortable(),
                Tables\Columns\IconColumn::make('is_active')
                    ->boolean(),
                Tables\Columns\TextColumn::make('payment_receipt_id')
                    ->numeric()
                    ->sortable(),
                Tables\Columns\TextColumn::make('currency_type')
                    ->searchable(),
                Tables\Columns\TextColumn::make('exchange_rate')
                    ->numeric()
                    ->sortable(),
                Tables\Columns\TextColumn::make('die_date')
                    ->date()
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
            'index' => Pages\ListCustomerCredits::route('/'),
            'create' => Pages\CreateCustomerCredit::route('/create'),
            'edit' => Pages\EditCustomerCredit::route('/{record}/edit'),
        ];
    }
}
