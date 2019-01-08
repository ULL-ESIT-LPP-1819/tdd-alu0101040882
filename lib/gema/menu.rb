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

	puts self			
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

	output = @nombre
	output << "                    Composición nutricional"
	output << "\n#{'=' * 170}\n\n"
	output << "#{' ' * 24}grasas\thidratos\tazucares\tproteinas\tsal\tpolialcoholes\talmidon\tfibra\tvitaminas\tminerales\tvalor energetico\n"
	output << "Desayuno\n"
	output << @desayuno.join("\n")
	output << "\n\nAlmuerzo\n"
        output << @almuerzo.join("\n")
	output << "\n\nCena\n"
        output << @cena.join("\n")
	output << "\n\n#{'=' * 170}\n\n"
	output << "Valor energético total:  #{valor_energetico_total}\t Ingesta mix: #{@min}\tIngesta max: #{@max}"
	
end
end
