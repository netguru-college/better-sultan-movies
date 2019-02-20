require "open-uri"

class GetSpecificBeer
  SPECIFIC_BEER_URI = "https://api.punkapi.com/v2/beers?beer_name="

  def initialize(search_phrase)
    @search_phrase = search_phrase
  end

  def call
    specific_beer_uri = SPECIFIC_BEER_URI + @search_phrase
    URI.parse(specific_beer_uri).read
  end
end
