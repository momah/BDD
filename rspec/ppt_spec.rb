require 'ppt'

describe PiedraPapelTijera do
      
	before :each do
        	@ppt = PiedraPapelTijera.new
	end
	
	it "Debe existir una tirada para el humano" do
		@ppt.h.should == :piedra
	end

	it "Debe existir una tirada para la maquina" do
		@ppt.c.should == :papel
	end

	it "Debe existir una lista de tiradas validas" do
		@piesas.length.should == 3
	end

	it "Debe existir una lista de jugadas posibles y quien gana" do
		@gana['piedra'].should == 'papel'
		@gana['papel'].should == 'tijera'
		@gana['tijera'].should == 'piedra'
	end

	it "Se debe invocar al método obtener_humano() para recoger la tirada del humano y que esta sea válida" do
		@ppt.jugadaHumano.should != {}
	end

	it "Se debe invocar al método obtener_maquina() para recoger la tirada de la maquina y que esta sea válida" do
		@ppt.jugadaComputadora.should != {}
	end

	it "Debe existir una lista de resultados de un juego desde el punto de vista de la maquina" do
		@jugadas ['piedra'].should != 0
		@jugadas ['papel'].should != 0
		@jugadas ['tijera'].should != 0
	end

	it "Debe existir un resultado para un juego, desde el punto de vista de la maquina" do
		@ppt.jugadaComputadora.should != nil
	end

	it "Se debe invocar al método jugar() para determinar el ganador de la tirada" do	
		@ppt.Play.should != {}
	end

	it "Se debe de comprobar que las tiradas de la maquina al ser aleatorias recorren las tres posibilidades" do

		@jugadas = []
		60.times do {  
			@jugadas  << @ppt.jugadaComputadora
		}
		@jugadas.include?('piedra').should == true
		@jugadas.include?('papel').should == true
		@jugadas.include?('tijera').should == true

	end

	it "Se debe comprobar que las tiradas de la maquina y del humano no son siempre la misma" do

	@jugadas_h = []
	@jugadas_c = []

	60.times do {  
		jugadas_h << @ppt.jugadaHumano
		jugadas_c << @ppt.jugadaComputadora
	}
	
	@jugadas_h.uniq.should == 3
	@jugadas_c.uniq.should == 3
	@jugadas_h.should != @jugadas_c

	end
end




