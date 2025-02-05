require 'rails_helper'

RSpec.describe "options/new", type: :view do
  before(:each) do
    assign(:option, Option.new(
      text: "MyString",
      sort_index: 1
    ))
  end

  it "renders new option form" do
    render

    assert_select "form[action=?][method=?]", options_path, "post" do

      assert_select "input[name=?]", "option[text]"

      assert_select "input[name=?]", "option[sort_index]"
    end
  end
end
