class DropSpecialties < ActiveRecord::Migration[6.1]
  def change
    drop_table :specialties
  end
end
