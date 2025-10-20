class CreateComments < ActiveRecord::Migration[8.0]
  def change
    create_table :comments do |t|
      t.references :article, null: false
      t.text :content, null: false
      t.timestamps
    end
  end
end
