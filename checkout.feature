            #language: pt

            Funcionalidade: Checkout
            Como cliente da loja EBACSHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto: Dado que eu acesse o site da loja EBACSHOP

            Cenário: Campos com asteriscos
            Quando usuário preencher <campos> com asteriscos e inserir <email> válido
            Então deve aparecer o botão com a mensagem "Finalizar compra"

            Cenário: Email com formato inválido
            Quando usuário preencher <campos> com asteriscos e inserir <email> inválido
            Então deve aparecer a mensagem "email inválido"

            Cenário: Campos vazios
            Quando usuário não preencher <campos> com asteriscos e inserir <email> inválido
            Então deve aparecer a mensagem "Preencher campos com asteriscos"

            Esquema do Cenário: Finalizar compra
            Quando usuário preencher  <campos com asteriscos> e <inserir email válido>
            Então deve aparecer a <mensagem> Finalizar compra

            Exemplos:
            | campos com asteriscos | email válido | mensagem                          |
            | "sim"                 | "sim"        | "Finalizar compra"                |
            | "sim"                 | "não"        | "email inválido"                  |
            | "não"                 | "sim"        | "Preencher campos com asteriscos" |
            | "sim"                 | "não"        | "Preencher campos com asteriscos" |
            | "não"                 | "sim"        | "Preencher campos com asteriscos" |








