require 'sinatra'
require 'json'

  # rackup -o 0.0.0.0 -p 3000
  # test with post http://zaphod-136649.nitrousapp.com:3000/bs-bot/ in an app like Postman

  post '/' do
  #return if params[:token] != ENV['SLACK_TOKEN']
    
=begin
    response 'params' include
    - token
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
    
    content_type :json
  {:username => 'bs', :response_type => "in-channel", :text => "RESPONSE TEXT" }.to_json

end
