<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Supplier extends Model
{
    protected $table = 'suppliers';

    protected $fillable = [
        'company_name',
        'type_document',
        'document_number',
        'address',
        'phone',
        'ubigeo_id',
    ];

    public function ubigeo()
    {
        return $this->belongsTo(Ubigeo::class);
    }
}
