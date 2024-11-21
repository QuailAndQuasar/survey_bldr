require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
        email: "email1@example.com",
        first_name: "First Name",
        last_name: "Last Name",
        password: "password"
      ),
      User.create!(
        email: "email2@example.com",
        first_name: "First Name",
        last_name: "Last Name",
        password: "password"
      )
    ])
  end

  it "renders a list of users" do
    render
    cell_selector = 'tr>td'
    assert_select cell_selector, text: Regexp.new("email1@example.com".to_s), count: 1
    assert_select cell_selector, text: Regexp.new("email2@example.com".to_s), count: 1
    assert_select cell_selector, text: Regexp.new("First Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Last Name".to_s), count: 2
  end
end
