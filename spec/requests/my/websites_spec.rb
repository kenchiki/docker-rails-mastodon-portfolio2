require 'rails_helper'

RSpec.describe "My::Websites", type: :request do
  describe "GET /my/websites" do
    it "works! (now write some real specs)" do
      get my_websites_path
      expect(response).to have_http_status(200)
    end
  end
end
