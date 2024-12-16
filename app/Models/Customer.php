<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Customer extends Model
{
    protected $table = 'customers';

    protected $fillable = [
        'company_name',
        'type_id',
        'type_document',
        'document_number',
        'address',
        'zone_id',
        'ubigeo_id',
        'phone_number',
        'email',
        'manager_id',
        'status',
        'cultivation',
        'hectareas'
    ];

    public function type()
    {
        return $this->belongsTo(TypeOfCustomer::class, 'type_id');
    }

    public function zone()
    {
        return $this->belongsTo(Zone::class);
    }

    public function ubigeo()
    {
        return $this->belongsTo(Ubigeo::class);
    }

    public function manager()
    {
        return $this->belongsTo(Seller::class);
    }
}
