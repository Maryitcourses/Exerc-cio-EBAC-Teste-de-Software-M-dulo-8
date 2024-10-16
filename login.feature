            #language: pt

            Funcionalidade: Login na loja EBACSHOP
            Como cliente da EBACSHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Contexto: Dado que eu acesse a plataforma da loja EBACSHOP

            Cenário: Autenticação válida
            Quando eu digitar o usuario "maria@ebac.com.br" e <senha> "senha@777"
            Então deve ser direcionado para a tela de "checkout"

            Cenário: Autenticação inválida
            Quando eu digitar o usuario "josefino@ebac.com.br" e <senha> "senha@777"
            Então deve exibir a mensagem de alerta "Usuário ou senha inválidos"

            Esquema do Cenário: Login na Loja EBACSHOP
            Quando eu digitar o <usuario>, <senha>
            Então deve aparecer a <mensagem>

            Exemplos:
            | usuario                | senha       | mensagem                     |
            | "maria@ebac.com.br"    | "senha@777" | "checkout"                   |
            | "josefino@ebac.com.br" | "senha@777" | "Usuário ou senha inválidos" |
            | "bruna@ebac.com.br"    | "senha@23*" | "Usuário ou senha inválidos" |
            | "barbara@ebac.com.br"  | "senha@0" | "checkout"                   |




