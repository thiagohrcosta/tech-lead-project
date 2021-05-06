class AddTechnologiesToDeveloperProfile < ActiveRecord::Migration[6.1]
  def change
    add_column :developer_profiles, :technologies, :text
  end
end
