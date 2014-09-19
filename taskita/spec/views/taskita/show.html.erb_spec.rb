require 'rails_helper'

RSpec.describe "taskita/show", :type => :view do
  before(:each) do
    @taskitum = assign(:taskitum, Taskitum.create!(
      :task => "Task"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Task/)
  end
end
