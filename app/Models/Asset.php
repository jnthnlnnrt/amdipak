<?php

namespace App\Models;

use App\Models\Catalogs\AssetStatus;
use App\Models\Catalogs\MaintenanceFrequency;
use App\Models\Catalogs\Manufacturer;
use App\Models\Catalogs\Subtype;
use App\Models\Organization\Employee;
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

    public function status(): BelongsTo{
        return $this->belongsTo(AssetStatus::class);
    }

    public function employee(): BelongsTo{
        return $this->belongsTo(Employee::class);
    }

    public function frequency(): BelongsTo{
        return $this->belongsTo(MaintenanceFrequency::class);
    }
}
