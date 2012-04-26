class CreateOrganisms < ActiveRecord::Migration
  def change
    create_table :organisms do |t|
      t.string :species
      t.integer :longevity
      t.integer :repro_coefficient
      t.string :name

      t.timestamps
    end
  end
end
