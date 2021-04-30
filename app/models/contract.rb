class Contract < ApplicationRecord
  has_one :user
  has_one :developer_profile
end
