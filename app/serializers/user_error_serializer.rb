class UserErrorsSerializer < ActiveModel::Serializer
  attributes :errors, :message
  
  def errors
    object.errors.count
  end

  def message
    "stoopid"
  end
  
end
