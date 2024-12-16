<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class AdvancedSaleDetail extends Model
{
    protected $table = 'advanced_sale_details';

    protected $fillable = [
        'advanced_sale_id',
        'inventary_id',
        'quantity',
        'unit_price',
        'total',
    ];

    public function advancedSale()
    {
        return $this->belongsTo(AdvancedSale::class);
    }

    public function inventary()
    {
        return $this->belongsTo(Inventory::class);
    }
}
