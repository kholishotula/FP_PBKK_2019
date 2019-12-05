<?php
namespace App\Validation;

use Phalcon\Validation;
use Phalcon\Validation\Validator\PresenceOf;

class PenggunaValidation extends Validation
{
    public function initialize(){

    $this->add(
        'username',
        new PresenceOf(
            [
                'message' => 'The username is required',
            ]
        )
    );

    $this->add(
        'username',
        new StringLength([
            'max' => 20,
            'min' => 5
        ])
    );

    $this->add(
        'pw',
        new PresenceOf(
            [
                'message' => 'The password is required',
            ]
        )
    );

    $this->add(
        'pw',
        new Regex(
            [
                'pattern' => '/[^_\n\r\s]{8,}/',
                'message' => 'Password must contains at least 8 character',
            ]
        )
    );

    $this->add(
        'pw2',
        new PresenceOf(
            [
                'message' => 'The confirmation password is required',
            ]
        )
    );

    $this->add(
        'pw2',
        new Confirmation(
            [
                //ini apa
            ]
        )
    );

    $this->add(
        'email',
        new PresenceOf(
            [
                'message' => 'The email is required',
            ]
        )
    );

    $this->add(
        'email',
        new Email(
            [
                'message' => 'Email must follow email format',
            ]
        )
    );
    }
}

?>