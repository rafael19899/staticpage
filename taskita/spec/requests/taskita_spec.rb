require 'rails_helper'

RSpec.describe "Taskita", :type => :request do
  describe "GET /taskita" do
    it "works! (now write some real specs)" do
	@task = Taskita.create :taskita => 'go to bed'

      get taskita_path
      expect(response.status).to be(200)
    end
  end
end
