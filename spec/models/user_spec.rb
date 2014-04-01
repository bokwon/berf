require 'spec_helper'

describe User do
  describe "#add_contact" do
    it 'accepts a name and a phone number for the contact' do
      user = User.create
      user.add_contact("Avi Flombaum", 91775336666, "01/29/1984")

      expect(Contact.find_by_phone_number(91775336666).name).to eq("Avi Flombaum")
    end

    it 'associates the contact to the user' do
      user = User.create
      user.add_contact("Avi Flombaum", 91775336666, "01/29/1984")

      expect(Contact.find_by_phone_number(91775336666).user).to eq(user)
     end
    end
end
