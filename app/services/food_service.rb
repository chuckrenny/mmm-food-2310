class FoodService
  def conn
    Faraday.new(url: "https://api.nal.usda.gov/fdc") do |faraday|
      faraday.headers['X-Api-Key'] = Rails.application.credentials.foods[:key]
    end
  end
  
  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end
  
  def search(q)
    get_url("/v1/foods/search?query=#{q}")
  end
end
