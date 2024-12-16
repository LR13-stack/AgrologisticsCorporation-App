<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class MoneyTransfers extends Model
{
    protected $table = 'money_transfers';

    protected $fillable = [
        'code',
        'amount',
        'source_account_id',
        'destination_account_id',
        'exchange_rate',
        'observation',
    ];

    public function sourceAccount()
    {
        return $this->belongsTo(BankAccount::class, 'source_account_id');
    }

    public function destinationAccount()
    {
        return $this->belongsTo(BankAccount::class, 'destination_account_id');
    }
}
