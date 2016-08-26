class AuthorSerializer < ActiveModel::Serializer
  attributes :id, :name

  has_many :posts
  class PostSerializer < ActiveModel::Serializer
    attributes :title, :body, :id
  end


end
