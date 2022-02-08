<?php

namespace App\Rules;

use Illuminate\Contracts\Validation\Rule;

class Tag implements Rule
{

    /**
     * Determine if the validation rule passes.
     *
     * @param  string  $attribute
     * @param  mixed  $value
     * @return bool
     */
    public function passes($attribute, $value)
    {
        if ( ! empty($value) ) {
            if ( is_string($value) ) return true;
            else if ( is_array($value) ) {
                $val_len = count($value);
                if ( $val_len !== count(array_unique($value)) ) {
                    return false;
                }
                $tags_count = 0;
                foreach ($value as $tag) {
                    if ( preg_match('/[0-9\w]+/', $tag) ) {
                        $tags_count += 1;
                    }
                }
                if ( $val_len === $tags_count ) return true;
            }

        }
        return false;
    }

    /**
     * Get the validation error message.
     *
     * @return string
     */
    public function message()
    {
        return 'The :attribute you have provided is invalid.';
    }
}
