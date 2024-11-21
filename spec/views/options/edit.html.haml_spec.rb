require 'rails_helper'

RSpec.describe "options/edit", type: :view do
  let(:option) {
    question = create(:question)
    Option.create!(
      text: "MyString",
      sort_index: 1,
      question: question
    )
  }

  before(:each) do
    assign(:option, option)
  end

  it "renders the edit option form" do
    render

    assert_select "form[action=?][method=?]", option_path(option), "post" do

      assert_select "input[name=?]", "option[text]"

      assert_select "input[name=?]", "option[sort_index]"
    end
  end
end
