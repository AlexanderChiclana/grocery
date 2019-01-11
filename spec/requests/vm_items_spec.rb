require 'rails_helper'

RSpec.describe "VmItems", type: :request do
  describe "GET /vm_items" do
    it "works! (now write some real specs)" do
      get vm_items_path
      expect(response).to have_http_status(200)
    end
  end
end
