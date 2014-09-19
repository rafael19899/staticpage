require 'rails_helper'

RSpec.describe "taskita/index", :type => :view do
  before(:each) do
    assign(:taskita, [
      Taskitum.create!(
        :task => "Task"
      ),
      Taskitum.create!(
        :task => "Task"
      )
    ])
  end

  it "renders a list of taskita" do
    render
    assert_select "tr>td", :text => "Task".to_s, :count => 2
  end
end
