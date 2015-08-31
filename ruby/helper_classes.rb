class Tamanho < Hash

	attr_reader :id, :name

	def initialize(tamanho)
		if tamanho == 1
			hsh = {:id => tamanho, :name => "Pequeno"}
		else
			hsh = {:id => tamanho, :name => "Grande"}
		end
		hsh.each do |k,v|
			instance_variable_set("@#{k}", v) unless v.nil?
		end
	end
end

class Cliente_Classe < Hash

	attr_reader :id, :name

	def initialize(classe)
		if classe == 1
			hsh = {:id => classe, :name => "A"}
		else
			hsh = {:id => classe, :name => "B"}
		end
		hsh.each do |k,v|
			instance_variable_set("@#{k}", v) unless v.nil?
		end
	end
end