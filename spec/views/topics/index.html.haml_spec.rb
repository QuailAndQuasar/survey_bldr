require 'rails_helper'

RSpec.describe "topics/index", type: :view do
  before(:each) do
    assign(:topics, [
      Topic.create!(
        key: "Key",
        label: "Label"
      ),
      Topic.create!(
        key: "Key",
        label: "Label"
      )
    ])
  end

  it "renders a list of topics" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new("Key".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Label".to_s), count: 2
  end
end
