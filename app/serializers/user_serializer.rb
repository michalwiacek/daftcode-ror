class UserSerializer < ActiveModel::Serializer
  attributes :email, :email_domain

  def email_domain
    object.email.split('@').last
  end
end
