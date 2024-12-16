<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Article extends Model
{
    protected $table = 'articles';

    protected $fillable = [
        'name',
        'line_id',
        'costs',
        'expenses',
        'costs_plus_expenses',
        'sale_price',
        'sale_shop',
        'sale_wholesale',
        'is_exonerated',
    ];

    public function line()
    {
        return $this->belongsTo(Line::class);
    }
}
