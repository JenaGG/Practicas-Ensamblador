pre db 'Las respuestas de las preguntas son: $'
pre1 db 'Cual es tu nombre: $'
pre2 db 'Cual es tu edad: $'
pre3 db 'Cual es tu carrera: $'
pre4 db 'Cual es tu hobby: $'
pre5 db 'Cual es tu musica favorita: $'
resp1 db 50 dup(' '), '$'
resp2 db 50 dup(' '), '$'
resp3 db 50 dup(' '), '$'
resp4 db 50 dup(' '), '$'
resp5 db 50 dup(' '), '$'
rpre1 db '1: $'
rpre2 db '2: $'
rpre3 db '3: $'
rpre4 db '4: $'
rpre5 db '5: $'

ope   db 'Ingrese un numero: $'
ope1  db 'El resultado de la suma es: $'
ope2  db 'El resultado de la multiplicacion es: $'
n1 db 0
n2 db 0
n3 db 0
n4 db 0
r2 db 0
r db 0
res   db 1 dup (' '), '$'