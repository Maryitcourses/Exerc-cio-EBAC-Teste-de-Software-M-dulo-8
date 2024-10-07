            #language: pt

            Funcionalidade: Configurar produto
            Como cliente da EBACSHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Contexto: Dado que eu acesse o site da loja EBACSHOP

            Cenário: Seleções de cor, tamanho e quantidade devem ser obrigatórios
            Quando eu digitar o tamanho do produto
            E as cores "Rosa" "Azul" "Branca"
            E a quantidade "<=10"
            Então deve aparecer a mensagem "produto no carrinho""

            Cenário: Seleções de cor, tamanho e quantidade devem ser obrigatórios
            Quando eu digitar o tamanho do produto
            E as cores "vermelho" "preto"
            E a quantidade "<=10"
            Então deve aparecer a mensagem "produto indisponível"

            Cenário: Apagar registro
            Quando eu digitar o tamanho do produto
            E escolher as cores
            E clicar no botão "limpar"
            Então deve "voltar ao estado original"

            Esquema do Cenário: Inserir no carrinho
            Quando eu escolher a <cor>
            e o <tamanho>
            e a <quantidade>
            Então deve exibir a <mensagem> produto no carrinho, produto indisponível
            

            Exemplos:
            | cores      | quantidade | tamanho | mensagem               |
            | "Rosa"     | 1          | "xs"    | "produto no carrinho"  |
            | "Azul"     | 10         | "m"     | "produto no carrinho"  |
            | "Branca"   | 5          | "xs"    | "produto no carrinho"  |
            | "vermelho" | 1          | "xs"    | "produto indisponível" |
            | "preto"    | 2          | "xs"    | "produto indisponível" |
