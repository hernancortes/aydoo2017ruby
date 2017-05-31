require 'rspec'
require_relative './model/factoresPrimos'

describe 'factoresPrimos' do |
	let (:factoresPrimos) {
		factoresPrimos.new
		}
	it 'ingreso numero 2 y su factor primo es 2' do
		factoresObtenidos = factoresPrimos.buscarFactoresPrimos(2)
		expect (factoresObtenidos.size).to eq 1
		expect (factoresObtenidos[0]).to eq 2
	
end