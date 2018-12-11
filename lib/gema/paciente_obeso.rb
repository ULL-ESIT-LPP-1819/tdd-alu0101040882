#Paciente de una consulta al que se le han calculado los datos antropometrícos
class Paciente_obeso < Paciente

        attr_accessor :imc , :grasa , :rcc, :peso_teorico_ideal_, :gasto_energetico_basal_, :efecto_termogeno_, :factor_actividad_fisica_ , :gasto_energetico_actividad_fisica_ , :gasto_energetico_total_

        def initialize(nombre,edad,genero,peso,talla,sexo,c_cintura,c_cadera)
                super(nombre,edad,genero)

                @imc   = @valoracion.imc(peso,talla)
                @grasa = @valoracion.grasa(sexo,peso,talla)
                @rcc   = @valoracion.rcc(c_cintura,c_cadera)

                @peso = peso
                @talla = talla
                @sexo = sexo
                @c_cintura = c_cintura
                @c_cadera = c_cadera
        end

        #Convierte el Paciente_obeso en una cadena
        def to_s
                @valoracion.to_s
        end


        #Peso teórico ideal
        def peso_teorico_ideal
                @peso_teorico_ideal_ = ((@talla - 1.50) * 0.75 + 50)
        end

        #Gasto energético basal
        def gasto_energetico_basal

                if(@sexo == 0)
                        @gasto_energetico_basal_ = (10*@peso) + ( 6.25*@talla) - (5*@edad)-161
                else
                        @gasto_energetico_basal_ = (10*@peso) + ( 6.25*@talla) - (5*@edad)+5
   		end
        end

        def efecto_termogeno
                @efecto_termogeno_ = @gasto_energetico_basal_ * 0.10
        end


        def factor_actividad_fisica(nivel_actividad)

                case nivel_actividad
                when "Reposo"
                        @factor_de_actividad_fisica_ = 0.0
                when "Actividad ligera"
                        @factor_de_actividad_fisica_ = 0.12
                when "Actividad moderada"
                        @factor_de_actividad_fisica_ = 0.27
                when "Actividad intensa"
                        @factor_de_actividad_fisica_ = 0.54
                else
                        @factor_de_actividad_fisica_ = 0
                end
        end

        def gasto_actividad_fisica
                @gasto_actividad_fisica_ = @gasto_energetico_basal_ * @factor_de_actividad_fisica_
        end

        def gasto_energetico_total
                @gasto_energetico_total_ = @gasto_energetico_basal_ + @efecto_termogeno_ + @gasto_actividad_fisica_
        end
end
