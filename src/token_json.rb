require "json"

class TokenJson
  def initialize
    # jsonファイルの指定
    @json_file = File.expand_path('..', 'json/*')
    @json_file += "/token.json"
  end

  def json_array
    File.open(@json_file) do |line|
      json_data = JSON.load(line)
    end
  end
end

# a = Json.new.json_array
