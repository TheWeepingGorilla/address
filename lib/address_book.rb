class Contact

  @@all_contacts = []

  def Contact.search (name)
    @@all_contacts.each do |contact|
      if contact.name == name
        return contact
      end
    end
  end

  def Contact.all
    @@all_contacts
  end

  def save_to_contact_list
    @@all_contacts << self
  end

  def initialize (name)
    @contact_name = name
    @digits = []
    @emails = []
    @addresses = []
  end

  def name
    @contact_name
  end

  def add_number (phone_object)
    @digits << phone_object
  end

  def digits
    @digits
  end

  def add_email (email_obj)
    @emails << email_obj
  end

  def emails
    @emails
  end

  def add_address (address_obj)
    @addresses << address_obj
  end

  def addresses
    @addresses
  end
end

class Phone
  def initialize (number)
    @contact_number = number
  end

  def number
    @contact_number
  end
end

class Email
  def initialize (email)
    @contact_email = email
  end

  def email
    @contact_email
    end
end

class Address
  def initialize (address)
    @contact_address = address
  end

  def address
    @contact_address
  end
end
