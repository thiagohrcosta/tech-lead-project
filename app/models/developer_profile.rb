class DeveloperProfile < ApplicationRecord
  belongs_to :user
  has_many :contracts

  include PgSearch::Model
  pg_search_scope :search_by_all,
    against: [ :name, :description, :price, :technologies ],
    using: {
      tsearch: { prefix: true }
    }
end
