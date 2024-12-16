<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class CustomerCredit extends Model
{
    protected $table = 'customer_credits';

    protected $fillable = [
        'customer_id',
        'seller_id',
        'credit_limit',
        'credit_used',
        'credit_remaining',
        'is_active',
        'payment_recepit_id',
        'currency_type',
        'exchange_rate',
        'die_date',
        'observation',
    ];

    public function customer()
    {
        return $this->belongsTo(Customer::class);
    }

    public function seller()
    {
        return $this->belongsTo(Seller::class);
    }

    public function paymentRecepit()
    {
        return $this->belongsTo(PaymentReceipt::class);
    }
}
