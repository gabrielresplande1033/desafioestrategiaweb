class MateriaPage
    include Capybara::DSL

    def filtrar_materia(materia)
        sleep 4
        find('#onesignal-slidedown-allow-button').click
        find("input[placeholder='Filtrar']").set materia
        find('a', text: materia).click
        sleep 5
    end

    def retornar_valor_na_listagem()
        @texto = find('#b_cursos_porconcurso > div.cur-listing.-margin > div > div.js-cur-content > div.js-card-prod-container > section:nth-child(4) > div').text
        if(@texto.index(/cursos/).nil?)
            @parcela = 1
        else
            @parcela = 12
        end
        @match = @texto.match(/(\d{1,6}\.?)+(,\d{2})/)
        @valor = @match.to_s
        @valor = @valor.gsub('.', '')
        @valor = @valor.gsub(',', '.')
        puts @valor
        @valor = @valor.to_f
        return @valor.to_f
    end

    def retornar_numero_parcelas()
        @texto = find('#b_cursos_porconcurso > div.cur-listing.-margin > div > div.js-cur-content > div.js-card-prod-container > section:nth-child(4) > div').text
        if(@texto.index(/cursos/).nil?)
            @parcela = 1
        else
            @parcela = 12
        end
        return @parcela
    end

    def selecionar_quarto_curso()
        sleep 2
        find('#b_cursos_porconcurso > div.cur-listing.-margin > div > div.js-cur-content > div.js-card-prod-container > section:nth-child(4) > a').click  
    end

end