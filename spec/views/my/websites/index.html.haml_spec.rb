require 'rails_helper'

RSpec.describe "my/websites/index", type: :view do
  before(:each) do
    assign(:websites, [
      Website.create!(),
      Website.create!()
    ])
  end

  it "renders a list of my/websites" do
    render
  end
end
