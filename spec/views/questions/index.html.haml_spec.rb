require 'rails_helper'

RSpec.describe "questions/index", type: :view do
  before(:each) do
    assign(:questions, [
      Question.create!(
        text: "Text",
        topic: "Topic",
        sort_index: 2
      ),
      Question.create!(
        text: "Text",
        topic: "Topic",
        sort_index: 2
      )
    ])
  end

  it "renders a list of questions" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new("Text".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Topic".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
  end
end
