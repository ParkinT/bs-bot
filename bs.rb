require 'sinatra'
require 'json'
require './spew'

  # rackup -o 0.0.0.0 -p 3000
  # test with post http://zaphod-136649.nitrousapp.com:3000/ in an app like Postman
  KEYWORDS = ['bs', 'businessspew', 'business-spew']
  SIGLINE = "\n#BusinessSpew"
  
  category = "corporate" #future

  post '/' do
  #return if params[:token] != ENV['SLACK_TOKEN']
    
=begin
    response 'params' include
    - token 0b58VY5DMiAUCqr8FbnxjwRt
    - team_id
    - team_domain
    - service_id
    - channel_id
    - channel_name
    - timestamp
    - user_id
    - user_name
    - text
    - trigger_word
=end

    trigger_word = params[:trigger_word].strip
    
    @bs = Spew.new() # 'Spew new' is fun to say!!
    #@bs = Spew.new( {"paragraphs" => 1, "sentences" => 3 } )
    @tweet =  Spew.new({"paragraphs" => 1, "sentences" => 3}).tweet
    
    content_type :json
  {:username => 'bs', :response_type => "in-channel", :text => "#{@bs.complete_spew.join("\n")}#{SIGLINE}" }.to_json

end
