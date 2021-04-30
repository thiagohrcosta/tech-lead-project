class AddPriceToDeveloperProfiles < ActiveRecord::Migration[6.1]
  def change
    add_column :developer_profiles, :price, :integer
  end
end
