<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class TypeOfCustomer extends Model
{
    protected $table = 'type_of_customers';

    protected $fillable = [
        'name',
    ];
}
