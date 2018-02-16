class AcessarSiteScreen
  def initialize
    @layout_name = 'XCUIElementTypeButton'
    @url = 'XCUIElementTypeTextField'
    @enter = 'XCUIElementTypeButton'
    @home_site = 'XCUIElementTypeLink'
  end

  def acessar_homePage
    find_element(class: @layout_name).text
  end

  def acessar_site(site)
    @site = CREDENTIALS[site.tr(' ', '_').to_sym][:url]
    find_element(class: @url).send_keys @site
    find_element(class: @enter).click
  end

  def visualizar_home_site
    wait_for_element(class: @home_site)
  end

  def wait_for_element(atributos)
      begin
          wait = Selenium::WebDriver::Wait.new :timeout => 5
          wait.until { find_element(atributos).displayed? }
      rescue Selenium::WebDriver::Error::TimeOutError => e
        raise "Não encontrou resultado da busca \n #{e.message}"
      end
  end

  # wait_for_click(:id 'xpto')
  def wait_for_click(atributos)
      begin
          wait = Selenium::WebDriver::Wait.new :timeout => 5
          wait { find_element(atributos).click }
      rescue Selenium::WebDriver::Error::TimeOutError => e
          raise "Não consegui efetuar a ação \n #{e.message}"
      end
  end
end
