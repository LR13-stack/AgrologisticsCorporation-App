<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class PaymentReceipt extends Model
{
    protected $table = 'payment_receipts';

    protected $fillable = [
        'code',
        'type_document',
        'url_qr',
        'advances',
        'free_ops',
        'taxed_ops',
        'op_tax_free',
        'op_exempt_ops',
        'vat',
        'discounts',
        'total',
        'status',
        'observation',
    ];
}
