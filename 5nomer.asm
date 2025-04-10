section .data
    prompt db "Введите количество команд: ", 0
    result db "Общее количество матчей: ", 0
    newline db 10, 0

section .bss
    input_buffer resb 16

section .text
    global _start

; --- Вспомогательные функции ---
; Вывод строки (rdi = адрес строки)
print_string:
    mov rsi, rdi        ; Указатель на строку
    mov rdx, 0          ; Считаем длину строки
.count_length:
    cmp byte [rsi + rdx], 0
    je .print
    inc rdx
    jmp .count_length
.print:
    mov rax, 1          ; sys_write
    mov rdi, 1          ; stdout
    syscall
    ret

; Ввод числа (возвращает в rax)
input_int:
    mov rax, 0          ; sys_read
    mov rdi, 0          ; stdin
    mov rsi, input_buffer
    mov rdx, 16
    syscall

    xor rax, rax        ; Обнуляем rax для результата
    mov rsi, input_buffer
    xor rcx, rcx        ; Счётчик цифр
.convert_loop:
    movzx rdx, byte [rsi + rcx]
    cmp rdx, '0'
    jb .done
    cmp rdx, '9'
    ja .done
    sub rdx, '0'
    imul rax, 10
    add rax, rdx
    inc rcx
    jmp .convert_loop
.done:
    ret

; Вывод числа (rdi = число)
print_int:
    mov rax, rdi
    mov rdi, 10         ; Основание системы (10)
    mov rcx, 0          ; Счётчик цифр
    push 0              ; Конец строки
.convert_loop:
    xor rdx, rdx
    div rdi             ; rax = rax / 10, rdx = остаток
    add rdx, '0'
    push rdx
    inc rcx
    test rax, rax
    jnz .convert_loop
.print_loop:
    pop rsi
    mov [input_buffer], sil
    test sil, sil
    jz .done
    mov rax, 1          ; sys_write
    mov rdi, 1          ; stdout
    lea rsi, [input_buffer]
    mov rdx, 1
    syscall
    jmp .print_loop
.done:
    ret

; --- Основная логика ---
; Функция подсчёта матчей (n в rdi, возвращает rax)
count_matches:
    xor rax, rax        ; Обнуляем счётчик матчей
.loop:
    cmp rdi, 1
    jle .done           ; Если команд <= 1, завершаем
    test rdi, 1         ; Проверяем чётность
    jz .even
.odd:
    mov rbx, rdi
    dec rbx
    shr rbx, 1          ; rbx = (n - 1) / 2
    add rax, rbx        ; Добавляем матчи
    mov rdi, rbx
    inc rdi             ; Команд в следующем раунде: (n-1)/2 + 1
    jmp .loop
.even:
    shr rdi, 1          ; rdi = n / 2
    add rax, rdi        ; Добавляем матчи
    jmp .loop
.done:
    ret

; --- Точка входа ---
_start:
    ; Запрос ввода
    mov rdi, prompt
    call print_string

    ; Ввод числа
    call input_int
    mov rdi, rax        ; Сохраняем n в rdi

    ; Подсчёт матчей
    call count_matches
    push rax            ; Сохраняем результат

    ; Вывод результата
    mov rdi, result
    call print_string
    pop rdi             ; Восстанавливаем результат
    call print_int
    mov rdi, newline
    call print_string

    ; Завершение программы
    mov rax, 60         ; sys_exit
    xor rdi, rdi        ; Код 0
    syscall