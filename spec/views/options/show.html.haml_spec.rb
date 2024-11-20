require 'rails_helper'

RSpec.describe "options/show", type: :view do
  before(:each) do
    assign(:option, Option.create!(
      text: "Text",
      sort_index: 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Text/)
    expect(rendered).to match(/2/)
  end
end
