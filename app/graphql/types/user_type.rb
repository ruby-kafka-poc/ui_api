# frozen_string_literal: true

module Types
  class UserType < Types::BaseObject
    field :id, ID
    field :email, String
    field :access_at, GraphQL::Types::ISO8601DateTime
    field :locked, Boolean
    field :failed_attempts, Integer
  end
end
