class AddSexToOrganism < ActiveRecord::Migration
  def change
    add_column :organisms, :sex, :string

  end
end
