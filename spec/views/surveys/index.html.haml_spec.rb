require 'rails_helper'

RSpec.describe "surveys/index", type: :view do
  before(:each) do
    assign(:surveys, [
      Survey.create!(
        name: "Name",
        topic: "Topic"
      ),
      Survey.create!(
        name: "Name",
        topic: "Topic"
      )
    ])
  end

  it "renders a list of surveys" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Topic".to_s), count: 2
  end
end
