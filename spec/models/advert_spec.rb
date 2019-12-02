require "rails_helper"

RSpec.describe Advert, type: :model do
  describe "Database table" do
    it { is_expected.to have_db_column :id }
    it { is_expected.to have_db_column :title }
    it { is_expected.to have_db_column :description }
    it { is_expected.to have_db_column :price }
  end

  it "has a valid factory" do
    expect(create(:advert)).to be_valid
  end
end
