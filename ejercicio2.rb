class Product
	attr_accessor :codigo 
	attr_accessor :nombre
	attr_accessor :precio

	def initialize codigo, nombre, precio
		@codigo = codigo
		@nombre = nombre
		@precio = precio
	end

end

class Purchase
	attr_accessor :productos, :total_descuento

	def initialize
		@productos = []
		@total_descuento = 0

	end

	def add product
		productos.push product
		puts "El producto product.nombre fue agregado a la compra"
	end

	def delete producto
		if productos.delete producto.nil?
			puts "El producto que intento borrar no se encuentra en la orden de compra"
		else
			puts "El producto fue borrado exitosamente"

			
		end
	end

	def total
		productos.collect {|prod| prod.precio.to_i}.inject :+
	end

	def apply_discount
		yield self
	end
end


