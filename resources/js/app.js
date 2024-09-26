import './bootstrap';

//Toast
import '../../vendor/masmerise/livewire-toaster/resources/js'; // 

//Flowbite
import 'flowbite';

//Powergrid
import './../../vendor/power-components/livewire-powergrid/dist/powergrid'
import './../../vendor/power-components/livewire-powergrid/dist/tailwind.css'
import { initFlowbite } from 'flowbite';

document.addEventListener('livewire:navigated', () => { 
    console.log("Navigated");
    initFlowbite();
})
