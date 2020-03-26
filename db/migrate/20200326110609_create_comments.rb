class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :content , null:true
      t.timestamps
    end
  end
end
