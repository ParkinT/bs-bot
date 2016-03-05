class Spew

  require 'uri'
  require 'redis'
  require './punctuation'

  SPACE = " "

  attr_reader :paragraphs, :title, :tweetified, :category

  def initialize(params={})
    uri = URI.parse(ENV["REDIS_URL"])
    # testing: uri = URI.parse('URL_FROM_HEROKU_DASHBOARD')
    @redis = Redis.new(:host => uri.host, :port => uri.port, :password => uri.password)

    @category = params.fetch("category", "corporate")
    @title ||= params[:title]
    repeat_count = params.fetch(:paragraphs, 1).to_i
    num_sentences = params.fetch(:sentences, 1).to_i
    @paragraphs = Array.new
    (1..repeat_count).each do |r|
      sentences = Array.new
      (1..num_sentences).each do
        sentences.push smart_punctuation(generate_sentence)
      end
      @paragraphs.push sentences.join("\n")
    end
    @paragraphs
  end

  def complete_spew
    @paragraphs
  end

  def tweet
	sentence_length = 140
	while sentence_length > (140 - "\n#BusinessSpew".length)
		@tweetified = smart_punctuation(generate_sentence)
		sentence_length = tweetified.length
	end
	@tweetified += "\n#BusinessSpew"
  end

private
  def generate_sentence
    category ||= 'corporate'

    max = Hash.new()
    max[:prefixes] = (@redis.get "#{category}:prefixes:counter").to_i
    max[:verbs] = (@redis.get "#{category}:verbs:counter").to_i
    max[:connectors] = (@redis.get "#{category}:connectors:counter").to_i
    max[:adjectives] = (@redis.get "#{category}:adjectives:counter").to_i
    max[:nouns] = (@redis.get "#{category}:nouns:counter").to_i
    fragments = Array.new

    fragments = @redis.mget "#{category}:prefixes:#{rand(max[:prefixes])}",
                           "#{category}:verbs:#{rand(max[:verbs])}"
    fragments.push @redis.mget "#{category}:connectors:#{rand(max[:connectors])}" if (rand(12) % 2)  #randomize the presence of a connector
    fragments.push @redis.mget "#{category}:adjectives:#{rand(max[:adjectives])}",
                           "#{category}:nouns:#{rand(max[:nouns])}"
    fragments.join(SPACE)
  end

  def smart_punctuation(phrase)
	# It is NOT a mistake that "Where" includes a space.  This is to prevent a false hit on "Whereas" and "Wherein" for the 'Legal' category
    	/(Can|Will|When|How|Do you|Do they|Does|Do we|What|Who|Where |Why|Should)/ =~ phrase
	match_data = Regexp.last_match
	phrase + ((match_data) ? "?" : Punctuation.random)
  end

end
