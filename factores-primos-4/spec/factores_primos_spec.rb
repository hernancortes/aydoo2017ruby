require 'rspec'
require_relative './model/factores_primos.rb'

describe 'factores_primos' do |
	let (:factores_primos) {
		factores_primos.new
		}
	it 'ingreso numero 2 y su factor primo es 2' do
		factores_obtenidos = factores_primos.buscar_factores_primos(2)
		expect (factores_obtenidos.size).to eq 1
		expect (factores_obtenidos[0]).to eq 2
	
end