<?php

namespace App\Models\Catalogs;

use App\Models\Asset;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Subtype extends Model
{
    use HasFactory;

    protected $table = 'cat_asset_subtypes';

    protected $fillable = [
        'name',
        'remarks',
        'created_by',
        'updated_by'
    ];

    public function assets(): HasMany{
        return $this->hasMany(Asset::class);
    }
}
