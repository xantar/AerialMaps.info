class CreateMappingLevels < ActiveRecord::Migration
  def change
    create_table :mapping_levels do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
