class ConcursoPage
    include Capybara::DSL

    def filtrar_concurso(concurso)
        sleep 4
        find('#onesignal-slidedown-allow-button').click
        find("input[placeholder='Filtrar']").set concurso
        find('a', text: concurso).click
        sleep 5
    end

    def retornar_valor_na_listagem()
        @texto = find('#b_cursos_porconcurso > div.cur-listing > div > div:nth-child(3) > div.js-card-prod-container > section:nth-child(1) > div').text        
        if(@texto.index(/cursos/).nil?)
            @parcela = 1
        else
            @parcela = 12
        end
        @match = @texto.match(/(\d{1,6}\.?)+(,\d{2})/)
        @valor = @match.to_s
        @valor = @valor.gsub('.', '')
        @valor = @valor.gsub(',', '.')
        @valor = '%.2f' % @valor.to_f
        return @valor.to_f
    end

    def retornar_numero_parcelas()
        @texto = find('#b_cursos_porconcurso > div.cur-listing > div > div:nth-child(3) > div.js-card-prod-container > section:nth-child(1) > div').text
        if(@texto.index(/cursos/).nil?)
            @parcela = 1
        else
            @parcela = 12
        end
        return @parcela
    end

    def selecionar_primeiro_curso()
        sleep 2
        find('#b_cursos_porconcurso > div.cur-listing > div > div:nth-child(3) > div.js-card-prod-container > section:nth-child(1) > a').click  
    end


end