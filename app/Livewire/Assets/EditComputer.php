<?php

namespace App\Livewire\Assets;

use App\Models\Asset;
use Livewire\Component;

class EditComputer extends Component
{
    public $computer_data;
    public $asset_tag;

    public function mount($id){
        $this->computer_data = Asset::where('id', $id)->first();
        $this->asset_tag = $this->computer_data->asset_tag;
    }

    public function render()
    {
        return view('assets.edit-computer');
    }
}
