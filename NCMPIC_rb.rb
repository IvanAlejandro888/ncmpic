# codification : utf8

class Main
	def initialize()
	end
	def main()
		system "cls"
		puts "Bienvenido a NCMPIC version Ruby"
		puts "Una creación de : Ivan Alejandro Avalos Díaz"
		puts "-"
		puts "( ! ) Caracteres soportados: a-z A-Z .,:;?¿!¡ (No acentos ni simbolos, excepto ñ)"
		puts "( ! ) Oculta el acceso directo a esta aplicación de tu menu de aplicaciones"
		puts "-"
		puts "( ! ) Para copiar selecciona el texto y haz click derecho, y para pegar solo haz click derecho"
		puts "--------------------------------"
		o = ''
		while o!='s' do
			puts "MENÚ:"
			puts "	c - Codificar"
			puts "	d - Decodificar"
			puts "	l - Limpiar"
			puts "	h - Ayuda"
			puts "	s - Salir"
			print "OPCION : "
			o = gets.chomp
			case o
				when 'c' then
					cod = Codificador.new()
					puts "--------"
					print "TEXTO : "
					cod.codificar(gets.chomp)
					puts "--------"
				when 'd' then
					decod = Decodificador.new()
					puts "--------"
					print "TEXTO : "
					decod.decodificar(gets.chomp)
					puts "--------"
				when 'h' then
					system "cls"
					puts "AYUDA:"
					puts "( ! ) Caracteres soportados: a-z A-Z .,:;?¿!¡ (No acentos ni simbolos, excepto ñ)"
					puts "( ! ) Oculta el acceso directo a esta aplicación de tu menu de aplicaciones"
					puts "-"
					puts "( ! ) Para copiar selecciona el texto y haz click derecho, y para pegar solo haz click derecho"
					puts "--------------------------------"
					puts ""
				when 'l' then
					system "cls"
				when 's' then
					system "cls"
					puts "Adios"
				else
					system "cls"
					puts "Opcion incorrecta"
					puts "--------"
			end
		end
	end
end

class Codificador
	def initialize()
	end
	def codificar(txt)
		s = txt.downcase.split(//)
		f = ""
		n = 0
		for i in s
			case i
				when 'a' then f << (n+1).to_s
				when 'b' then f << (n+2).to_s
				when 'c' then f << (n+3).to_s
				when 'd' then f << (n+4).to_s
				when 'e' then f << (n+5).to_s
				when 'f' then f << (n+6).to_s
				when 'g' then f << (n+7).to_s
				when 'h' then f << (n+8).to_s
				when 'i' then f << (n+9).to_s
				when 'j' then f << (n+10).to_s
				when 'k' then f << (n+11).to_s
				when 'l' then f << (n+12).to_s
				when 'm' then f << (n+13).to_s
				when 'n' then f << (n+14).to_s
				when 'ñ' then f << (n+15).to_s
				when 'o' then f << (n+16).to_s
				when 'p' then f << (n+17).to_s
				when 'q' then f << (n+18).to_s
				when 'r' then f << (n+19).to_s
				when 's' then f << (n+20).to_s
				when 't' then f << (n+21).to_s
				when 'u' then f << (n+22).to_s
				when 'v' then f << (n+23).to_s
				when 'w' then f << (n+24).to_s
				when 'x' then f << (n+25).to_s
				when 'y' then f << (n+26).to_s
				when 'z' then f << (n+27).to_s
				when ' ' then f << (n+28).to_s
				when '.' then f << (n+29).to_s
				when ',' then f << (n+30).to_s
				when ':' then f << (n+31).to_s
				when ';' then f << (n+32).to_s
				when '?' then f << (n+33).to_s
				when '¿' then f << (n+34).to_s
				when '¡' then f << (n+35).to_s
				when '!' then f << (n+36).to_s
				else f << (-1).to_s
			end
			n+=1
			f << " "
		end
		system "cls"
		puts "--> #{f}"
	end
end

class Decodificador
	def initialize()
	end
	def decodificar(txt)
		s = txt.split(/ /)
		f = ""
		n = 0
		for i in s
			case i.to_i
				when 1+n then f << "a"
				when 2+n then f << "b"
				when 3+n then f << "c"
				when 4+n then f << "d"
				when 5+n then f << "e"
				when 6+n then f << "f"
				when 7+n then f << "g"
				when 8+n then f << "h"
				when 9+n then f << "i"
				when 10+n then f << "j"
				when 11+n then f << "k"
				when 12+n then f << "l"
				when 13+n then f << "m"
				when 14+n then f << "n"
				when 15+n then f << "ñ"
				when 16+n then f << "o"
				when 17+n then f << "p"
				when 18+n then f << "q"
				when 19+n then f << "r"
				when 20+n then f << "s"
				when 21+n then f << "t"
				when 22+n then f << "u"
				when 23+n then f << "v"
				when 24+n then f << "w"
				when 25+n then f << "x"
				when 26+n then f << "y"
				when 27+n then f << "z"
				when 28+n then f << " "
				when 29+n then f << "."
				when 30+n then f << ","
				when 31+n then f << ":"
				when 32+n then f << ";"
				when 33+n then f << "?"
				when 34+n then f << "¿"
				when 35+n then f << "¡"
				when 36+n then f << "!"
				when -1 then f << "¾"
			end
			n+=1
		end
		system "cls"
		puts "--> #{f}"
	end
end

obj = Main.new
obj.main()
