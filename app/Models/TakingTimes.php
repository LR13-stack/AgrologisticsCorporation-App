<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class TakingTimes extends Model
{
    protected $table = 'taking_times';

    protected $fillable = [
        'type_document',
        'initial_date',
        'final_date',
        'time_in_seconds',
    ];
}
