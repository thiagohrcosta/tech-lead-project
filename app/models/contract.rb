class Contract < ApplicationRecord
  belongs_to :user
  belongs_to :developer_profile

  has_many :posts, dependent: :destroy
end
