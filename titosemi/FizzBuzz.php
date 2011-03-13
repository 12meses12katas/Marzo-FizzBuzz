<?php

class FizzBuzz {

    /**
     * The lower value of the range that we will count.
     * @var integer
     */
    public $from = 1;

    /**
     * The greather value of the range that we will count.
     * @var integer
     */
    public $to = 100;

    public function run() {

        if (!$this->check_range()) {
            throw new Exception('The value of "from" must be lower as the "value" of "to"');
        }

        for ($i = $this->from; $i <= $this->to; $i++) {
            $output = '';
            if ($this->is_divisible($i, 3)) $output .= 'Fizz';
            if ($this->is_divisible($i, 5)) $output .= 'Buzz';
            if (empty($output)) $output = $i;

            echo "\n". $output;
        }
    }

    public function set_from($from) {
        $this->from = $from;
    }

    public function set_to($to) {
        $this->to = $to;
    }

    public function check_range() {
        if ($this->from < $this->to) {
            return TRUE;
        } 

        return FALSE;

    }

    public function is_divisible($number, $by) {
        $result = $number % $by;
        if ($result == 0) {
            return TRUE;
        }

        return FALSE;
    }
    

}
