require 'rails_helper'

RSpec.describe "My::WorkCategories", type: :request do
  describe "GET /my/work_categories" do
    it "works! (now write some real specs)" do
      get my_work_categories_path
      expect(response).to have_http_status(200)
    end
  end
end
