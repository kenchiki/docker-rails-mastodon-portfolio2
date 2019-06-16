require 'rails_helper'

RSpec.describe "my/websites/edit", type: :view do
  before(:each) do
    @my_website = assign(:my_website, Website.create!())
  end

  it "renders the edit my_website form" do
    render

    assert_select "form[action=?][method=?]", my_website_path(@my_website), "post" do
    end
  end
end
