Dado(/^que a calculadora está aberta$/) do
  @calculadora = CalculadoraScreen.new
  end

Quando(/^realizo a operação "([^"]*)" "([^"]*)" "([^"]*)"$/) do |numero_1, operacao, numero_2|
  @calculadora.digitar_cada_item(numero_1)
  @calculadora.selecionar(operacao)
  @calculadora.digitar_cada_item(numero_2)
  @calculadora.calcular
  end

Quando(/^realizo a fórmula "([^"]*)"$/) do |formula|
  @calculadora.digitar_cada_item(formula)
  @calculadora.calcular
  end

Então(/^vejo que o resultado deu "([^"]*)"$/) do |resultado|
  expect(@calculadora.retornar_resultado).to eq(resultado)
  end
