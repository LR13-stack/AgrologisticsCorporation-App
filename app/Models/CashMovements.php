<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class CashMovements extends Model
{
    protected $table = 'cash_movements';

    protected $fillable = [
        'account_id',
        'type_movement',
        'amount',
    ];

    public function account()
    {
        return $this->belongsTo(BankAccount::class);
    }
}
