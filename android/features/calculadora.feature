# language: pt

Funcionalidade: Operações de Soma, Subtração, Multiplicação e Divisão na calculadora do Android
    Como usuário do dispositivo Android
    Eu quero realizar as operações na calculadora
    Para conferir seu resultado

Contexto: Calculadora está aberta
    Dado que a calculadora está aberta

@operacoes
Esquema do Cenário: Realizar operações básicas (+, -, *, /) em separado
    Quando realizo a operação "<numero_1>" "<operacao>" "<numero_2>"
    Então vejo que o resultado deu "<resultado>"

    Exemplos:
    | numero_1 | operacao | numero_2 | resultado |
    |    15    |    +     |     5    |    20     |
    |     8    |    -     |     4    |     4     |
    |     3    |    *     |     3    |     9     |
    |    24    |    /     |     2    |    12     |
    |     7    |    /     |     0    |     ∞     |

@formulas
Esquema do Cenário: Realizar fórmulas
    Quando realizo a fórmula "<formula>"
    Então vejo que o resultado deu "<resultado>"

    Exemplos:
    |  formula  | resultado |
    | 2*3/4-5+6 |    2,5    |
    | 9+7-5*3/1 |      1    |
