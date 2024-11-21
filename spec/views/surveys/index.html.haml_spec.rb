require 'rails_helper'

RSpec.describe "surveys/index", type: :view do
  before(:each) do
    topic = create(:topic, label: 'Test Topic', key: 'test')
    customer = create(:customer, name: 'Customer')
    assign(:surveys, [
      Survey.create!(
        name: "Name",
        topic: topic,
        customer: customer
      ),
      Survey.create!(
        name: "Name",
        topic: topic,
        customer: customer
      )
    ])
  end

  it "renders a list of surveys" do
    render
    cell_selector = 'tr>td'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Test Topic".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Customer".to_s), count: 2
  end
end
