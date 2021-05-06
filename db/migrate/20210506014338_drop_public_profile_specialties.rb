class DropPublicProfileSpecialties < ActiveRecord::Migration[6.1]
  def change
    drop_table :public_profile_specialties
  end
end
