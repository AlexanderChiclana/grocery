class CreateVmItems < ActiveRecord::Migration[5.1]
  def change
    create_table :vm_items do |t|
      t.string :name

      t.timestamps
    end
  end
end
