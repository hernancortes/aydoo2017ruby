require 'sinatra'
require_relative './model/factores_primos.rb'
require_relative './model/presentador.rb'

get '/primos' do
  parametros = params[:x]
  if parametros.match(/^(\d)+$/)
  	numero_ingresado = parametros.to_i
  	buscador = Factores_primos.new
  	presentador = Presentador.new

  	lista_de_factores_primos = buscador.buscar_factores_primos(numero_ingresado.to_i)
  	presentador = presentador.mostrar_listado_descendente(lista_de_factores_primos)
  	texto_a_mostrar = presentador.join(', ')
  	body texto_a_mostrar
  else
  	status 400
  	body "400 Bad Request"
  end
end

post '/primos' do
  parametros = params[:x]
  if parametros.match(/^(\d)+$/)
  	numero_ingresado = parametros.to_i
  	buscador = Factores_primos.new
  	presentador = Presentador.new

  	lista_de_factores_primos = buscador.buscar_factores_primos(numero_ingresado.to_i)
  	presentador = presentador.mostrar_listado_ascendente(lista_de_factores_primos)
  	texto_a_mostrar = presentador.join(', ')
  	body texto_a_mostrar
  else
  	status 400
  	body "400 Bad Request"
  end

end