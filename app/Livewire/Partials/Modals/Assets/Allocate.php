<?php

namespace App\Livewire\Partials\Modals\Assets;

use App\Models\Asset;
use App\Models\AssetEvent;
use App\Models\Organization\Employee;
use Illuminate\Support\Facades\Auth;
use Livewire\Component;
use LivewireUI\Modal\ModalComponent;
use Masmerise\Toaster\Toaster;

class Allocate extends ModalComponent
{
    public static function modalMaxWidth(): string
    {
        return 'sm';
    }

    //Catalogos
    public $employees;

    //Propiedades
    public $asset, $employee = '', $remarks;

    public function mount(){
        $this->employees = Employee::where('id', '!=', 1)->orderBy('name', 'asc')->get();
    }

    public function update(){

        try{
            //Buscamos y actualizamos la asignacion previa.
            AssetEvent::where('asset_id', $this->asset)
                ->where('event_type_id', 2)
                ->where('status', 1)
                ->update(['end_date' => date('Y-m-d'), 'status' => 0, 'updated_by' => Auth::user()->id]);

            $aa = AssetEvent::create([
                    'event_tag' => 'X',
                    'event_type_id' => 2,
                    'start_date' => date('Y-m-d'),
                    'asset_id' => $this->asset,
                    'employee_id' => $this->employee,
                    'status' => 1,
                    'remarks' => $this->remarks,
                    'created_by' => Auth::user()->id,
                    'updated_by' => Auth::user()->id,                    
                ]);

            AssetEvent::where('id', $aa->id)->update(['event_tag' => 'AE-' . $aa->id]);

            Asset::where('id', $this->asset)->update([
                'status_id' => 2,
                'employee_id' => $this->employee,
                'location_id' => Employee::where('id', $this->employee)->first()->location_id,
                'updated_by' => Auth::user()->id,  
            ]);

            $this->closeModal();
            Toaster::success('Activo asignado correctamente!');
            $this->redirect('/assets/computers');             
        } catch(\Throwable $e){
            Toaster::error('Hubo un error al insertar el registro.' . $e->getMessage()); 
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
                        Asignar activo
                    </h3>
                </div>
                <!-- Modal body -->
                <form wire:submit="update">
                    <div class="grid gap-4 mb-4">
                        <div>
                            <x-forms.label>Usuario</x-forms.label>
                            <x-forms.select wire:model="employee" required>
                                <option value="" disabled>Seleccione...</option>
                                @foreach($employees as $emp)
                                    <option value="{{$emp->id}}">
                                        {{$emp->name}}
                                    </option>
                                @endforeach
                            </x-forms.select>
                        </div>
                        <div>
                            <x-forms.label>Comentarios</x-forms.label>
                            <x-forms.textarea rows="4" wire:model="remarks"></x-forms.textarea>
                        </div>
                    </div>
                    <div class="flex items-center justify-end space-x-2">
                        <x-buttons.primary type="submit">Asignar</x-buttons.primary>
                        <x-buttons.danger type="button" wire:click="cancel">Cancelar</x-buttons.danger>
                    </div>       
                </form>
            </div>
        </div>
        HTML;
    }
}
