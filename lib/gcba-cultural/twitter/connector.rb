require "twitter"
require "singleton"

module Gcba
  module Cultural

  	class TwitterConnector
  		include Singleton

  		def initialize
	    	@client = Twitter::Client.new(
	    		:consumer_key => "1y20qLCUldIzzF9kN2rU1A",
					:consumer_secret => "0LO3XI3HQU9OHPii0VMglIL0VH8nGuZ4qQNF90UNI",
	  			:oauth_token => "75272994-rVRlOAVS2h6zaHZVNXPO2DWV4PMZu7nJA36elkcaS",
	  			:oauth_token_secret => "WulUeanuQSKLv7yGmWxk4D1B7NQ10qVLaC7aW3uhZO8"
			)
  		end

  		def send_event(msg)
			@client.update(msg)
  		end
  	end

  end
end