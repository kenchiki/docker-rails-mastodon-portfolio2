require "rails_helper"

RSpec.describe My::WorksController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/my/works").to route_to("my/works#index")
    end

    it "routes to #new" do
      expect(:get => "/my/works/new").to route_to("my/works#new")
    end

    it "routes to #show" do
      expect(:get => "/my/works/1").to route_to("my/works#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/my/works/1/edit").to route_to("my/works#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/my/works").to route_to("my/works#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/my/works/1").to route_to("my/works#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/my/works/1").to route_to("my/works#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/my/works/1").to route_to("my/works#destroy", :id => "1")
    end
  end
end
