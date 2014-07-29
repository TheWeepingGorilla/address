require 'rspec'
require './lib/address_book'

describe 'Contact' do
  it 'creates a contact object' do
    test_contact = Contact.new("Bob")
    test_contact.should be_an_instance_of Contact
  end
  it 'returns contact name' do
    test_contact = Contact.new("Bob")
    test_contact.name.should eq "Bob"
  end
  it 'shows phone number added to contact' do
    test_contact = Contact.new("Bob")
    test_number = Phone.new(5556667777)
    test_contact.add_number(test_number)
    test_contact.digits[0].number.should eq 5556667777
  end
  it 'shows email added to contact' do
    test_contact = Contact.new("Bob")
    test_email = Email.new("bob@bobsburgers.com")
    test_contact.add_email(test_email)
    test_contact.emails[0].email.should eq "bob@bobsburgers.com"
  end
  it 'shows address added to contact' do
    test_contact = Contact.new("Bob")
    test_address = Address.new("1234 Rainbow Rd.")
    test_contact.add_address(test_address)
    test_contact.addresses[0].address.should eq "1234 Rainbow Rd."
  end
  it 'adds contact to list of all contacts' do
    test_contact = Contact.new("Bob")
    test_number = Phone.new(5556667777)
    test_contact.add_number(test_number)
    test_email = Email.new("bob@bobsburgers.com")
    test_contact.add_email(test_email)
    test_address = Address.new("1234 Rainbow Rd.")
    test_contact.add_address(test_address)
    test_contact.save_to_contact_list
    Contact.all[0].name.should eq "Bob"
    Contact.all[0].digits[0].number.should eq 5556667777
    Contact.all[0].emails[0].email.should eq "bob@bobsburgers.com"
    Contact.all[0].addresses[0].address.should eq "1234 Rainbow Rd."
  end
    it 'returns a selected contact' do
    test_contact = Contact.new("Bob")
    test_number = Phone.new(5556667777)
    test_contact.add_number(test_number)
    test_email = Email.new("bob@bobsburgers.com")
    test_contact.add_email(test_email)
    test_address = Address.new("1234 Rainbow Rd.")
    test_contact.add_address(test_address)
    test_contact.save_to_contact_list
    found_contact = Contact.search("Bob")
    found_contact.name.should eq "Bob"
    found_contact.emails[0].email.should eq "bob@bobsburgers.com"
  end
end

describe 'Phone' do
  it 'creates a phone object' do
    test_phone = Phone.new(5556667777)
    test_phone.should be_an_instance_of Phone
  end
  it 'returns phone number' do
    test_phone = Phone.new(5556667777)
    test_phone.number.should eq 5556667777
  end
end

describe 'Email' do
  it 'creates an email object' do
    test_email = Email.new("bob@bobsburgers.com")
    test_email.should be_an_instance_of Email
  end
  it 'returns an email' do
    test_email = Email.new("bob@bobsburgers.com")
    test_email.email.should eq "bob@bobsburgers.com"
  end
end

describe 'Address' do
  it 'creates an address object' do
    test_address = Address.new("1600 Pennsylvania Ave NW. Washington D.C. 20500")
    test_address.should be_an_instance_of Address
  end
  it 'creates an address object' do
    test_address = Address.new("1600 Pennsylvania Ave NW. Washington D.C. 20500")
    test_address.address.should eq "1600 Pennsylvania Ave NW. Washington D.C. 20500"
  end
end
