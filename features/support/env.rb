require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'

Capybara.register_driver :selenium do |app|
 Capybara::Selenium::Driver.new(app,:browser => :chrome)
end

Capybara.configure do |config|
  config.default_driver = :selenium
  config.app_host = "https://www.estrategiaconcursos.com.br"
  config.default_max_wait_time = 30
end