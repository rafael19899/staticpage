require "rails_helper"

RSpec.describe TaskitaController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/taskita").to route_to("taskita#index")
    end

    it "routes to #new" do
      expect(:get => "/taskita/new").to route_to("taskita#new")
    end

    it "routes to #show" do
      expect(:get => "/taskita/1").to route_to("taskita#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/taskita/1/edit").to route_to("taskita#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/taskita").to route_to("taskita#create")
    end

    it "routes to #update" do
      expect(:put => "/taskita/1").to route_to("taskita#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/taskita/1").to route_to("taskita#destroy", :id => "1")
    end

  end
end
