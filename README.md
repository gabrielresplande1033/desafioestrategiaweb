# Objetivo
Esse projeto tem como principal objetivo a avaliação do processo seletivo da Estratégia Educacionalr.

# Tecnologias utilizadas
- [Ruby](https://www.ruby-lang.org/pt/)
- [Cucumber](https://cucumber.io/)
- [Capybara](https://www.rubydoc.info/github/jnicklas/capybara)
- [Chromedriver](https://chromedriver.chromium.org/downloads)


# Funcionalidades
- Automação de testes da busca por Concurso
- Automação de testes da busca por Professor
- Automação de testes da busca por Matéria
- Automação de testes da busca por Região
- Automação de testes da busca por Ver Todos
- Automação de testes utilizando o search da página inicial

# ChromeDriver
- Para rodar os testes de interface, é necessário possuir o ChromeDriver.
- Verifique a versão do chrome [aqui](https://chromedriver.storage.googleapis.com/LATEST_RELEASE)
- Baixe a versão do ChromeDriver compatível com o seu navegador [aqui](https://chromedriver.storage.googleapis.com/index.html)
- Por fim, mova o ChromeDriver para o diretório correto:
- *sudo mv chromedriver /usr/local/bin* 

# Como executar os testes de Interface

Para executar os testes de Interface deve-se possuir instalado o **Ruby**, **Bundle**, **ChromeDriver**, clonar o projeto e executar os seguintes comandos na raiz do projeto
- *bundle install*
- *cucumber* (Para executar todos os testes)
- *cucumber -t @teste_busca* (para executar todos os testes de busca)
- *cucumber -t @busca_por_professor* (para executar os testes da busca por Professor)
- *cucumber -t @busca_por_concurso* (para executar os testes da busca por Concurso)
- *cucumber -t @busca_por_materia* (para executar os testes da busca por Matéria)
- *cucumber -t @busca_por_regiao* (para executar os testes da busca por Região)
- *cucumber -t @busca_ver_todos* (para executar os testes da busca por Ver Todos)
- *cucumber -t @busca_pelo_search* (para executar os testes da busca pelo search da Página Inicial)

*Observações: As evidencias de cada teste são geradas e salvas na pasta */log*.*

