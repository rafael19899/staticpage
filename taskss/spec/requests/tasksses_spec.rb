require 'rails_helper'

RSpec.describe "Tasksses", :type => :request do
  describe "GET /tasksses" do
    it "display some tasks" do
	visit tasks_path	
   page.should have_content 'go to bed'
    
    end
  end
end
