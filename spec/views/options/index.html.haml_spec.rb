require 'rails_helper'

RSpec.describe "options/index", type: :view do
  before(:each) do
    assign(:options, [
      Option.create!(
        text: "Text",
        sort_index: 2
      ),
      Option.create!(
        text: "Text",
        sort_index: 2
      )
    ])
  end

  it "renders a list of options" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new("Text".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
  end
end
