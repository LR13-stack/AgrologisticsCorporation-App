<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Ubigeo extends Model
{
    protected $table = 'ubigeos';

    protected $fillable = [
        'name',
        'code',
        'tag',
        'search_engine',
        'number_of_children',
        'level',
        'parent_code',
    ];
}
