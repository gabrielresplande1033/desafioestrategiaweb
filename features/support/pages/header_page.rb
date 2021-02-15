class HeaderPage
    include Capybara::DSL

    def home_page
        visit 'https://www.estrategiaconcursos.com.br/'
    end

    def busca_por_professor
        visit 'https://www.estrategiaconcursos.com.br/cursos/professor/'
    end

    def busca_por_materia
        visit 'https://www.estrategiaconcursos.com.br/cursos/materia/'
    end
    
    def busca_por_concurso
        visit 'https://www.estrategiaconcursos.com.br/cursos/concurso/'
    end

    def busca_por_regiao
        visit 'https://www.estrategiaconcursos.com.br/cursos/regiao/'
    end

    def busca_ver_todos
        visit 'https://www.estrategiaconcursos.com.br/cursos/'
    end

end