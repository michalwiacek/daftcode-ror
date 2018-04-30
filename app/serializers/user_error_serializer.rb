class UserErrorsSerializer < ActiveModel::Serializer
  attributes :errors, :message
  
  def message
    "stoopid"
  end
end
