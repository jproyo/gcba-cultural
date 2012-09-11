require "gcba-cultural/version"
require "gcba-cultural/twitter/connector"
require "gcba-cultural/gcba/connector"

module Gcba
  module Cultural
    class Runner
	    class << self 
		    def run
		    	result = GcbaConnector.instance.get_events
		    	result[:Items][:Item].each { |i| p "Titulo: #{i[:Titulo]} - Fecha Inicio #{i[:FechaInicio]} - Fecha Fin #{i[:FechaFin]}"}
		    	#TwitterConnector.instance.send_event("Twitter Test API")
		    end
		end
	end

  end
end
