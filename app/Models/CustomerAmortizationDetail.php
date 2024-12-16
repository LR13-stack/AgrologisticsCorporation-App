<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class CustomerAmortizationDetail extends Model
{
    protected $table = 'customer_amortization_details';

    protected $fillable = [
        'customer_amortization_id',
        'payment_receipt_id',
        'due_date',
        'balance',
        'amortization',
        'final_balance',
    ];

    public function customerAmortization()
    {
        return $this->belongsTo(CustomerAmortization::class);
    }

    public function paymentReceipt()
    {
        return $this->belongsTo(PaymentReceipt::class);
    }
}
