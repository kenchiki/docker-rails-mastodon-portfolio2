require "rails_helper"

RSpec.describe My::WebsitesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/my/websites").to route_to("my/websites#index")
    end

    it "routes to #new" do
      expect(:get => "/my/websites/new").to route_to("my/websites#new")
    end

    it "routes to #show" do
      expect(:get => "/my/websites/1").to route_to("my/websites#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/my/websites/1/edit").to route_to("my/websites#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/my/websites").to route_to("my/websites#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/my/websites/1").to route_to("my/websites#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/my/websites/1").to route_to("my/websites#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/my/websites/1").to route_to("my/websites#destroy", :id => "1")
    end
  end
end
