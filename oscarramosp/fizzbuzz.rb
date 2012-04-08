class FizzBuzz

  def imprimir_resultados
    for i in (1..100)
      puts obtener_valor_imprimir(i)
    end
  end

  def obtener_valor_imprimir(valor)
    if multiploContieneCinco(valor) == true and multiploContieneTres(valor) == true
      return "FizzBuzz"
    elsif multiploContieneCinco(valor) == true
      return "Buzz"
    elsif multiploContieneTres(valor) == true
      return "Fizz"
    else
      return valor
    end
  end

  def multiploContieneCinco (valor)
    if valor % 5 == 0 or valor.to_s.include? "5"
      return true
    end
  end

  def multiploContieneTres (valor)
    if valor % 3 == 0 or valor.to_s.include? "3"
      return true
    end
  end
end