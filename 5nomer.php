<?php

function turniri($a) {
    $itog = 0;
    while ($a > 1) {
        if ($a % 2 == 0) {
            $itog += $a / 2;
            $a /= 2;
        } else {
            $itog += ($a - 1) / 2;
            $a = ($a - 1) / 2 + 1;
        }
    }
    return $itog;
}

function vvodchisla() {
    echo "Введите количество команд: ";
    
    while (true) {
        $input = trim(fgets(STDIN));
        $a = filter_var($input, FILTER_VALIDATE_INT);
        
        if ($a !== false && $a > 0) {
            break;
        }
        
        echo "Ошибка! Введите целое положительное число: ";
    }
    return $a;
}

function vivod($a, $b) {
    echo "Общее количество матчей для " . $a . " команд: " . $b . "\n";
}

$a = vvodchisla();
$b = turniri($a);
vivod($a, $b);

?>
