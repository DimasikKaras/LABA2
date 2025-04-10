<?php

function proverka($num) {
    $a = abs($num);
    $res = 0;
    
    if ($a == 0) {
        return 1;
    }
    
    while ($a > 0) {
        $promej = $a % 10;
        if ($promej % 2 == 0) {
            $res++;
        }
        $a = (int)($a / 10);
    }
    return $res;
}

function vivod($num, $res) {
    echo "Число " . $num . " имеет " . $res . " чётных чисел\n";
}

function vvodChisla($firstvvod) {
    if ($firstvvod) {
        echo "Введите число (для завершения введите любое нечисленное значение): ";
    }
    $input = trim(fgets(STDIN));
    if (!is_numeric($input)) {
        return null;
    }
    return $input;
}

$firstvvod = true;
while (true) {
    $num = vvodChisla($firstvvod);
    $firstvvod = false;
    
    if ($num === null) {
        break;
    }
    
    $res = proverka($num);
    vivod($num, $res);
}

?>
