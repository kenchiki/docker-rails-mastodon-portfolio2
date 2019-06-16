require 'rails_helper'

RSpec.describe "my/work_categories/index", type: :view do
  before(:each) do
    assign(:work_categories, [
      WorkCategory.create!(),
      WorkCategory.create!()
    ])
  end

  it "renders a list of my/work_categories" do
    render
  end
end
