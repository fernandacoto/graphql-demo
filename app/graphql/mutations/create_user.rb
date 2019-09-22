module Mutations
  class CreateUser < BaseMutation
    argument :attributes, Types::UserInput, required: true

    field :user, Types::UserType, null: true
    field :success, Boolean, null: false

    def resolve(attributes:)
      model_attributes = attributes.to_h
      model_attributes[:birthdate] = DateTime.parse(model_attributes[:birthdate])
      user = User.new(model_attributes)
      if user.save!
        { success: true, user: user }
      else
        { success: false, user: nil }
      end
    end
  end
end