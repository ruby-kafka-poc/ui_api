module Types
  class QueryType < Types::BaseObject
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :user, UserType, "Find an user by ID" do
      argument :id, ID
    end

    def user(id:)
      user = Struct.new(:id, :email, :access_at, :locked, :failed_attempts)
      user.new(id, 'asd@qwer.ty', DateTime.now, false, 0)
    end
  end
end
