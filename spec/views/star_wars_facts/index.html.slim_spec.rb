require 'rails_helper'

RSpec.describe "star_wars_facts/index", type: :view do
  before(:each) do
    assign(:star_wars_facts, [
      StarWarsFact.create!(
        :character => "MyText",
        :droid => "MyText",
        :planet => "MyText",
        :quote => "MyText",
        :vehicle => "MyText"
      ),
      StarWarsFact.create!(
        :character => "MyText",
        :droid => "MyText",
        :planet => "MyText",
        :quote => "MyText",
        :vehicle => "MyText"
      )
    ])
  end

  it "renders a list of star_wars_facts" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
