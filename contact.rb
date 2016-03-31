class Contact
  attr_accessor :id, :first_name, :last_name, :email, :note
  # It creates methods and instance variables.
  # Getters and setters for all of these named properties.

  # Add any class variables here
  @@contacts = []
  @@next_id = 1
  # This method should take four string arguments (first_name, last_name, email, note),
  # and initialize this instance of Contact.
  def initialize(first_name, last_name, email, note)
    @id = @@next_id
    @first_name = first_name
    @last_name = last_name
    @email = email
    @note = note
  end

# # GETTER METHOD
#   def first_name
#     @first_name
#   end
#
# # SETTER METHOD
#   def first_name=(new_first_name)
#     @first_name = new_first_name
#   end

  # To create a new instance of Contact :
  # Values are saved as instance variables.
  # ariane = Contact.new("Ariane", "Foucher", "ariane.df@me.com", "Tipsy")

  # This method should take four string arguments (first_name, last_name, email, note),
  # and return the newly created contact
  def self.create(options)
    # OR
    # def self.create(first_name, last_name, email, note)

    # 1 Make a new Contact
    new_contact = new(options[:first_name], options[:last_name], options[:email], options[:note])
    # OR self.new
    # 2 Add it to the list of contacts (@@contacts)
    @@contacts << new_contact
    # 3 Increment the global id
    @@next_id += 1
    # 4 Return the contact we just created
    new_contact
  end

  # This method takes no arguments
  # and return all of the existing contacts in array form
  def self.all
    @@contacts
  end

  # This method should take an integer id argument
  # and return the contact that corresponds to the id
  def self.find(id)
    # Fill this in
  end

  # This method should take two string arguments (attribute, value)
  # It should look for the contact with the attribute corresponding to the value
  # and return that contact
  #
  # For example:
  #   Contact.find_by('first_name', 'Joe')
  # should return the first contact with the first_name of Joe.
  def self.find_by(attribute, value)
    # Fill this in
  end

  # This method takes no arguments
  # It should delete all of the contacts from memory
  def self.delete_all
    # Fill this in
  end

  # This method takes no arguments
  # It should return a string that is composed of the first and last names of the contact.
  def full_name
    "#{first_name} #{last_name}"
    # [first_name, last_name].join(" ") would do the same!
  end

  # This method should take two string arguments (attribute, value)
  # It should update the current instance of contact with the new value of the attribute
  #
  # For example:
  #   mary.update('email', 'mary_new_email@gmail.com')
  # should update mary's email address to the new one.
  def update(attribute, value)
    # Fill this in
  end

  # This method takes no arguments
  # It should delete the current instance of contact from memory
  def delete
    # Fill this in
  end

end
