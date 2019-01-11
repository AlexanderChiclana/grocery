class CreateTjItems < ActiveRecord::Migration[5.1]
  def change
    create_table :tj_items do |t|
      t.string :name

      t.timestamps
    end
  end
end
