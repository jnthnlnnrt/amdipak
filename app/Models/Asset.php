<?php

namespace App\Models;

use App\Models\Catalogs\Manufacturer;
use App\Models\Catalogs\Subtype;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Asset extends Model
{
    use HasFactory;

    public function manufacturer(): BelongsTo{
        return $this->belongsTo(Manufacturer::class);
    }

    public function subtype(): BelongsTo{
        return $this->belongsTo(Subtype::class);
    }
}
