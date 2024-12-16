<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Batch extends Model
{
    protected $table = 'batches';

    protected $fillable =
    [
        'inventory_id',
        'code',
        'due_date',
        'stock',
        'unit_price',
    ];
}
