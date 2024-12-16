<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Inventory extends Model
{
    protected $table = 'inventories';

    protected $fillable = [
        'article_id',
        'warehouse_id',
        'stock',
        'to_be_collected_from_supplier',
        'to_be_delivered_to_customer',
        'cost_price',
        'sale_price',
        'status',
    ];

    public function article()
    {
        return $this->belongsTo(Article::class);
    }

    public function warehouse()
    {
        return $this->belongsTo(Warehouse::class);
    }
}
