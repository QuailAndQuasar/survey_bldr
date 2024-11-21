require 'rails_helper'

RSpec.describe "surveys/show", type: :view do
  before(:each) do
    topic = create(:topic, label: 'Topic')
    customer = create(:customer, name: 'Customer')
    assign(:survey, Survey.create!(
      name: "Name",
      topic: topic,
      customer: customer
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Topic/)
    expect(rendered).to match(/Customer/)
  end
end
