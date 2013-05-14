class Carro

	attr_reader :classe, :tamanho, :ordemChegada

	def initialize(classe, tamanho, ordemChegada)
		@classe, @tamanho, @ordemChegada = classe, tamanho, ordemChegada
	end

	def trace
		puts "\nCarro " + @ordemChegada.to_s
		puts "Classe " + @classe.name
		puts "Tamanho " + @tamanho.name + "\n"
	end

	include Comparable

	def <=>(anOther)
		# Classe > Tamanho > Ordem de Chegada
		
		if (@classe.id <=> anOther.classe.id) == 0 && (@tamanho.id <=> anOther.tamanho.id) == 0
			@ordemChegada <=> anOther.ordemChegada
		elsif (@classe.id <=> anOther.classe.id) == 0
			@tamanho.id <=> anOther.tamanho.id
		else
			@classe.id <=> anOther.classe.id
		end
	end

	def inspect
		@classe.classe
	end

end