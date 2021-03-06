require "rails_helper"

RSpec.describe BucketlistsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/bucketlists").to route_to("bucketlists#index")
    end


    it "routes to #show" do
      expect(:get => "/bucketlists/1").to route_to("bucketlists#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/bucketlists").to route_to("bucketlists#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/bucketlists/1").to route_to("bucketlists#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/bucketlists/1").to route_to("bucketlists#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/bucketlists/1").to route_to("bucketlists#destroy", :id => "1")
    end

  end
end
