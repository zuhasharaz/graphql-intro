module Types
  class QueryType < Types::BaseObject

    field :posts, [Types::PostType], null: false do
      description "Query that selects all posts"
    end

    field :postCount, Integer, null: false do
      description "Query that returns the total number of posts"
    end

    def posts
      return Post.all
    end

    def postCount
      return Post.count
    end
  end
end
