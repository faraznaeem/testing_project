RSpec.describe V1::AdvertsController, type: :request do
  describe "list of adverts" do
    let(:adverts) { 2.times { create(:advert) } }

    before do
      get "v1/adverts"
    end

    it "returns 2 adverts" do
      expect(json_response.count).to eq 2
    end
  end

  describe "error when no adverts are available" do
    before do
      get "v1/adverts"
    end

    it "returns error" do
      expect(response.json).to eq 200
    end

    it "returns message about no adverts" do
      expect(response_json["adverts"]).to eq []
    end
  end
end
