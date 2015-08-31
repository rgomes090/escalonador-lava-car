class Fila < Array

	def listar
		self.each { |c| c.trace }
	end

	def add(carro)
		self.push(carro)
		self.sort!
	end

end