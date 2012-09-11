require "gcba-cultural/version"
require "twitter"

module Gcba
  module Cultural
    
    def run
    	@client = Twitter::Client.new(
  			:oauth_token => "75272994-rVRlOAVS2h6zaHZVNXPO2DWV4PMZu7nJA36elkcaS",
  			:oauth_token_secret => "WulUeanuQSKLv7yGmWxk4D1B7NQ10qVLaC7aW3uhZO8"
		)
		@client.update("Testing Twitter API")
    end

  end
end
