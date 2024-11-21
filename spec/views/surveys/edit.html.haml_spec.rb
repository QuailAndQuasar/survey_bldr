require 'rails_helper'

RSpec.describe "surveys/edit", type: :view do
  let(:survey) {
    topic = create(:topic)
    customer = create(:customer)
    Survey.create!(
      name: "MyString",
      topic: topic,
      customer: customer
    )
  }

  before(:each) do
    assign(:survey, survey)
  end

  it "renders the edit survey form" do
    render

    assert_select "form[action=?][method=?]", survey_path(survey), "post" do

      assert_select "input[name=?]", "survey[name]"

      assert_select "select[name=?]", "survey[topic_id]"

      assert_select "select[name=?]", "survey[customer_id]"
    end
  end
end
