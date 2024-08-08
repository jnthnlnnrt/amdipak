<?php

namespace App\Livewire\Organization;

use App\Models\Organization\Department;
use Livewire\Attributes\Title;
use Livewire\Component;

class Departments extends Component
{

    public $search = "";
    public $sort = "internal_id";
    public $direction = 'asc';

    #[Title('Departamentos')] 
    public function render()
    {
        return view('livewire.organization.departments', [
            'departments' => Department::where('internal_id', 'like', '%'.$this->search.'%')
            ->orWhere('name', 'like', '%'.$this->search.'%')->orderBy($this->sort, $this->direction)->get()
        ]);
    }

    public function order($sort){
        if ($this->sort == $sort) {
            if ($this->direction == 'asc') {
                $this->direction = 'desc';
            } else {
                $this->direction = 'asc';
            }
        } else {
            $this->sort = $sort;
            $this->direction = 'asc';
        }
        
    }
}
