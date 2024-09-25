<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class AssetEvent extends Model
{
    use HasFactory;

    protected $fillable = [
        'event_tag',
        'event_type_id',
        'start_date',
        'end_date',
        'asset_id',
        'employee_id',
        'status',
        'remarks',
        'created_by',
        'updated_by',
    ];
}
