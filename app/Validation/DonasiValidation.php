<?php
namespace App\Validation;

use Phalcon\Validation;
use Phalcon\Validation\Validator\PresenceOf;
use Phalcon\Validation\Validator\Regex;

class DonasiValidation extends Validation
{
    public function initialize(){

    $this->add(
        'telepon',
        new PresenceOf(
            [
                'message' => 'The telephone is required',
            ]
        )
    );

    $this->add(
        'telepon',
        new Regex([
            'pattern' => '/[0-9]{9,13}/',
            'message' => 'The telephone is not valid',
        ])
    );

    $this->add(
        'bank',
        new PresenceOf(
            [
                'message' => 'The bank is required',
            ]
        )
    );

    $this->add(
        'rek',
        new PresenceOf(
            [
                'message' => 'The account number is required',
            ]
        )
    );

    $this->add(
        'jumlah',
        new PresenceOf(
            [
                'message' => 'The amount of donation is required',
            ]
        )
    );

    $this->add(
        'tanggal',
        new PresenceOf(
            [
                'message' => 'The donation date is required',
            ]
        )
    );
    }
}

?>