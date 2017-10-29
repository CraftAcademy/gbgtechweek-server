class ContactSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :company, :role, :twitter, :location, :info, :image
end
