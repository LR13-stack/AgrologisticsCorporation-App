<?php

namespace App\Filament\Resources;

use App\Filament\Resources\TakingTimesResource\Pages;
use App\Filament\Resources\TakingTimesResource\RelationManagers;
use App\Models\TakingTimes;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class TakingTimesResource extends Resource
{
    protected static ?string $model = TakingTimes::class;

    protected static ?string $modelLabel = 'Toma de tiempos';

    protected static ?string $pluralModelLabel = 'Tomas de tiempos';

    protected static ?string $navigationIcon = 'heroicon-o-clock';

    protected static ?string $navigationGroup = 'Configuraciones';

    protected static ?string $slug = 'configurations/taking-times';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\TextInput::make('type_document')
                    ->label('Tipo')
                    ->required()
                    ->maxLength(255),
                Forms\Components\DatePicker::make('initial_date')
                    ->label('Fecha inicial')
                    ->required(),
                Forms\Components\DatePicker::make('final_date')
                    ->label('Fecha final')
                    ->required(),
                Forms\Components\TextInput::make('time_in_seconds')
                    ->label('Tiempo en segundos')
                    ->required(),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('type_document')
                    ->label('Tipo')
                    ->searchable(),
                Tables\Columns\TextColumn::make('initial_date')
                    ->label('Fecha inicial')
                    ->dateTime()
                    ->sortable(),
                Tables\Columns\TextColumn::make('final_date')
                    ->label('Fecha final')
                    ->dateTime()
                    ->sortable(),
                Tables\Columns\TextColumn::make('time_in_seconds')
                    ->label('Tiempo en segundos'),
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
            'index' => Pages\ListTakingTimes::route('/'),
            'create' => Pages\CreateTakingTimes::route('/create'),
            'edit' => Pages\EditTakingTimes::route('/{record}/edit'),
        ];
    }
}
