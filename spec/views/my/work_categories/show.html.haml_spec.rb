require 'rails_helper'

RSpec.describe "my/work_categories/show", type: :view do
  before(:each) do
    @my_work_category = assign(:my_work_category, WorkCategory.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
