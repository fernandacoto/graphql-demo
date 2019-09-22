module Types
  class UserInput < Types::BaseInputObject
    description 'User input'

    argument :first_name, String, required: true,
      description: "User's first name"

    argument :last_name, String, required: true,
      description: "User's last name"

    argument :email, String, required: true,
      description: "User's email"

    argument :birthdate, String, required: true,
      description: "User's date of birth in the format YYYY-MM-DD"
  end
end