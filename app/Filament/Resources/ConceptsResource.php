<?php

namespace App\Filament\Resources;

use App\Filament\Resources\ConceptsResource\Pages;
use App\Filament\Resources\ConceptsResource\RelationManagers;
use App\Models\Concepts;
use App\Models\GroupOfConcepts;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class ConceptsResource extends Resource
{
    protected static ?string $model = Concepts::class;

    protected static ?string $modelLabel = 'Concepto';

    protected static ?string $pluralModelLabel = 'Conceptos';

    protected static ?string $navigationIcon = 'heroicon-o-server';

    protected static ?string $navigationGroup = 'Conceptos';

    protected static ?string $slug = 'concepts/concepts';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\TextInput::make('name')
                    ->label('Nombre')
                    ->required()
                    ->maxLength(255),
                Forms\Components\Select::make('group_of_concept_id')
                    ->label('Grupo de conceptos')
                    ->options(GroupOfConcepts::all()->pluck('name', 'id'))
                    ->required()
                    ->native(false)
                    ->searchable(),
                Forms\Components\ToggleButtons::make('is_expense')
                    ->label('¿Es un gasto?')
                    ->helperText('Indica si el concepto es un gasto.')
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
                Tables\Columns\TextColumn::make('groupOfConcepts.name')
                    ->label('Grupo de conceptos')
                    ->sortable(),
                Tables\Columns\TextColumn::make('is_expense')
                    ->label('¿Es un gasto?')
                    ->alignCenter()
                    ->badge()
                    ->getStateUsing(fn($record) => $record->is_expense ? 'Sí' : 'No')
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
            'index' => Pages\ListConcepts::route('/'),
            'create' => Pages\CreateConcepts::route('/create'),
            'edit' => Pages\EditConcepts::route('/{record}/edit'),
        ];
    }
}
