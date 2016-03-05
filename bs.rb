require 'sinatra'
require 'json'
require './spew'

  # rackup -o 0.0.0.0 -p 3000
  # test with post http://zaphod-136649.nitrousapp.com:3000/ in an app like Postman

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
    keywords = params[:text].gsub(trigger_word, '').strip

    params = { :paragraphs => 1, :sentences => 2 } #default

    para= keywords.match /para.*?(\d{1,2})/
    sent= keywords.match /sent.*?(\d{1,2})/
    params[:sentences] = sent[1] unless sent.nil?
    params[:paragraphs] = para[1] unless para.nil?

    @bs = Spew.new( params ) # 'Spew new' is fun to say!!
    #@tweet =  Spew.new({:paragraphs => 1, :sentences => 3}).tweet

    content_type :json
  {:username => 'bs', :response_type => "in-channel", :text => "#{@bs.complete_spew.join("\n")}#{SIGLINE}" }.to_json

end
