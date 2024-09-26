<?php

namespace App\Livewire\Partials\Tables\Assets;

use App\Helpers\PowerGridThemes\TailwindStriped;
use App\Models\Asset;
use DateTime;
use Illuminate\Support\Carbon;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Support\Facades\Blade;
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

    public string $tableName = 'ComputersTable';

    public function setUp(): array
    {
        $this->showCheckBox();

        return [
            Exportable::make('export')
                ->striped()
                ->type(Exportable::TYPE_XLS, Exportable::TYPE_CSV),
            Header::make()
                ->showToggleColumns()
                ->showSearchInput(),
            Footer::make()
                ->showPerPage()
                ->showRecordCount(),
        ];
    }

    public function datasource(): ?Builder
    {
        return Asset::query()
            ->with('manufacturer')
            ->with('subtype')
            ->with('status')
            ->with('employee')
            ->with('frequency');
    }

    public function relationSearch(): array
    {
        return [];
    }

    public function fields(): PowerGridFields
    {
        return PowerGrid::fields()
            ->add('asset_tag', function($computer){
                return sprintf(
                    '<a href="/assets/computers/edit/%s" wire:navigate class="text-blue-600">' . $computer->asset_tag . '</a>', urlencode(e($computer->id)), e($computer->id)
                );
            })
            ->add('manufacturer', fn ($computer) => e($computer->manufacturer->name))
            ->add('model')
            ->add('serial')
            ->add('type', fn ($computer) => e($computer->subtype->name))
            ->add('status', fn ($computer) => e($computer->status->name))
            ->add('employee', fn ($computer) => e($computer->employee->name))
            ->add('department', fn ($computer) => e($computer->employee->department->name))
            ->add('fq', function($computer){
                return $computer->frequency->lower_limit . " a " . $computer->frequency->upper_limit . " meses";
            })
            ->add('sm', function($computer){
                $lm = new DateTime($computer->last_maintenance);
                $today = new DateTime(date("Y-m-d"));

                $interval = $today->diff($lm);

                $months = ($interval->y * 12) + $interval->m;

                return $months . " meses";
            })
            ->add('score', function($computer){
                $lm = new DateTime($computer->last_maintenance);
                $today = new DateTime(date("Y-m-d"));

                $interval = $today->diff($lm);

                $months = ($interval->y * 12) + $interval->m;

                if (($months >= 0) && ($months <= $computer->frequency->lowergi_limit)){
                    return Blade::render('<x-badges.green>En tiempo</x-badges.green>');
                } elseif(($months >= $computer->frequency->lower_limit) && ($months <= $computer->frequency->upper_limit)) {
                    return Blade::render('<x-badges.yellow>Programar</x-badges.yellow>');
                } elseif($months > $computer->frequency->upper_limit){
                    return Blade::render('<x-badges.red>Fuera de tiempo</x-badges.red>');
                }
            });
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
            
            Column::make('Estatus', 'status')
                ->sortable()
                ->searchable(),
            
            Column::make('Usuario', 'employee')
                ->sortable()
                ->searchable(),

            Column::make('Departamento', 'department')
                ->sortable()
                ->searchable(),

            Column::make('UM', 'last_maintenance')->hidden(isHidden: true, isForceHidden: false),

            Column::make('FQ', 'fq')->hidden(isHidden: true, isForceHidden: false),

            Column::make('SM', 'sm')->hidden(isHidden: true, isForceHidden: false),

            Column::make('Mantenimiento', 'score')
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
