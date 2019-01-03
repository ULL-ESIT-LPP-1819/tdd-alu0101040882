class Menu
	
	def initialize(nombre, &block)

		@nombre = nombre

		@desayuno = []
		@almuerzo = []
		@cena = []

		

		if block_given?
			if block.arity == 1
				yield self
			else
				instance_eval(&block)
			end
		end
			
	end


def titulo(name)
	@titulo = name
end

def ingesta(options = {} )

	@min = (options[:min]) if options[:min]
	@max = (options[:max]) if options[:max]
	
end

def valor_energetico_total
	
	@valor_energetico = @desayuno.map{|x| x.kcal}.reduce(:+)
	@valor_energetico += @almuerzo.map{|x| x.kcal}.reduce(:+)
	@valor_energetico += @cena.map{|x| x.kcal}.reduce(:+)

end

def desayuno(descripcion, options = {})

        grasas = options[:grasas] ? options[:grasas] : 0.0
        grasas_s =  options[:grasas_s] ? options[:grasas_s] : 0.0
        hidratos = options[:hidratos] ? options[:hidratos] : 0.0
        azucares = options[:azucares] ? options[:azucares] : 0.0
        proteinas = options[:proteinas] ? options[:proteinas] : 0.0
        sal = options[:sal] ? options[:sal] : 0.0
        grasas_mon = options[:grasas_mon] ? options[:grasas_mon] : 0.0
        grasas_pol = options[:grasas_pol] ? options[:grasas_pol] : 0.0
        polialcoholes = options[:polialcoholes] ? options[:polialcoholes] : 0.0
        almidon = options[:almidon] ? options[:almidon] : 0.0
        fibra = options[:fibra] ? options[:fibra] : 0.0
        vitaminas = options[:vitaminas] ? options[:vitaminas] : 0.0
        minerales = options[:minerales] ? options[:minerales] : 0.0

        etiqueta = Etiqueta_nut.new(descripcion, grasas , grasas_s , hidratos , azucares , proteinas , sal , grasas_mon , grasas_pol , polialcoholes , almidon , fibra , vitaminas , minerales)
        etiqueta.valor_energetico()


	@desayuno << etiqueta
end


def almuerzo(descripcion ,options = {})


        grasas = options[:grasas] ? options[:grasas] : 0.0
        grasas_s =  options[:grasas_s] ? options[:grasas_s] : 0.0
        hidratos = options[:hidratos] ? options[:hidratos] : 0.0
        azucares = options[:azucares] ? options[:azucares] : 0.0
        proteinas = options[:proteinas] ? options[:proteinas] : 0.0
        sal = options[:sal] ? options[:sal] : 0.0
        grasas_mon = options[:grasas_mon] ? options[:grasas_mon] : 0.0
        grasas_pol = options[:grasas_pol] ? options[:grasas_pol] : 0.0
        polialcoholes = options[:polialcoholes] ? options[:polialcoholes] : 0.0
        almidon = options[:almidon] ? options[:almidon] : 0.0
        fibra = options[:fibra] ? options[:fibra] : 0.0
        vitaminas = options[:vitaminas] ? options[:vitaminas] : 0.0
        minerales = options[:minerales] ? options[:minerales] : 0.0

        etiqueta = Etiqueta_nut.new(descripcion, grasas , grasas_s , hidratos , azucares , proteinas , sal , grasas_mon , grasas_pol , polialcoholes , almidon , fibra , vitaminas , minerales)
        etiqueta.valor_energetico()


        @almuerzo << etiqueta

end

def cena(descripcion ,options = {})


        grasas = options[:grasas] ? options[:grasas] : 0.0
        grasas_s =  options[:grasas_s] ? options[:grasas_s] : 0.0
        hidratos = options[:hidratos] ? options[:hidratos] : 0.0
	azucares = options[:azucares] ? options[:azucares] : 0.0
	proteinas = options[:proteinas] ? options[:proteinas] : 0.0
	sal = options[:sal] ? options[:sal] : 0.0
	grasas_mon = options[:grasas_mon] ? options[:grasas_mon] : 0.0
	grasas_pol = options[:grasas_pol] ? options[:grasas_pol] : 0.0
	polialcoholes = options[:polialcoholes] ? options[:polialcoholes] : 0.0
	almidon = options[:almidon] ? options[:almidon] : 0.0
	fibra = options[:fibra] ? options[:fibra] : 0.0
	vitaminas = options[:vitaminas] ? options[:vitaminas] : 0.0
	minerales = options[:minerales] ? options[:minerales] : 0.0

	etiqueta = Etiqueta_nut.new(descripcion, grasas , grasas_s , hidratos , azucares , proteinas , sal , grasas_mon , grasas_pol , polialcoholes , almidon , fibra , vitaminas , minerales)
	etiqueta.valor_energetico()        

        @cena << etiqueta

end


def to_s
	aux = "#{' ' * 24 }" 

	output = @nombre

	output << "                    Composición nutricional"
	output << "\n#{'=' * 150}\n\n"
	output << "#{aux}grasas\thidratos\tazucares\tproteinas\tsal\tpolialcoholes\talmidon\tfibra\tvitaminas\tminerales\tvalor energetico\n"
	output << "Desayuno\n"
	output << @desayuno.join
	output << "\nAlmuerzo\n"
        output << @almuerzo.join
	output << "\nCena\n"
        output << @cena.join
	output << "\n#{'=' * 150}\n\n"
	output << "Valor energético total:  #{valor_energetico_total}\t Ingesta mix: #{@min}\tIngesta max: #{@max}"
	
end
end

@menu = Menu.new("Lunes") do
	titulo "Bajo en calorias"

	ingesta :min => 30, :max => 35

	desayuno "Pan de trigo integral",
		:porcion => "1 rodaja",
		:gramos => 100,
		:grasas => 3.3,
		:hidratos => 54.0,
		:proteinas => 11.0,
		:fibra => 2.3,
		:sal => 0.06

	desayuno "Actimel",
		:porcion => "1 porcion",
		:gramos => 100,
		:grasas => 3.4,
		:hidratos => 4.4,
		:proteinas => 3.6,
		:sal => 0.05

	almuerzo "Arroz",
		:porcion => "1 taza",
		:gramos => 100,
		:grasas => 0.9,
		:hidratos => 81.6,
		:proteinas => 6.67,
		:fibra => 1.4,
		:sal => 0.04

	almuerzo  "Lentejas",
		:porcion => "1/2 cuchar´on",
		:grasas => 0.4,
		:hidratos => 20.0,
		:proteinas => 9.0,
		:fibra => 8.0,
		:sal => 0.02

	almuerzo "Naranja",
		:porcion => "1 pieza",
		:gramos => 100,
		:grasas => 0.12,
		:hidratos => 11.75,
		:proteinas => 0.94,
		:fibra => 2.4

	cena    "Leche entera hacendado",
		:porcion => "1 vaso",
		:gramos => 100,
		:grasas => 3.6,
		:hidratos => 4.6,
		:proteinas => 3.1,
		:sal => 0.13

end


puts @menu.to_s
