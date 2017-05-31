require 'rspec'
require_relative '../model/factores_primos'

describe 'Factores_primos' do

	let (:factores_primos) { Factores_primos.new }

	it 'ingreso numero 2 y su factor primo es 2' do
		factores_obtenidos = factores_primos.buscar_factores_primos(2)
		expect(factores_obtenidos.size).to eq 1
		expect(factores_obtenidos[0]).to eq 2
	end

	it 'ingreso numero 3 y su factor primo es 3' do
		factores_obtenidos = factores_primos.buscar_factores_primos(3)
		expect(factores_obtenidos.size).to eq 1
		expect(factores_obtenidos[0]).to eq 3
	end

	it 'ingreso numero 360 y sus factores primos son 2,2,2,3,3,5' do
		factores_obtenidos = factores_primos.buscar_factores_primos(360)
		expect(factores_obtenidos.size).to eq 6
		expect(factores_obtenidos).to eq [2,2,2,3,3,5]
	end

end