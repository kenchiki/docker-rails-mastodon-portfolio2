require "rails_helper"

RSpec.describe My::WorkCategoriesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/my/work_categories").to route_to("my/work_categories#index")
    end

    it "routes to #new" do
      expect(:get => "/my/work_categories/new").to route_to("my/work_categories#new")
    end

    it "routes to #show" do
      expect(:get => "/my/work_categories/1").to route_to("my/work_categories#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/my/work_categories/1/edit").to route_to("my/work_categories#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/my/work_categories").to route_to("my/work_categories#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/my/work_categories/1").to route_to("my/work_categories#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/my/work_categories/1").to route_to("my/work_categories#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/my/work_categories/1").to route_to("my/work_categories#destroy", :id => "1")
    end
  end
end
