# coding: utf-8
# frozen_string_literal: true

class FlexboxScreen

    def initialize
      @adicionar = 'com.google.android.apps.flexbox:id/add_fab'
      @remover = 'com.google.android.apps.flexbox:id/remove_fab'
      @tela = 'com.google.android.apps.flexbox:id/flexbox_layout'
      @elementos = 'android.widget.TextView'

    end

    def selecionar(elemento)
      case elemento
        when "+" then find_element(id: @adicionar).click
        when "-" then find_element(id: @remover).click
      end
    end



end
