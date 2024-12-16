<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ArticleTransfer extends Model
{
    protected $table = 'article_transfers';

    protected $fillable = [
        'warehouse_origin_id',
        'warehouse_destination_id',
        'observation',
    ];

    public function warehouseOrigin()
    {
        return $this->belongsTo(Warehouse::class, 'warehouse_origin_id');
    }

    public function warehouseDestination()
    {
        return $this->belongsTo(Warehouse::class, 'warehouse_destination_id');
    }
}
