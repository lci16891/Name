class CreateIdkScaffolds < ActiveRecord::Migration[5.2]
  def change
    create_table :idk_scaffolds do |t|
      t.string :avatar
      t.integer :user_id

      t.timestamps
    end
  end
end
