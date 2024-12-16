<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class LoanOfMerchandise extends Model
{
    protected $table = 'loan_of_merchandises';

    protected $fillable = [
        'customer_id',
        'warehouse_id',
        'seller_id',
        'payment_receipt_id',
        'type_document',
        'payment_receipt_code',
        'igv',
        'payment_condition',
        'status',
        'observation',
        'sale_value',
        'total_igv',
        'exonerated',
        'total',
    ];

    public function customer()
    {
        return $this->belongsTo(Customer::class);
    }

    public function warehouse()
    {
        return $this->belongsTo(Warehouse::class);
    }

    public function seller()
    {
        return $this->belongsTo(Seller::class);
    }

    public function paymentReceipt()
    {
        return $this->belongsTo(PaymentReceipt::class);
    }
}
