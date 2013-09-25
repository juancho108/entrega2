module Caminar
	def caminar
		puts "camino"
	end
end

module Nadar
	def nadar
		puts "nado"
	end
end

module Volar
	def volar
		puts "vuelo"
	end
end



###################################################################
class Mamifero
	include Caminar
	include Nadar

class Hombre < Mamifero
	def hablar
		puts "hablo"
	end
end

class Perro < Mamifero
	def ladrar
		puts "guau"
	end

	def nadar
		puts "no se nadar"
	end
end

class Ballena < Mamifero
	def caminar
		puts "no se caminar"
	end
end



class Aves
	include Caminar

class Aguila < Aves
		include Volar
end

class Pinguino < Aves
	include Nadar
end



class Reptiles
	def desplazar
		puts "me desplazo"
	end
end

class Cocodrilo < Reptiles
	include Nadar
	include Caminar

	def desplazar
		puts "no se desplazarme, yo se caminar amigo"
	end
end

class Boa < Reptiles
	def constriccionar
		puts "te constricciono"
	end
end

class Cobra < Reptiles
	def morder
		puts "muerdo"
	end
end



class Anfibios
	include Nadar
end

class Sapo < Anfibios
	include Nadar
end


class Peces
	include Nadar
end

class Tiburon < Peces
end