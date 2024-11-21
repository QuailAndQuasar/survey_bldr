require 'rails_helper'

RSpec.describe "questions/edit", type: :view do
  let(:question) {
    topic = create(:topic)
    Question.create!(
      text: "MyString",
      topic: topic,
      sort_index: 1
    )
  }

  before(:each) do
    assign(:question, question)
  end

  it "renders the edit question form" do
    render

    assert_select "form[action=?][method=?]", question_path(question), "post" do

      assert_select "input[name=?]", "question[text]"

      assert_select "select[name=?]", "question[topic_id]"

      assert_select "input[name=?]", "question[sort_index]"
    end
  end
end
