class Purchase
	arrt_accessor :productos

def initialize
	@productos = []
end

def add product
	productos.push product
end

def delete
	productos.pop
end

def total
	productos.inject { |sum, prod| sum+= prod.precio  }
end

def apply_discount
	puts "en construccion, falta de tiempo"
end



