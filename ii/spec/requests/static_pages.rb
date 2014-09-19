require 'spec helper'
describe "Static pages" do
describe "Home page" do
it "should have the h1 'Sample App'" do
visit '/static pages/home'
page.should have selector('h1', :text => 'Sample App')
end
it "should have the base title" do
visit '/static pages/home'
page.should have selector('title',
:text => "Ruby on Rails Tutorial Sample App")
end
it "should not have a custom page title" do
visit '/static pages/home'
page.should not have selector('title', :text => '| Home')
end
end

end
