Before do
    page.current_window.resize_to(1366, 768)

    @header = HeaderPage.new
    @professor = ProfessorPage.new
    @concurso = ConcursoPage.new
    @materia = MateriaPage.new
    @regiao = RegiaoPage.new
    @ver_todos = VerTodos.new
    @search = SearchPage.new
end

