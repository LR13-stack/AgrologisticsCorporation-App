<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Concepts extends Model
{
    protected $table = 'concepts';

    protected $fillable = [
        'name',
        'group_of_concept_id',
        'is_expense',
    ];

    public function groupOfConcepts()
    {
        return $this->belongsTo(GroupOfConcepts::class, 'group_of_concept_id');
    }
}
