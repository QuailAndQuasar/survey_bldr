require 'rails_helper'

RSpec.describe "questions/index", type: :view do
  before(:each) do
    topic = create(:topic, label: 'Topic')

    assign(:questions, [
      Question.create!(
        text: "Text",
        topic: topic,
        sort_index: 2
      ),
      Question.create!(
        text: "Text",
        topic: topic,
        sort_index: 2
      )
    ])
  end

  it "renders a list of questions" do
    render
    cell_selector = 'tr>td'
    assert_select cell_selector, text: Regexp.new("Text".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Topic".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
  end
end
