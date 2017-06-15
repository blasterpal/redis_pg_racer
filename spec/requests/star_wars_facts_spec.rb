require 'rails_helper'

RSpec.describe "StarWarsFacts", type: :request do
  describe "GET /star_wars_facts" do
    it "works! (now write some real specs)" do
      get star_wars_facts_path
      expect(response).to have_http_status(200)
    end
  end
end
