<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class AdvancedSale extends Model
{
    protected $table = 'advanced_sales';

    protected $fillable = [
        'customer_id',
        'warehouse_id',
        'seller_id',
        'bank_account_id',
        'payment_receipt_id',
        'type_document',
        'payment_receipt_code',
        'igv',
        'exchange_rate',
        'payment_condition',
        'status',
        'days',
        'currency_type',
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

    public function bankAccount()
    {
        return $this->belongsTo(BankAccount::class);
    }

    public function paymentReceipt()
    {
        return $this->belongsTo(PaymentReceipt::class);
    }

    public function items()
    {
        return $this->hasMany(AdvancedSaleDetail::class);
    }
}
