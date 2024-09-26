<?php

namespace App\Livewire\Partials\Modals\Maintenances;

use App\Models\Catalogs\AssetEventType;
use Livewire\Component;
use LivewireUI\Modal\ModalComponent;

class Register extends ModalComponent
{
    public static function modalMaxWidth(): string
    {
        return 'sm';
    }

    //Propiedades para catalogos
    public $maintenance_types;

    //Propiedaes
    public $maintenance_type = '', $date, $remarks;

    public function mount(){
        $this->maintenance_types = AssetEventType::whereIn('id',[5,6])->get();
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
                        Registrar mantenimiento
                    </h3>
                </div>
                <!-- Modal body -->
                <form wire:submit="update">
                    <div class="grid gap-4 mb-4">
                        <div>
                            <x-forms.label>Tipo de mantenimiento</x-forms.label>
                            <x-forms.select wire:model="maintenance_type" required>
                                <option value="" disabled>Seleccione...</option>
                                @foreach($maintenance_types as $mt)
                                    <option value="{{$mt->id}}">
                                        {{$mt->name}}
                                    </option>
                                @endforeach
                            </x-forms.select>
                        </div>
                        <div>
                        <div class="relative max-w-sm">
                            <div class="absolute inset-y-0 start-0 flex items-center ps-3.5 pointer-events-none">
                                <svg class="w-4 h-4 text-gray-500 dark:text-gray-400" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 20 20">
                                <path d="M20 4a2 2 0 0 0-2-2h-2V1a1 1 0 0 0-2 0v1h-3V1a1 1 0 0 0-2 0v1H6V1a1 1 0 0 0-2 0v1H2a2 2 0 0 0-2 2v2h20V4ZM0 18a2 2 0 0 0 2 2h16a2 2 0 0 0 2-2V8H0v10Zm5-8h10a1 1 0 0 1 0 2H5a1 1 0 0 1 0-2Z"/>
                                </svg>
                            </div>
                            <input datepicker id="default-datepicker" type="text" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full ps-10 p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" placeholder="Select date">
                            </div>
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
