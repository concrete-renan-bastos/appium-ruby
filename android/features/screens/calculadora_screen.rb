# coding: utf-8
# frozen_string_literal: true

class CalculadoraScreen

    def initialize
      @resultado = 'com.android.calculator2:id/formula'
      @dividir = 'com.android.calculator2:id/op_div'
      @multiplicar = 'com.android.calculator2:id/op_mul'
      @subtrair = 'com.android.calculator2:id/op_sub'
      @somar = 'com.android.calculator2:id/op_add'
      @numero = 'com.android.calculator2:id/digit_'
      @calcular = 'com.android.calculator2:id/eq'
    end

    def digitar_cada_item(item)
        item.split('').each do |n|
            selecionar(n)
        end
    end

    def selecionar(elemento)
      case elemento
        when "+" then find_element(id: @somar).click
        when "-" then find_element(id: @subtrair).click
        when "*" then find_element(id: @multiplicar).click
        when "/" then find_element(id: @dividir).click
        else
          find_element(id: @numero + elemento).click
        end
    end

    def calcular
        find_element(id: @calcular).click
    end

    def retornar_resultado
        find_element(id: @resultado).text
    end

  end
