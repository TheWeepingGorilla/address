require 'rspec'
require './lib/address_book'

describe 'Contact' do
  it 'creates a contact object' do
    test_contact = Contact.new("Bob")
    test_contact.should be_an_instance_of Contact
  end
end

describe 'Phone' do
  it 'creates a phone object' do
    test_phone = Phone.new(5556667777)
    test_phone.should be_an_instance_of Phone
  end
end

describe 'Email' do
  it 'creates an email object' do
    test_email = Email.new("bob@bobsburgers.com")
    test_email.should be_an_instance_of Email
  end
end

describe 'Address' do
  it 'creates an address object' do
    test_address = Address.new("1600 Pennsylvania Ave NW. Washington D.C. 20500")
    test_address.should be_an_instance_of Address
  end
end
