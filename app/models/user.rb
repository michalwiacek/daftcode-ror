class User < ActiveRecord::Base
  validates :email, presence: true, format: /\A.+@.+\..+\z/, uniqueness: true
  has_many :users, class_name: 'User', foreign_key: 'manager_id'
  belongs_to :manager, class_name: 'User', optional: true
end
