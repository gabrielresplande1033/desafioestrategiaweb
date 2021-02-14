#language: pt

@teste_busca
Funcionalidade: Efetuar buscas e visualização de curso do estrategia educacional

    COMO usuario do estrategia concursos
    EU QUERO realizar buscas no site
    A FIM DE encontrar o melhor curso para adquirir

    Contexto: Estar na página inicial do estrategia concursos
    Dado que estou na página inicial do estrategia concursos

    @busca_por_professor
    Cenario: Busca Por Professor
        Quando eu utilizar a busca "Por Professor"
        Então devo acessar os cursos da professora "Ena Loiola"
        E devo escolher um dos cursos disponíveis
        E devo validar que o valor da página de detalhes do curso é o mesmo que consta na listagem
        E devo validar que o valor parcelado também está de acordo com o valor total do curso 


