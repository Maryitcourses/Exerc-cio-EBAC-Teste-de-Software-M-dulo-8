            #language: pt

            Funcionalidade: Checkout
            Como cliente da loja EBACSHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto: Dado que eu acesse o site da loja EBACSHOP

            Cenário: Campos com asteriscos
            Quando usuário preencher todos os campos marcados com asteriscos
            E inserir o email válido
            Então deve aparecer o botão com a mensagem "Finalizar compra"

            Cenário: Email com formato inválido
            Quando usuário preencher todos os campos marcados com asteriscos
            E inserir o email com formato inválido
            Então deve aparecer a mensagem "email inválido"

            Cenário: Campos vazios
            Quando usuário não preencher todos os campos marcados com asteriscos
            E inserir o email com formato válido
            Então deve aparecer a mensagem "Preencher campos com asteriscos"

            Esquema do Cenário: Finalizar compra
            Quando usuário preencher os <campos com asteriscos>
            E inserir o <email> com <formato> válido
            Então deve aparecer a <mensagem> Finalizar compra

            Exemplos:
            | campos com asteriscos | email formato | mensagem                          |
            | "sim"                 | "sim"         | "Finalizar compra"                |
            | "sim"                 | "não"         | "email inválido"                  |
            | "não"                 | "sim"         | "Preencher campos com asteriscos" |
            | "sim"                 | "não"         | "Preencher campos com asteriscos" |
            | "não"                 | "sim"         | "Preencher campos com asteriscos" |








