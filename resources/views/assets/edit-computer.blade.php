<div class="space-y-3">
    <!-- Page header -->
    <header class="font-semibold text-xl md:text-2xl pt-1 pb-3 border-b border-gray-300">
        <div class="flex items-center justify-between">
            <div>
                <a href="{{route('computers')}}" wire:navigate><i class="fa-regular fa-circle-left"></i></a>
                <span>Editar equipo de computo</span>
            </div>
            <div>
                
            </div>
        </div>
    </header>
    <div>
        <x-buttons.primary wire:click="$dispatch('openModal', { component: 'partials.modals.assets.allocate', arguments: { asset: {{ $computer_data->id }} }})">Asignar activo</x-buttons.primary>
        <x-buttons.primary wire:click="$dispatch('openModal', { component: 'partials.modals.maintenances.register', arguments: { asset: {{ $computer_data->id }} }})">Registrar mantenimiento</x-buttons.primary>
    </div>
</div>