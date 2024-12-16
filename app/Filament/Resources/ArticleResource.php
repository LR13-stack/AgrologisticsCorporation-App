<?php

namespace App\Filament\Resources;

use App\Filament\Resources\ArticleResource\Pages;
use App\Filament\Resources\ArticleResource\RelationManagers;
use App\Models\Article;
use App\Models\Line;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Ramsey\Uuid\Type\Decimal;

class ArticleResource extends Resource
{
    protected static ?string $model = Article::class;

    protected static ?string $modelLabel = 'Artículo';

    protected static ?string $pluralModelLabel = 'Artículos';

    protected static ?string $navigationIcon = 'heroicon-o-beaker';

    protected static ?string $navigationGroup = 'Inventario';

    protected static ?string $slug = 'inventory/articles';

    protected static ?int $navigationSort = 2;

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\TextInput::make('name')
                    ->label('Nombre')
                    ->required()
                    ->maxLength(255),
                Forms\Components\Select::make('line_id')
                    ->label('Línea')
                    ->options(Line::all()->pluck('name', 'id'))
                    ->required()
                    ->native(false)
                    ->searchable(),
                Forms\Components\Fieldset::make('Precios para adquisición')
                    ->schema([
                        Forms\Components\TextInput::make('costs')
                            ->label('Costos')
                            ->required()
                            ->numeric()
                            ->minValue(0)
                            ->default(0)
                            ->step(0.01)
                            ->live()
                            ->debounce(500)
                            ->afterStateUpdated(
                                function (Forms\Set $set, Forms\Get $get) {
                                    $expenses = $get('expenses') ?? 0;
                                    $total = round(($get('costs') ?: 0) + $expenses, 2);
                                    $set('costs_plus_expenses', $total);
                                }
                            ),
                        Forms\Components\TextInput::make('expenses')
                            ->label('Gastos')
                            ->required()
                            ->numeric()
                            ->minValue(0)
                            ->default(0)
                            ->step(0.01)
                            ->live()
                            ->debounce(500)
                            ->afterStateUpdated(
                                function (Forms\Set $set, Forms\Get $get) {
                                    $costs = $get('costs') ?? 0;
                                    $total = round($costs + ($get('expenses') ?: 0), 2);
                                    $set('costs_plus_expenses', $total);
                                }
                            ),
                        Forms\Components\TextInput::make('costs_plus_expenses')
                            ->label('Costos + Gastos')
                            ->required()
                            ->numeric()
                            ->default(0),
                        Forms\Components\TextInput::make('sale_price')
                            ->label('Precio de venta')
                            ->required()
                            ->numeric()
                            ->minValue(0)
                            ->step(0.01)
                            ->default(0),
                        Forms\Components\TextInput::make('sale_shop')
                            ->label('Precio de venta (tienda)')
                            ->required()
                            ->numeric()
                            ->minValue(0)
                            ->step(0.01)
                            ->default(0),
                        Forms\Components\TextInput::make('sale_wholesale')
                            ->label('Precio de venta (mayorista)')
                            ->required()
                            ->numeric()
                            ->minValue(0)
                            ->step(0.01)
                            ->default(0),
                    ])->columns(3),

                Forms\Components\ToggleButtons::make('is_exonerated')
                    ->label('¿Este artículo está exonerado de IGV?')
                    ->helperText('Si el artículo está exonerado de IGV, seleccione "Sí".')
                    ->boolean()
                    ->default(false)
                    ->colors([
                        true => 'success',
                        false => 'danger',
                    ])
                    ->grouped()
                    ->inline(),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('name')
                    ->label('Nombre')
                    ->searchable(),
                Tables\Columns\TextColumn::make('line.name')
                    ->label('Línea')
                    ->sortable(),
                Tables\Columns\TextColumn::make('costs')
                    ->label('Costos')
                    ->money('PEN', locale: 'es_PE')
                    ->alignEnd()
                    ->sortable(),
                Tables\Columns\TextColumn::make('expenses')
                    ->label('Gastos')
                    ->money('PEN', locale: 'es_PE')
                    ->alignEnd()
                    ->sortable(),
                Tables\Columns\TextColumn::make('costs_plus_expenses')
                    ->label('C+G')
                    ->money('PEN', locale: 'es_PE')
                    ->alignEnd()
                    ->sortable(),
                Tables\Columns\TextColumn::make('sale_price')
                    ->alignEnd()
                    ->label('Precio de venta')
                    ->money('PEN', locale: 'es_PE')
                    ->sortable(),
                Tables\Columns\TextColumn::make('sale_shop')
                    ->label('Precio de venta (tienda)')
                    ->money('PEN', locale: 'es_PE')
                    ->alignEnd()
                    ->sortable(),
                Tables\Columns\TextColumn::make('sale_wholesale')
                    ->label('Precio de venta (mayorista)')
                    ->money('PEN', locale: 'es_PE')
                    ->alignEnd()
                    ->sortable(),
                Tables\Columns\TextColumn::make('is_exonerated')
                    ->label('Exonerado de IGV')
                    ->alignCenter()
                    ->badge()
                    ->getStateUsing(fn($record) => $record->is_exonerated ? 'Sí' : 'No')
                    ->color(fn(string $state): string => match ($state) {
                        'Sí' => 'success',
                        'No' => 'danger',
                    })
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
            'index' => Pages\ListArticles::route('/'),
            'create' => Pages\CreateArticle::route('/create'),
            'edit' => Pages\EditArticle::route('/{record}/edit'),
        ];
    }
}
