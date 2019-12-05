<?php

namespace App\Validation;

use Phalcon\Validation;
use Phalcon\Validation\Validator\PresenceOf;
use Phalcon\Validation\Validator\File as FileValidator;

class DonasiFileValidation extends Validation
{
    public function initialize(){

    $this->add(
        'buktiDonasi',
        new PresenceOf(
            [
                'message' => 'The proof of donation is required',
            ]
        )
    );

    $this->add(
        'buktiDonasi',
        new FileValidator(
            [
                "maxSize"              => "2M",
                "messageSize"          => ":field exceeds the max filesize (:max)",
                "allowedTypes"         => [
                    "image/jpeg",
                    "image/png",
                    "image/gif"
                ],
            ]
        )
    );
    }
}

?>