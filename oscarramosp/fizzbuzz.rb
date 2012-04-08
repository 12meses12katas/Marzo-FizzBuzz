class FizzBuzz

  def imprimir_resultados
    for i in (1..100)
      puts obtener_valor_imprimir(i)
    end
  end

  def obtener_valor_imprimir(valor)
    if multiploCinco(valor) == true and multiploTres(valor) == true
      return "FizzBuzz"
    elsif multiploCinco(valor) == true
      return "Buzz"
    elsif multiploTres(valor) == true
      return "Fizz"
    else
      return valor
    end
  end

  def multiploCinco (valor)
    if valor % 5 == 0
      return true
    end
  end

  def multiploTres (valor)
    if valor % 3 == 0
      return true
    end
  end
end