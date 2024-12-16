<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ArticleTransferDetail extends Model
{
    protected $table = 'article_transfer_details';

    protected $fillable = [
        'article_transfer_id',
        'inventary_id',
        'quantity',
    ];

    public function articleTransfer()
    {
        return $this->belongsTo(ArticleTransfer::class);
    }

    public function inventory()
    {
        return $this->belongsTo(Inventory::class);
    }
}
