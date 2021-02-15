class SearchPage
    include Capybara::DSL

    def buscar_pelo_search(texto)
        sleep 4
        find('#onesignal-slidedown-allow-button').click
        find("input[placeholder='Qual curso você está procurando? Ex.: Polícia Militar']").set texto
        find('body > header > div > div > form > div > button').click
    end

    def retornar_valor_na_listagem()
        @texto = find('body > div.js-search-page > div > div > div.page-result-list > section:nth-child(1) > span').text
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
        @texto = find('body > div.js-search-page > div > div > div.page-result-list > section:nth-child(1) > span').text
        if(@texto.index(/cursos/).nil?)
            @parcela = 1
        else
            @parcela = 12
        end
        return @parcela
    end

    def selecionar_curso()
        find('body > div.js-search-page > div > div > div.page-result-list > section:nth-child(1) > a.card-prod-details').click
    end

end