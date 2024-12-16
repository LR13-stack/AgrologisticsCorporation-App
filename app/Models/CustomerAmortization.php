<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class CustomerAmortization extends Model
{
    protected $table = 'customer_amortizations';

    protected $fillable = [
        'credit_customer_id',
        'payment_receipt_id',
        'bank_account_id',
        'currency_type',
        'bank',
        'customer',
        'amount',
        'observation',
    ];

    public function creditCustomer()
    {
        return $this->belongsTo(CustomerCredit::class);
    }

    public function paymentReceipt()
    {
        return $this->belongsTo(PaymentReceipt::class);
    }

    public function bankAccount()
    {
        return $this->belongsTo(BankAccount::class);
    }
}
