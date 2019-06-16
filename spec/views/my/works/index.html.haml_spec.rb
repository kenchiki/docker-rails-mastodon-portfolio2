require 'rails_helper'

RSpec.describe "my/works/index", type: :view do
  before(:each) do
    assign(:works, [
      Work.create!(),
      Work.create!()
    ])
  end

  it "renders a list of my/works" do
    render
  end
end
