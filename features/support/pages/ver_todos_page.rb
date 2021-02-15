class VerTodos
    include Capybara::DSL

    def selecionar_concurso
        find('#b_cursos > div.page-courses.-no-pad > section:nth-child(3) > div:nth-child(2) > div > div > div > div.slick-slide.slick-current.slick-active > div > section:nth-child(1) > a').click
    end

end