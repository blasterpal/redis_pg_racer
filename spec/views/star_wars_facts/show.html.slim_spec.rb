require 'rails_helper'

RSpec.describe "star_wars_facts/show", type: :view do
  before(:each) do
    @star_wars_fact = assign(:star_wars_fact, StarWarsFact.create!(
      :character => "MyText",
      :droid => "MyText",
      :planet => "MyText",
      :quote => "MyText",
      :vehicle => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
  end
end
