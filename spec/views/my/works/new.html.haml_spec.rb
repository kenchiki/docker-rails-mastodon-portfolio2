require 'rails_helper'

RSpec.describe "my/works/new", type: :view do
  before(:each) do
    assign(:my_work, Work.new())
  end

  it "renders new my_work form" do
    render

    assert_select "form[action=?][method=?]", my_works_path, "post" do
    end
  end
end
