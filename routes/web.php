<?php

use App\Livewire\Dashboard;
use App\Livewire\Organization\Departments;
use Illuminate\Support\Facades\Route;

Route::view('/', 'welcome');

Route::view('/tailwind', 'tailwind');

Route::view('profile', 'profile')
    ->middleware(['auth'])
    ->name('profile');

Route::get('/dashboard', Dashboard::class)->middleware('auth')->name('dashboard');

Route::get('/organization/departments', Departments::class)->middleware('auth')->name('departments');

require __DIR__.'/auth.php';
