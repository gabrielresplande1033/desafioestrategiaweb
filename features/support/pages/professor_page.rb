class ProfessorPage
    include Capybara::DSL

    def filtrar_professor(nome)
        sleep 4
        find('#onesignal-slidedown-allow-button').click
        find("input[placeholder='Filtrar']").set nome
        find('a', text: nome).click
        sleep 5
    end
    
    def retornar_valor_na_listagem()
        @texto = find('#b_cursos_porconcurso > div.cur-listing.-margin > div > div.js-cur-content > div.js-card-prod-container > section:nth-child(1) > div').text
        if(@texto.index(/cursos/).nil?)
            @parcela = 1
        else
            @parcela = 12
        end
        @match = @texto.match(/(\d{1,6}\.?)+(,\d{2})/)
        @valor = @match.to_s
        @valor = @valor.gsub(',', '.')
        @valor = '%.2f' % @valor.to_f
        return @valor.to_f
    end

    def retornar_numero_parcelas()
        @texto = find('#b_cursos_porconcurso > div.cur-listing.-margin > div > div.js-cur-content > div.js-card-prod-container > section:nth-child(1) > div').text
        if(@texto.index(/12x/).nil?)
            @parcela = 1
        else
            @parcela = 12
        end
        puts @parcela
        return @parcela
    end

    def selecionar_primeiro_curso()
        sleep 2
        find('#b_cursos_porconcurso > div.cur-listing.-margin > div > div.js-cur-content > div.js-card-prod-container > section:nth-child(1) > a').click  
    end
 
    def retornar_valor_pagina_detalhes()
        @texto = find('.cur-details-shopping-installments').text
        @match = @texto.match(/(\d{1,6}\.?)+(,\d{2})/)
        @valor = @match.to_s
        @valor = @valor.gsub('.', '')
        @valor = @valor.gsub(',', '.')
        @valor = '%.2f' % @valor.to_f
        return @valor.to_f
    end

    def retornar_valor_total_pagina_detalhes()
        @texto = find('.cur-details-shopping-price').text
        @match = @texto.match(/(\d{1,6}\.?)+(,\d{2})/)
        @valor = @match.to_s
        @valor = @valor.gsub('.', '')
        @valor = @valor.gsub(',', '.')
        @valor = '%.2f' % @valor.to_f
        @valor = '%.2f' % @valor
        return @valor
    end

    def retornar_titulo_da_pagina
        find('#b_cursos_porconcurso > section.section-content > div > header > h1').text
    end 

end