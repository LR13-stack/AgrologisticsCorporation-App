<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Warehouse extends Model
{
    protected $table = 'warehouses';

    protected $fillable = [
        'name',
        'zone_id',
        'address',
    ];

    public function zone()
    {
        return $this->belongsTo(Zone::class);
    }
}
