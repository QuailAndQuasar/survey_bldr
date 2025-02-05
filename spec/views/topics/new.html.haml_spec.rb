require 'rails_helper'

RSpec.describe "topics/new", type: :view do
  before(:each) do
    assign(:topic, Topic.new(
      key: "MyString",
      label: "MyString"
    ))
  end

  it "renders new topic form" do
    render

    assert_select "form[action=?][method=?]", topics_path, "post" do

      assert_select "input[name=?]", "topic[key]"

      assert_select "input[name=?]", "topic[label]"
    end
  end
end
