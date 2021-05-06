class RemoveSpecialtyFromPublicProfileSpecialties < ActiveRecord::Migration[6.1]
  def change
    remove_column :public_profile_specialties, :specialty_id, :reference
  end
end
