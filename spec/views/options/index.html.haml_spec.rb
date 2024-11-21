require 'rails_helper'

RSpec.describe "options/index", type: :view do
  before(:each) do
    question = create(:question)
    assign(:options, [
      Option.create!(
        text: "Text",
        sort_index: 2,
        question: question
      ),
      Option.create!(
        text: "Text",
        sort_index: 2,
        question: question
      )
    ])
  end

  it "renders a list of options" do
    render
    cell_selector = 'tr>td'
    assert_select cell_selector, text: Regexp.new("Text".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
  end
end
