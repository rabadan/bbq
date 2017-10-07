require 'rails_helper'

RSpec.describe "events/show", type: :view do
  before(:each) do
    @event = assign(:event, FactoryGirl.create(:event, title: 'My title'))
  end

  it "renders attributes in <p>" do
    render

    expect(rendered).to match 'My title'
  end
end
