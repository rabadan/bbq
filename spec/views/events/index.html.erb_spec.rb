require 'rails_helper'

RSpec.describe "events/index", type: :view do
  before(:each) do
    assign(:events, [
      FactoryGirl.create(:event, title: 'My title1'),
      FactoryGirl.create(:event, title: 'My title2'),
    ])
  end

  it "renders a list of events" do
    render

    expect(rendered).to match 'My title1'
    expect(rendered).to match 'My title2'
  end
end
