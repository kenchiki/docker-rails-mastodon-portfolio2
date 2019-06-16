require 'rails_helper'

RSpec.describe "my/works/show", type: :view do
  before(:each) do
    @my_work = assign(:my_work, Work.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
