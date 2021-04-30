class CreatePublicProfileSpecialties < ActiveRecord::Migration[6.1]
  def change
    create_table :public_profile_specialties do |t|
      t.references :specialty, null: false, foreign_key: true

      t.timestamps
    end
  end
end
