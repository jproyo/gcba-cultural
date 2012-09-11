require "gcba-cultural/version"
require "gcba-cultural/twitter/connector"

module Gcba
  module Cultural
    class Runner
	    class << self 
		    def run
		    	TwitterConnector.instance.send_event("Twitter Test API")
		    end
		end
	end

  end
end
