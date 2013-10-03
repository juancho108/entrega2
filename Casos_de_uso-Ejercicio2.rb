	p1  = Product.new '01', 'Martillo', '50'
	p2  = Product.new '02', 'Clavos x 100', '10'
	p3  = Product.new '02', 'Clavos x 100', '10'
	p4  = Product.new '04', 'Mecha de taladro', '65'
	p5  = Product.new '04', 'Mecha de taladro', '65'
	p6  = Product.new '04', 'Mecha de taladro', '65'
	p7  = Product.new '07', 'Destornillador', '10'
	p8  = Product.new '08', 'Arandela x 20', '2'
	p9  = Product.new '09', 'Tornillo Pasante x 10', '10'
	p10 = Product.new '10', 'Escofina', '45'
	p11 = Product.new '11', 'Maquina de cortar pasto', '365'
	p12 = Product.new '12', 'Bordeadora', '290'
	
	p = Purchase.new
	p.add p6
	p.add p1
	p.add p2
	p.add p3
	p.add p4
	p.add p7
	p.add p8
	p.add p9
	p.add p10
	p.add p5
	p.add p11
	p.add p12



# Si la lista de productos tiene más de 10 productos, se cobra el 20%
p.apply_discount do |purchase|
	total = purchase.total
	if purchase.productos.length > 10
		total -= total *0.2
	end
end

#Si la lista de productos tiene más de 3 productos iguales, cada 3 paga 2
p.apply_discount do |purchase|
	total = purchase.total		
	
	counts = Hash.new(0)
	purchase.productos.each { |prod| counts[prod.codigo] += 1 }
	prices = Hash.new(0)	
	purchase.productos.each { |prod| prices[prod.codigo] = prod.precio.to_i}
	
	counts.each do |code, cant|
	item_price = prices.values_at(code)[0]
	total -= (cant / 3) * item_price
	end
	total
end