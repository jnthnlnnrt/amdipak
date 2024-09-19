<?php

namespace App\Livewire\Partials\Tables\Assets;

use App\Helpers\PowerGridThemes\TailwindStriped;
use App\Models\Asset;
use Illuminate\Support\Carbon;
use Illuminate\Database\Eloquent\Builder;
use PowerComponents\LivewirePowerGrid\Button;
use PowerComponents\LivewirePowerGrid\Column;
use PowerComponents\LivewirePowerGrid\Exportable;
use PowerComponents\LivewirePowerGrid\Facades\Filter;
use PowerComponents\LivewirePowerGrid\Footer;
use PowerComponents\LivewirePowerGrid\Header;
use PowerComponents\LivewirePowerGrid\PowerGrid;
use PowerComponents\LivewirePowerGrid\PowerGridFields;
use PowerComponents\LivewirePowerGrid\PowerGridComponent;
use PowerComponents\LivewirePowerGrid\Traits\WithExport;

final class Computers extends PowerGridComponent
{
    use WithExport;

    public function setUp(): array
    {
        $this->showCheckBox();

        return [
            Exportable::make('export')
                ->striped()
                ->type(Exportable::TYPE_XLS, Exportable::TYPE_CSV),
            Header::make()->showSearchInput(),
            Footer::make()
                ->showPerPage()
                ->showRecordCount(),
        ];
    }

    public function datasource(): Builder
    {
        return Asset::query()
            ->with('manufacturer')
            ->with('subtype');
    }

    public function relationSearch(): array
    {
        return [];
    }

    public function fields(): PowerGridFields
    {
        return PowerGrid::fields()
            ->add('asset_tag')
            ->add('manufacturer', fn ($computer) => e($computer->manufacturer->name))
            ->add('model')
            ->add('serial')
            ->add('type', fn ($computer) => e($computer->subtype->name));
    }

    public function columns(): array
    {
        return [
            Column::make('Asset Tag', 'asset_tag')
                ->sortable()
                ->searchable(),

            Column::make('Marca', 'manufacturer')
                ->sortable()
                ->searchable(),

            Column::make('Modelo', 'model')
                ->sortable()
                ->searchable(),

            Column::make('Serie', 'serial')
                ->sortable()
                ->searchable(),

            Column::make('Tipo', 'type')
                ->sortable()
                ->searchable(),                
        ];
    }

    public function filters(): array
    {
        return [
        ];
    }

    #[\Livewire\Attributes\On('edit')]
    public function edit($rowId): void
    {
        $this->js('alert('.$rowId.')');
    }

    public function template(): ?string
    {
        return TailwindStriped::class;
    }
}
