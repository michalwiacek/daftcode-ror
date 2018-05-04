class UserSerializer < ActiveModel::Serializer
  attributes :email, :admin
  attribute :email_domain, if: :admin?
  belongs_to :manager

  def manager
    User.find_by_id(object.manager_id)&.email
  end

  def admin?
    object.admin?
  end

  def email_domain
    object.email.split('@').last
  end
end
