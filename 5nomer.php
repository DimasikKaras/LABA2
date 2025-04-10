<?php

function minOperations($S) {
    $n = strlen($S);
    $min_ops = $n;

    for ($k = (int)($n / 2); $k >= 1; $k--) {
        if (substr($S, 0, $k) == substr($S, $k, $k)) {
            $ops = $k + 1 + ($n - 2 * $k);
            if ($ops < $min_ops) {
                $min_ops = $ops;
            }
        }
    }
    return $min_ops;
}

function vvod() {
    echo "Введите строку: ";
    $input = trim(fgets(STDIN));
    return $input;
}

function vivod($input, $operations) {
    echo "\nРезультат:\n";
    echo "Строка: \"" . $input . "\"\n";
    echo "Минимальное количество операций: " . $operations . "\n";
}

$input = vvod();
$result = minOperations($input);
vivod($input, $result);

?>
