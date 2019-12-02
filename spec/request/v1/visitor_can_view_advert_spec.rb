RSpec.describe V1::AdvertsController, type: :request do
  describe "list of adverts" do
    let!(:adverts) { 2.times { FactoryBot.create(:advert) } }

    before do
      get "/v1/adverts"
    end

    it "returns 2 adverts" do
      expect(response_json.count).to eq 2

    end
  end

  describe "error when no adverts are available" do
    before do
      get "/v1/adverts"
    end

    it "returns error" do
      #binding.pry
      expect(response.status).to eq 200
    end

    it "returns message about no adverts" do
      expect(response_json['error_message']).to eq 'No ads at the moment'
    end
  end
end
