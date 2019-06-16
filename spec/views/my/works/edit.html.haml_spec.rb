require 'rails_helper'

RSpec.describe "my/works/edit", type: :view do
  before(:each) do
    @my_work = assign(:my_work, Work.create!())
  end

  it "renders the edit my_work form" do
    render

    assert_select "form[action=?][method=?]", my_work_path(@my_work), "post" do
    end
  end
end
