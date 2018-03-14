Dado("que a aplicação está aberta") do
    @flexbox = FlexboxScreen.new
  end


  Quando("incluo um novo retângulo") do
    @flexbox.selecionar("+")
  end

  Então("verifico que possuo {int} retângulos") do |int|
    i = find_element(:id, 'com.google.android.apps.flexbox:id/flexbox_layout').find_elements(:class, 'android.widget.TextView').length
    expect(int).to eq(i)
  end

  Quando("excluo {int} retângulos existentes") do |int|
    for i in 1..int
      @flexbox.selecionar("-")
    end

  end
