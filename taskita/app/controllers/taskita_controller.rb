require 'spec_helper'

describe "Taskita" do
describe "GET /taskita"do
it "display some taskita" do
@taskita = Taskita.create :taskita => 'go to bed'

visit tasks_path
page.should have_content 'go to bed'

end

it "create a new task" do :with => 'go to work'
visit taskita_path
fill_in 'Taskita'
click_button 'Add Task'

current_path.should == root_path
page.should have_content 'go to work'

save_and_open_page	
end
end
end
