#language: pt

@teste_busca
Funcionalidade: Efetuar buscas e visualização de curso do estrategia educacional

    COMO usuario do estrategia concursos
    EU QUERO realizar buscas no site
    A FIM DE encontrar o melhor curso para adquirir

    @busca_por_professor
    Cenario: Busca Por Professor
        Dado que eu acesso a busca por professor
        Quando acessar os cursos da professora "Ena Loiola"
        Então valido que o título esta de acordo com minha busca
        E devo escolher um dos cursos disponíveis para a professora
        E devo validar que o valor da página de detalhes do curso é o mesmo que consta na listagem
        E devo validar que o valor parcelado também está de acordo com o valor total do curso

    @busca_por_concurso
    Cenario: Busca Por Concurso
        Dado que eu acesso a busca por concurso
        Quando acessar os "Concursos de Fisioterapia"
        Então valido que o título esta de acordo com minha busca
        E devo escolher um dos cursos disponíveis de fisioterapia
        E devo validar que o valor da página de detalhes do curso é o mesmo que consta na listagem
        E devo validar que o valor parcelado também está de acordo com o valor total do curso
    
    @busca_por_materia
    Cenário: Busca por Matéria
        Dado que eu acesso a busca por matéria
        Quando acessar os cursos de "Controle da Administração Pública"
        Então valido que o título esta de acordo com minha busca
        E devo escolher um dos cursos disponíveis para administração
        E devo validar que o valor da página de detalhes do curso é o mesmo que consta na listagem
        E devo validar que o valor parcelado também está de acordo com o valor total do curso

    @busca_por_regiao
    Cenário: Busca por Região
        Dado que eu acesso a busca por região
        Quando acessar os cursos da região "Mato Grosso do Sul"
        Então devo escolher um dos concursos disponíveis para a região
        E devo escolher um dos cursos disponíveis
        E devo validar que o valor da página de detalhes do curso é o mesmo que consta na listagem
        E devo validar que o valor parcelado também está de acordo com o valor total do curso

    @busca_ver_todos
    Cenário: Busca por Ver Todos
        Dado que eu acesso a busca por ver todos
        Quando acessar um dos concursos que é exibido na listagem
        Então devo escolher um dos cursos disponíveis
        E devo validar que o valor da página de detalhes do curso é o mesmo que consta na listagem
        E devo validar que o valor parcelado também está de acordo com o valor total do curso

    @busca_pelo_search
    Cenário: Buscar pelo search da pagina inicial
        Dado que estou na pagina inicial do estrategia concursos
        Quando eu realizar uma busca utilizando o search para "Pacote p/ Polícia Federal"
        Então devo escolher um dos cursos disponíveis para minha busca
        E devo validar que o valor da página de detalhes do curso é o mesmo que consta na listagem
        E devo validar que o valor parcelado também está de acordo com o valor total do curso

