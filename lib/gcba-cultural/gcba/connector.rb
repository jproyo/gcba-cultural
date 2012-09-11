require "rest_client"
require "nori"
require "singleton"

module Gcba
	module Cultural
		class GcbaConnector
			include Singleton
			
			def initialize
				Nori.configure do |config|
  					config.convert_tags_to { |tag| tag.to_sym }
				end
			end

			def get_events
				url = "http://agendacultural.buenosaires.gob.ar/webservice/response/client.php"
				params = {
					:params => {
						:Method => "GetEventosListFiltered",
						:IdEvento => nil, 
						:IdEstadoEvento => nil, 
						:Titulo => nil,
						:Resumen => nil,
						:Descripcion => nil,
						:FechaInicioFrom => nil,
						:FechaInicioTo => "2012-09-11",
						:FechaFinFrom => nil,
						:FechaFinTo => "2012-09-11",
						:FechaPublicacionDesdeFrom => nil,
						:FechaPublicacionDesdeTo => nil,
						:FechaPublicacionHastaFrom => nil,
						:FechaPublicacionHastaTo => nil,
						:FechaProximoEventoDesdeFrom => nil,
						:FechaProximoEventoDesdeTo => nil,
						:FechaProximoEventoHastaFrom => nil,
						:FechaProximoEventoHastaTo => nil,
						:DestacadoHome => nil,
						:MarcaProximosEventos => nil,
						:Imagen => nil,
						:AlbumFlickr => nil,
						:Facebook => nil,
						:Youtube => nil,
						:Twitter => nil,
						:IdEventoPadre => nil,
						:IdEventosRelacionados => nil,
						:Hora => nil,
						:Minutos => nil,
						:IdTipoEvento => nil,
						:DestacadoBoxPrimario => nil,
						:Latitud => "51.503307",
						:Longitud => "-0.127711",
						:OrdenarPor => "Titulo",
						:Orden => "ASC",
						:Limit => nil,
						:Offset => "0",
					}
					
				}
				result = RestClient.get url, params
				Nori.parse(result)
			end
		end
	end
end