<?php

class FizzBuzz {

    const THREE = 'Fizz';
    const FIVE = 'Buzz';

    /**
     * The lower value of the range that will be counted.
     * @var integer
     */
    public $from = 1;

    /**
     * The greather value of the range that we will be counted.
     * @var integer
     */
    public $to = 100;

    /**
     * Generated output that will be returned
     * @var array
     */
    public $output = array();

    /**
     * Set the lower value of the range.
     * @param integer $from
     */
    public function set_from($from) {
        $this->from = $from;
    }

    /**
     * Set the upper value of the range.
     * @param integer $to
     */
    public function set_to($to) {
        $this->to = $to;
    }

    /**
     * Check if the value of "from" is lower as the value of "to"
     * @return bool
     */
    public function check_range() {
        if ($this->from <= $this->to) {
            return TRUE;
        } 

        return FALSE;

    }

    /**
     * Determine wether a number is divisible by another
     * @param string $number The number to check if is divisible
     * @param string $by The divisible number
     * @return bool
     */
    public function is_divisible($number, $by) {
        $result = $number % $by;
        if ($result == 0) {
            return TRUE;
        }

        return FALSE;
    }

    /**
     * Check if a number contains a particular number in it
     * @param mixed $number String/Integer. The number to check.
     * @param mixed $number_searched String/Integer. The searched number.
     * @return bool
     */
    public function contain_number($number,$number_searched) {
        $string = (string)$number;
        $string_searched = (string)$number_searched;
        if ( !strstr($string, $string_searched) ) {
            return FALSE;
        } 
        return TRUE;

    }

    /**
     * Generate the output.
     * @return string
     */
    public function run() {

        if (!$this->check_range()) {
            throw new Exception('The value of "from" must be lower or equal as the "value" of "to"');
        }

        for ($i = $this->from; $i <= $this->to; $i++) {
            $output[$i] = $i;
            if ( $this->is_divisible($i, 3) OR $this->contain_number($i, 3) ) $output[$i] = self::THREE;
            if ( $this->is_divisible($i, 5) OR $this->contain_number($i, 5) ) $output[$i] = self::FIVE;
            if ($this->is_divisible($i, 15)) $output[$i] = self::THREE . self::FIVE;
        }

        return $output;
    }
    

}
