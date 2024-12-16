<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Zone extends Model
{
    protected $table = 'zones';

    protected $fillable = [
        'name',
        'ubigeo_id',
    ];

    public function ubigeo()
    {
        return $this->belongsTo(Ubigeo::class);
    }
}
