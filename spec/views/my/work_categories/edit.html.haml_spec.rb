require 'rails_helper'

RSpec.describe "my/work_categories/edit", type: :view do
  before(:each) do
    @my_work_category = assign(:my_work_category, WorkCategory.create!())
  end

  it "renders the edit my_work_category form" do
    render

    assert_select "form[action=?][method=?]", my_work_category_path(@my_work_category), "post" do
    end
  end
end
