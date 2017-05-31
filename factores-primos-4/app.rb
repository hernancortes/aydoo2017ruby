require 'sinatra'
require_relative './model/factoresPrimos'
require_relative './model/presentador'

get '/primos' do
  buscador = factoresPrimos.new
  presentador = presentador.new
  numeroIngresado = params[:x]
  listaDeFactoresPrimos = buscador.buscarFactoresPrimos(numeroIngresado)
  presentador = presentador.mostrarListadoAscendente
  textoAMostrar = presentador.join(' ')
  body textoAMostrar
end

post '/primos' do
  numeroIngresado = params[:x]
end