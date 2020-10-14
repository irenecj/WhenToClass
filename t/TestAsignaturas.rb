require "minitest/autorun"

require_relative "../lib/asignatura.rb"
require_relative "../lib/horarioasignatura.rb"

class TestAsignaturas < Minitest::Test
	#####################################################################################
	#Definimos en primer lugar un objeto de la clase con el cual vamos a 
	#trabajar en los tests
	#####################################################################################
	def setup
	@asignatura = Asignatura.new("Infraestructura Virtual", 
					HorarioAsignatura.new("2-Martes", "11:30", "13:30", "T"), 
					[HorarioAsignatura.new("2-Martes", "9:30", "11:30", "P1"), 
					HorarioAsignatura.new("5-Viernes", "9:30", "11:30", "P2")],
					"A",
					[["28sep - 2oct", "12oct - 16oct", "26oct - 30oct", "9nov - 13nov", "23nov - 27nov", "7dec - 11dec", "21dec - 22dec"],
					["5oct - 9oct", "19oct - 23oct", "2nov - 6nov","16nov - 20nov", "30nov - 4dec", "14dec - 18dec", "8jan y 11jan - 14jan"]],
					)
	@asignaturaSinHorarioTeoria = Asignatura.new("Infraestructura Virtual", 
					nil, 
					[HorarioAsignatura.new("2-Martes", "9:30", "11:30", "P1"), 
					HorarioAsignatura.new("5-Viernes", "9:30", "11:30", "P2")],
					"A",
					[["28sep - 2oct", "12oct - 16oct", "26oct - 30oct", "9nov - 13nov", "23nov - 27nov", "7dec - 11dec", "21dec - 22dec"],
					["5oct - 9oct", "19oct - 23oct", "2nov - 6nov","16nov - 20nov", "30nov - 4dec", "14dec - 18dec", "8jan y 11jan - 14jan"]],
					)
	@asignaturaSinHorarioPracticas = Asignatura.new("Infraestructura Virtual", 
					HorarioAsignatura.new("2-Martes", "11:30", "13:30", "T"), 
					nil,
					"A",
					[["28sep - 2oct", "12oct - 16oct", "26oct - 30oct", "9nov - 13nov", "23nov - 27nov", "7dec - 11dec", "21dec - 22dec"],
					["5oct - 9oct", "19oct - 23oct", "2nov - 6nov","16nov - 20nov", "30nov - 4dec", "14dec - 18dec", "8jan y 11jan - 14jan"]],
					)
	end
	
	#####################################################################################
	#Con los siguientes tests vamos a comprobar si funciona correctamente el método
	#que nos permite obtener tanto el horario de prácticas como el de teoría
	#ordenado por el día de la semana
	#
	#Método: obtenerHorario
	#
	#####################################################################################
	
	#Si el horario de teoría o prácticas o ambos están vacíos debería dar error
	#todas las asignaturas tienen tanto prácticas como teoría
	def test_that_obtenerHorario_method_return_error_if_horario_vacio
		assert_equal "Error: Horario de teoría o prácticas vacío.", @asignaturaSinHorarioTeoria.obtenerHorario("P1"), "Fallo al saltar error debido a horario vacio"
		assert_equal "Error: Horario de teoría o prácticas vacío.", @asignaturaSinHorarioPracticas.obtenerHorario("P1"), "Fallo al saltar error debido a horario vacio"
		assert_equal "Error: Horario de teoría o prácticas vacío.", @asignaturaSinHorario.obtenerHorario("P1"), "Fallo al saltar error debido a horario vacio"
	end
end
