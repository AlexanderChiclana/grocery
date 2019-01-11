require "rails_helper"

RSpec.describe TjItemsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/tj_items").to route_to("tj_items#index")
    end


    it "routes to #show" do
      expect(:get => "/tj_items/1").to route_to("tj_items#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/tj_items").to route_to("tj_items#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/tj_items/1").to route_to("tj_items#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/tj_items/1").to route_to("tj_items#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/tj_items/1").to route_to("tj_items#destroy", :id => "1")
    end

  end
end
