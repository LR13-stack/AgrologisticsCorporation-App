<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class LoanOfMerchandiseDetail extends Model
{
    protected $table = 'loan_of_merchandise_details';

    protected $fillable = [
        'loan_of_merchandise_id',
        'inventary_id',
        'quantity',
        'unit_price',
        'total',
    ];

    public function loanOfMerchandise()
    {
        return $this->belongsTo(LoanOfMerchandise::class);
    }

    public function inventory()
    {
        return $this->belongsTo(Inventory::class, 'inventary_id');
    }
}
