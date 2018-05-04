class UserErrorsSerializer < ActiveModel::Serializer
  attribute :method
  attributes :errors, :message

  def errors
    object.errors.count
  end

  def message
    object.errors
  end

  def method
    "trying to #{@instance_options[:method_name]}"
  end
end
