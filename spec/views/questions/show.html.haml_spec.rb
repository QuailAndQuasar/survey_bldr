require 'rails_helper'

RSpec.describe "questions/show", type: :view do
  before(:each) do
    assign(:question, Question.create!(
      text: "Text",
      topic: "Topic",
      sort_index: 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Text/)
    expect(rendered).to match(/Topic/)
    expect(rendered).to match(/2/)
  end
end
