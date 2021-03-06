require 'rails_helper'

RSpec.describe Event, type: :model do
  let(:event) { FactoryBot.create(:event) }

  describe "#visitors" do
    before(:each) do
      FactoryBot.create(:subscription, event: event)
      FactoryBot.create(:subscription_guest, event: event)
    end

    it 'correct' do
      expect(event.visitors.count).to eq(3)
    end
  end

  describe "#pincode_valid?" do
    it 'valid' do
      expect(event.pincode_valid?('1234')).to be_truthy
    end

    it 'invalid' do
      expect(event.pincode_valid?('123')).to be_falsey
    end
  end
end
