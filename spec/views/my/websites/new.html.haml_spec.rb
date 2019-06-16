require 'rails_helper'

RSpec.describe "my/websites/new", type: :view do
  before(:each) do
    assign(:my_website, Website.new())
  end

  it "renders new my_website form" do
    render

    assert_select "form[action=?][method=?]", my_websites_path, "post" do
    end
  end
end
