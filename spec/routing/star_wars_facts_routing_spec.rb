require "rails_helper"

RSpec.describe StarWarsFactsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/star_wars_facts").to route_to("star_wars_facts#index")
    end

    it "routes to #new" do
      expect(:get => "/star_wars_facts/new").to route_to("star_wars_facts#new")
    end

    it "routes to #show" do
      expect(:get => "/star_wars_facts/1").to route_to("star_wars_facts#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/star_wars_facts/1/edit").to route_to("star_wars_facts#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/star_wars_facts").to route_to("star_wars_facts#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/star_wars_facts/1").to route_to("star_wars_facts#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/star_wars_facts/1").to route_to("star_wars_facts#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/star_wars_facts/1").to route_to("star_wars_facts#destroy", :id => "1")
    end

  end
end
