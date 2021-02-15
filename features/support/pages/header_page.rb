class HeaderPage
    include Capybara::DSL
  
    def home_page
      visit '/'
    end
  
    def header
      find('div.nav-header-links')
    end
  
    def busca_por(busca)
      header.find('a', text: busca).click
    end
  end