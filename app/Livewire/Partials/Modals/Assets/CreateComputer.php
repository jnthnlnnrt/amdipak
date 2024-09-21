<?php

namespace App\Livewire\Partials\Modals\Assets;

use App\Models\Asset;
use App\Models\Catalogs\Manufacturer;
use App\Models\Catalogs\Subtype;
use App\Models\Organization\Location;
use Illuminate\Support\Facades\Auth;
use Livewire\Component;
use LivewireUI\Modal\ModalComponent;
use PhpParser\Node\Stmt\TryCatch;

class CreateComputer extends ModalComponent
{

    public $manufacturers, $types, $locations;

    //Propiedades
    public $manufacturer = '', $model, $serial, $subtype = '', $location = '', $remarks;

    public function mount()
    {
        $this->manufacturers = Manufacturer::orderBy('name', 'asc')->get();
        $this->types = Subtype::all();
        $this->locations = Location::all();
    }

    public function save(){

     
        try{
            $computer = Asset::create([
                'category_id' => 1,
                'type_id' => 1,
                'subtype_id' => $this->subtype,
                'asset_tag' => 'X',
                'manufacturer_id' => $this->manufacturer,
                'model' => $this->model,
                'serial' => $this->serial,
                'status_id' => 1,
                'employee_id' => 2,
                'location_id' => $this->location,
                'require_maintenance' => 1,
                'frequency_id' => 1,
                'last_maintenance' => date('Y-m-d'),
                'remarks' => $this->remarks,
                'created_by' => Auth::user()->id,
                'updated_by' => Auth::user()->id,
            ]);

            $this->dispatch('pg:eventRefresh-ComputersTable');
            $this->closeModal();
        } catch(\Throwable $e){
            dd($e);
        }
    }

    public function cancel()
    {
        $this->closeModal();
    }

    public function render()
    {
        return <<<'HTML'
        <div>
            <!-- Modal content -->
            <div class="relative p-4 bg-white rounded-lg shadow dark:bg-gray-800 sm:p-5">
                <!-- Modal header -->
                <div class="flex justify-between items-center pb-4 mb-4 rounded-t border-b sm:mb-5 dark:border-gray-600">
                    <h3 class="text-lg font-semibold text-gray-900 dark:text-white">
                        Agregar equipo de computo
                    </h3>
                </div>
                <!-- Modal body -->
                <form wire:submit="save">
                    <div class="grid gap-4 mb-4 sm:grid-cols-3">
                        <div>
                            <x-forms.label>Marca</x-forms.label>
                            <x-forms.select wire:model="manufacturer" required>
                                <option value="" disabled>Seleccione...</option>
                                @foreach($manufacturers as $man)
                                    <option value="{{$man->id}}">
                                        {{$man->name}}
                                    </option>
                                @endforeach
                            </x-forms.select>
                        </div>
                        <div class="sm:col-span-2">
                            <x-forms.label>Modelo</x-forms.label>
                            <x-forms.input wire:model="model" required/>
                        </div>
                        <div>
                            <x-forms.label>Serie</x-forms.label>
                            <x-forms.input wire:model="serial" required class="uppercase"/>
                        </div>
                        <div>
                            <x-forms.label>Tipo</x-forms.label>
                            <x-forms.select wire:model="subtype" required>
                                <option value="" disabled>Seleccione...</option>
                                @foreach($types as $type)
                                    <option value="{{$type->id}}">
                                        {{$type->name}}
                                    </option>
                                @endforeach
                            </x-forms.select>
                        </div>
                        <div>
                            <x-forms.label>Ubicacion</x-forms.label>
                            <x-forms.select wire:model="location" required>
                                <option value="" disabled>Seleccione...</option>
                                @foreach($locations as $loc)
                                    <option value="{{$loc->id}}">
                                        {{$loc->name}}
                                    </option>
                                @endforeach
                            </x-forms.select>
                        </div>
                        <div class="sm:col-span-3">
                            <x-forms.label>Comentarios</x-forms.label>
                            <x-forms.input wire:model="remarks" />
                        </div>
                    </div>
                    <div class="flex items-center justify-end space-x-2">
                        <x-buttons.primary type="submit">Guardar</x-buttons.primary>
                        <x-buttons.danger type="button" wire:click="cancel">Cancelar</x-buttons.danger>
                    </div>       
                </form>
            </div>
        </div>
        HTML;
    }
}
