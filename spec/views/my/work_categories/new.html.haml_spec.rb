require 'rails_helper'

RSpec.describe "my/work_categories/new", type: :view do
  before(:each) do
    assign(:my_work_category, WorkCategory.new())
  end

  it "renders new my_work_category form" do
    render

    assert_select "form[action=?][method=?]", my_work_categories_path, "post" do
    end
  end
end
