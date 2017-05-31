class FactoresPrimos

	def buscarFactoresPrimos(numeroIngresado)
	  factoresPrimos = []
	  divisor = 2

	  while divisor <= numeroIngresado
	    
	    while numeroIngresado % divisor == 0
	      factoresPrimos << divisor;
		  numeroIngresado = numeroIngresado / divisor;
		end

		if divisor == 2
		  divisor += 1;
		elseif
		  divisor += 2;
		end

	  end

	  return factoresPrimos
	end
end



