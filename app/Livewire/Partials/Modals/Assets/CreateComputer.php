<?php

namespace App\Livewire\Partials\Modals\Assets;

use App\Models\Catalogs\Manufacturer;
use Livewire\Component;
use LivewireUI\Modal\ModalComponent;

class CreateComputer extends ModalComponent
{

    public $manufacturers;

    public function mount(){
        $this->manufacturers = Manufacturer::all();
    }

    public static function modalMaxWidth(): string
    {
        return 'lg';
    }

    public function cancel(){
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
                <form wire:submit='save'>
                    <div class="grid gap-4 mb-4 md:grid-cols-3">
                        <div>
                            <x-forms.label for="internal_id">Marca:</x-forms.label>
                            <x-forms.select>
                                @foreach($manufacturers as $manufacturer)
                                    <option value="{{$manufacturer->id}}">
                                        {{$manufacturer->name}}
                                    </option>
                                @endforeach
                            </x-forms.select>
                        </div>
                        <div class="md:col-span-2">
                            <x-forms.label for="name">Modelo:</x-forms.label>
                            <x-forms.input type="text" id="name" name="name" placeholder="Nombre del departamento" required wire:model='name'/>
                        </div>
                    </div>
                    <div class="flex items-center justify-end pt-2 space-x-2">
                        <x-buttons.primary type="submit">
                            Guardar
                        </x-buttons.primary>
                        <x-buttons.danger type="button" wire:click="cancel">
                            Cancelar
                        </x-buttons.danger>
                    </div>
                </form>
            </div>
        </div>
        HTML;
    }
}
