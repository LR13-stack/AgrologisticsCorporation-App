<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class PurchaseDetail extends Model
{
    protected $table = 'purchase_details';

    protected $fillable = [
        'purchase_id',
        'article_id',
        'unit_of_measurement',
        'batch_code',
        'due_date',
        'quantity',
        'unit_price',
        'freight',
        'other',
        'costs_plus',
        'total',
    ];

    public function purchase()
    {
        return $this->belongsTo(Purchase::class);
    }

    public function article()
    {
        return $this->belongsTo(Article::class);
    }
}
