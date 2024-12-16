<?php

namespace App\Filament\Resources;

use App\Filament\Resources\GroupOfConceptsResource\Pages;
use App\Filament\Resources\GroupOfConceptsResource\RelationManagers;
use App\Models\GroupOfConcepts;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class GroupOfConceptsResource extends Resource
{
    protected static ?string $model = GroupOfConcepts::class;

    protected static ?string $modelLabel = 'Grupo de conceptos';

    protected static ?string $pluralModelLabel = 'Grupos de conceptos';

    protected static ?string $navigationIcon = 'heroicon-o-server-stack';

    protected static ?string $navigationGroup = 'Conceptos';

    protected static ?string $slug = 'concepts/group-of-concepts';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\TextInput::make('name')
                    ->label('Nombre')
                    ->required()
                    ->columnSpanFull()
                    ->maxLength(255),
                Forms\Components\ToggleButtons::make('is_expense')
                    ->label('¿Es un gasto?')
                    ->helperText('Indica si el grupo de conceptos es de gastos.')
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
            'index' => Pages\ListGroupOfConcepts::route('/'),
            'create' => Pages\CreateGroupOfConcepts::route('/create'),
            'edit' => Pages\EditGroupOfConcepts::route('/{record}/edit'),
        ];
    }
}
