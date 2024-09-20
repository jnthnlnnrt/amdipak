<div class="space-y-3">
    <!-- Page header -->
    <header class="font-semibold text-xl md:text-2xl pt-1 pb-3 border-b border-gray-300">
        <div class="flex items-center justify-between">
            <div>
                Equipos de computo
            </div>
            <div>
                <x-buttons.primary type="button" wire:click="$dispatch('openModal', { component: 'partials.modals.assets.CreateComputer' })">Agregar</x-buttons.primary>
            </div>
        </div>
    </header>
    <div>
        <livewire:partials.tables.assets.computers/>
    </div>
</div>