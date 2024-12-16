<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class SaleDetail extends Model
{
    protected $table = 'sale_details';

    protected $fillable = [
        'sale_id',
        'inventary_id',
        'quantity',
        'unit_price',
        'total',
    ];

    public function sale()
    {
        return $this->belongsTo(Sale::class);
    }

    public function inventory()
    {
        return $this->belongsTo(Inventory::class);
    }
}
