Before do
    page.current_window.resize_to(1366, 768)

    @header = HeaderPage.new
    @professor = ProfessorPage.new
    @concurso = ConcursoPage.new
    @materia = MateriaPage.new
    @regiao = RegiaoPage.new
    @ver_todos = VerTodos.new
    @search = SearchPage.new
    @pagina_detalhes = PaginaDetalhes.new
end

After do |scenario|
    nome_cenario = scenario.name.gsub(/[^A-Za-z0-9]/, '')
    nome_cenario = nome_cenario.gsub(' ','_').downcase!
    screenshot = "log/screenshots/#{nome_cenario}.png"
    page.save_screenshot(screenshot)
    embed(screenshot, 'image/png', 'Print')
 end

