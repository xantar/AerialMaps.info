class CreateCameras < ActiveRecord::Migration
  def change
    create_table :cameras do |t|
      t.string :name
      t.boolean :lens_profile, default: false

      t.timestamps null: false
    end
  end
end
