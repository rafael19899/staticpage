require 'rails_helper'

RSpec.describe "taskita/edit", :type => :view do
  before(:each) do
    @taskitum = assign(:taskitum, Taskitum.create!(
      :task => "MyString"
    ))
  end

  it "renders the edit taskitum form" do
    render

    assert_select "form[action=?][method=?]", taskitum_path(@taskitum), "post" do

      assert_select "input#taskitum_task[name=?]", "taskitum[task]"
    end
  end
end
