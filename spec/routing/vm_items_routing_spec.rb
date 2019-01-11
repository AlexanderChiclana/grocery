require "rails_helper"

RSpec.describe VmItemsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/vm_items").to route_to("vm_items#index")
    end


    it "routes to #show" do
      expect(:get => "/vm_items/1").to route_to("vm_items#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/vm_items").to route_to("vm_items#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/vm_items/1").to route_to("vm_items#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/vm_items/1").to route_to("vm_items#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/vm_items/1").to route_to("vm_items#destroy", :id => "1")
    end

  end
end
