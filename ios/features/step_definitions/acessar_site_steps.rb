Dado(/^que estou na webview$/) do
  @site = AcessarSiteScreen.new
  @site.acessar_homePage
end

Quando(/^acesso o "([^"]*)"$/) do |url|
@site.acessar_site url
end

Entao(/^vejo a tela de login$/) do
  @site.visualizar_home_site
end

Before do
  $driver.start_driver
end

After do
  $driver.driver_quit
end
