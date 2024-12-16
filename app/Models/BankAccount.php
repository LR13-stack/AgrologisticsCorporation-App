<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class BankAccount extends Model
{
    protected $table = 'bank_accounts';

    protected $fillable = [
        'bank_id',
        'owner',
        'cci',
        'currency_type',
    ];

    public function bank()
    {
        return $this->belongsTo(Bank::class);
    }
}
