<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class GroupOfConcepts extends Model
{
    protected $table = 'group_of_concepts';

    protected $fillable = [
        'name',
        'is_expense',
    ];
}
