require 'rails_helper'

RSpec.describe "surveys/show", type: :view do
  before(:each) do
    assign(:survey, Survey.create!(
      name: "Name",
      topic: "Topic"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Topic/)
  end
end
