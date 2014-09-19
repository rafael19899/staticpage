require 'rails_helper'

RSpec.describe "taskita/new", :type => :view do
  before(:each) do
    assign(:taskitum, Taskitum.new(
      :task => "MyString"
    ))
  end

  it "renders new taskitum form" do
    render

    assert_select "form[action=?][method=?]", taskita_path, "post" do

      assert_select "input#taskitum_task[name=?]", "taskitum[task]"
    end
  end
end
