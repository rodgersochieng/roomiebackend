class AccountSerializer < ActiveModel::Serializer
  attributes :id, :image_url, :name, :institution, :gender, :bio, :user_id
end
