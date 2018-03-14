# language: pt

Funcionalidade: Manipular retângulos
    Como usuário do dispositivo Android
    Eu quero manipular os retângulos
    Para que eles adquiram um esquema de organizaçâo automático

Contexto: Aplicação está aberta
    Dado que a aplicação está aberta

Cenário: Verificar estado inicial da aplicação
  Então verifico que possuo 3 retângulos

Cenário: Incluir um novo retângulo
    Quando incluo um novo retângulo
    Então verifico que possuo 4 retângulos

Cenário: Excluir 2 retângulos
    Quando excluo 2 retângulos existentes
    Então verifico que possuo 2 retângulos
