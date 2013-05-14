#!/usr/bin/ruby
# encoding: UTF-8
$LOAD_PATH << '.' 

require 'fila'
require 'carro'
require 'helper_classes'

$fila = Fila.new

def incluir
	puts "\nQual o classe do Cliente?"
	puts "1 - Classe A"
	puts "2 - Classe B"
	print ">> "
	classe = gets.chomp.to_i

	case classe
	when 1..2
		@classe = Cliente_Classe.new(classe)
	else
		puts "Escolha por favor a classe correta."
	end

	puts "Carro PEQUENO ou GRANDE?"
	puts "1 - PEQUENO"
	puts "2 - GRANDE"
	print ">> "
	tamanho = gets.chomp.to_i
	
	case tamanho
	when 1..2
		@tamanho = Tamanho.new(tamanho)
	else
		puts "Escolha por favor a classe correta."
	end

	carro = Carro.new(@classe, @tamanho, $fila.count + 1)
	$fila.add(carro)
end

@continuar = true
while @continuar
	puts "\nO que deseja fazer?"
	puts "1 - Adicionar carro"
	puts "2 - Listar carros"
	puts "3 - Fechar programa"
	print ">> "
	op = gets.chomp.to_i
	case op
	when 1
		incluir()
	when 2
		$fila.listar
	when 3
		@continuar = false
	else
		puts "Escolha por favor a opcao correta"
	end
end
