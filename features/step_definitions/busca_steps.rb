Dado('que eu acesso a busca por professor') do
    @header.busca_por_professor
end

Quando('acessar os cursos da professora {string}') do |nome|
    @nome = nome
    @professor.filtrar_professor(nome)
end

Então('devo escolher um dos cursos disponíveis para a professora') do
    @valor = @professor.retornar_valor_na_listagem()
    @parcelas = @professor.retornar_numero_parcelas()
    @total = '%.2f' % (@valor * @parcelas)
    @professor.selecionar_primeiro_curso()
end

Então('devo validar que o valor da página de detalhes do curso é o mesmo que consta na listagem') do
    if(@parcelas == 12)
        @valor_detalhes = @professor.retornar_valor_pagina_detalhes()
        expect(@valor).to eql(@valor_detalhes)
    end
end

Então('devo validar que o valor parcelado também está de acordo com o valor total do curso') do
    @valor_total_detalhes = @professor.retornar_valor_total_pagina_detalhes()
    puts @valor_total_detalhes
    puts @total
    expect(@total).to eql(@valor_total_detalhes)
end

Dado('que eu acesso a busca por concurso') do
    @header.busca_por_concurso
end

Quando('acessar os {string}') do |curso|
    @nome = curso
    @concurso.filtrar_concurso(curso)
end

Então('devo escolher um dos cursos disponíveis de fisioterapia') do
    @valor = @concurso.retornar_valor_na_listagem()
    @parcelas = @concurso.retornar_numero_parcelas()
    @total = '%.2f' % (@valor * @parcelas)
    @concurso.selecionar_primeiro_curso()
end

Dado('que eu acesso a busca por matéria') do
    @header.busca_por_materia
end

Quando('acessar os cursos de {string}') do |materia|
    @nome = materia
    @materia.filtrar_materia(materia)
end

Então('devo escolher um dos cursos disponíveis para administração') do
    @valor = @materia.retornar_valor_na_listagem()
    @parcelas = @materia.retornar_numero_parcelas()
    @total = '%.2f' % (@valor * @parcelas)
    @materia.selecionar_quarto_curso()
end

Dado('que eu acesso a busca por região') do
    @header.busca_por_regiao
end

Quando('acessar os cursos da região {string}') do |regiao|
    @nome = regiao
    @regiao.selecionar_regiao(regiao)
end

Então('devo escolher um dos cursos disponíveis para a região') do
    @valor = @regiao.retornar_valor_na_listagem()
    @parcelas = @regiao.retornar_numero_parcelas()
    @total = '%.2f' % (@valor * @parcelas)
    @regiao.selecionar_quarto_curso()
end

Então('devo escolher um dos concursos disponíveis para a região') do
    @regiao.selecionar_primeiro_concurso
end

Então('devo escolher um dos cursos disponíveis') do
    @valor = @regiao.retornar_valor_na_listagem()
    @parcelas = @regiao.retornar_numero_parcelas()
    @total =  '%.2f' % (@valor * @parcelas)
    @regiao.selecionar_primeiro_curso()
end

Dado('que eu acesso a busca por ver todos') do
    @header.busca_ver_todos
end

Quando('acessar um dos concursos que é exibido na listagem') do
    @ver_todos.selecionar_concurso
end

Então('valido que o título esta de acordo com minha busca') do
    @nome_titulo = @professor.retornar_titulo_da_pagina
    expect(@nome).to eql(@nome_titulo)
end

Dado('que estou na pagina inicial do estrategia concursos') do
    @header.home_page
end

Quando('eu realizar uma busca utilizando o search para {string}') do |string|
    @search.buscar_pelo_search(string)
end

Então('devo escolher um dos cursos disponíveis para minha busca') do
    @valor = @search.retornar_valor_na_listagem()
    @parcelas = @search.retornar_numero_parcelas()
    @total = '%.2f' % (@valor * @parcelas)
    @search.selecionar_curso()
end