require 'rspec'
require_relative '../model/presentador'

describe 'Presentador' do

	let (:presentador) { Presentador.new }

	it 'ingreso [2,1,3] y pido orden ascendente, debe devolver [1,2,3]' do
		lista_test = Array.new
		lista_test = [2,1,3]
		factores_ordenados = presentador.mostrar_listado_ascendente(lista_test)
		expect(factores_ordenados.size).to eq 3
		expect(factores_ordenados).to eq [1,2,3]
	end

	it 'ingreso [2,1,3] y pido orden desscendente, debe devolver [3,2,1]' do
		lista_test = Array.new
		lista_test = [2,1,3]
		factores_ordenados = presentador.mostrar_listado_descendente(lista_test)
		expect(factores_ordenados.size).to eq 3
		expect(factores_ordenados).to eq [3,2,1]
	end

end