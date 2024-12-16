<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Purchase extends Model
{
    protected $table = 'purchases';

    protected $fillable = [
        'supplier_id',
        'warehouse_id',
        'payment_receipt_id',
        'type_document',
        'payment_receipt_code',
        'date_of_entry',
        'igv',
        'exchange_rate',
        'payment_condition',
        'status',
        'currency_type',
        'observation',
        'sale_value',
        'total_igv',
        'exonerated',
        'subtotal',
        'total_freight',
        'total',
    ];

    public function supplier()
    {
        return $this->belongsTo(Supplier::class);
    }

    public function warehouse()
    {
        return $this->belongsTo(Warehouse::class);
    }

    public function paymentReceipt()
    {
        return $this->belongsTo(PaymentReceipt::class);
    }

    public function items()
    {
        return $this->hasMany(PurchaseDetail::class);
    }
}
