

mov ah, 0x0e ; будет запрашивать вывод к консоль биоса
mov al, 'I' ; в регистр al положили символ для печати
int 0x10 ; вывзываем запрос на печать
call newline
mov al, 'u' ; ну и так на каждую букву
int 0x10
mov al, 's' 
int 0x10 ;
mov al, 'e'
int 0x10
call newline
mov al, 'a' ;
int 0x10 ;
mov al, 'r' ;
int 0x10 ;
mov al, 'c' ;
int 0x10 ;
mov al, 'h' ;
int 0x10 ;
call newline
mov al, 'b' ;
int 0x10 ;
mov al, 't' ;
int 0x10 ;
mov al, 'w' ;
int 0x10 ;

; остальное не трогаем
; бесконечный цикл, те самый (eb fe) сверху
loop:
    jmp loop

newline:
    mov al, 10
    int 0x10
    mov al, 13
    int 0x10
    ret
 

; заполняем 510 нулевыми байтами минус размер в байтах кода выше
times 510-($-$$) db 0
; те самые магические байты в конце сектора
dw 0xaa55 
