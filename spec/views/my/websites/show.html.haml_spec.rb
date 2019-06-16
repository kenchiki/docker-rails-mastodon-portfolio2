require 'rails_helper'

RSpec.describe "my/websites/show", type: :view do
  before(:each) do
    @my_website = assign(:my_website, Website.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
