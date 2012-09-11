require "twitter"
require "singleton"

module Gcba
  module Cultural

  	class TwitterConnector
  		include Singleton

  		def initialize
	    	@client = Twitter::Client.new(
	    		:consumer_key => "TO_BE_COMPLETED",
					:consumer_secret => "TO_BE_COMPLETED",
	  			:oauth_token => "TO_BE_COMPLETED",
	  			:oauth_token_secret => "TO_BE_COMPLETED"
			)
  		end

  		def send_event(msg)
			@client.update(msg)
  		end
  	end

  end
end