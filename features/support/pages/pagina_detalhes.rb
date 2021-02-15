class PaginaDetalhes
    include Capybara::DSL

    def retornar_valor_pagina_detalhes
        @texto = find('.cur-details-shopping-installments').text
        @match = @texto.match(/(\d{1,6}\.?)+(,\d{2})/)
        @valor = @match.to_s
        @valor = @valor.gsub('.', '')
        @valor = @valor.gsub(',', '.')
        @valor = '%.2f' % @valor.to_f
        return @valor.to_f
    end

    def retornar_valor_total_pagina_detalhes
        @texto = find('.cur-details-shopping-price').text
        @match = @texto.match(/(\d{1,6}\.?)+(,\d{2})/)
        @valor = @match.to_s
        @valor = @valor.gsub('.', '')
        @valor = @valor.gsub(',', '.')
        @valor = '%.2f' % @valor.to_f
        @valor = '%.2f' % @valor
        return @valor
    end

end