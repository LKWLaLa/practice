class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :author_id
end
