require 'rails_helper'

RSpec.describe "star_wars_facts/edit", type: :view do
  before(:each) do
    @star_wars_fact = assign(:star_wars_fact, StarWarsFact.create!(
      :character => "MyText",
      :droid => "MyText",
      :planet => "MyText",
      :quote => "MyText",
      :vehicle => "MyText"
    ))
  end

  it "renders the edit star_wars_fact form" do
    render

    assert_select "form[action=?][method=?]", star_wars_fact_path(@star_wars_fact), "post" do

      assert_select "textarea#star_wars_fact_character[name=?]", "star_wars_fact[character]"

      assert_select "textarea#star_wars_fact_droid[name=?]", "star_wars_fact[droid]"

      assert_select "textarea#star_wars_fact_planet[name=?]", "star_wars_fact[planet]"

      assert_select "textarea#star_wars_fact_quote[name=?]", "star_wars_fact[quote]"

      assert_select "textarea#star_wars_fact_vehicle[name=?]", "star_wars_fact[vehicle]"
    end
  end
end
