class Factores_primos

	def buscar_factores_primos(numero_ingresado)
	  factores_primos = []
	  divisor = 2

	  while divisor <= numero_ingresado
	    
	    while numero_ingresado % divisor == 0
	      factores_primos << divisor;
		  numero_ingresado = numero_ingresado / divisor;
		end

		if divisor == 2
		  divisor += 1;
		else
		  divisor += 2;
		end

	  end

	  return factores_primos
	end

end



