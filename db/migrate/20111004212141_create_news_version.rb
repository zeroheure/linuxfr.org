class CreateNewsVersion < ActiveRecord::Migration
  def change
    create_table :news_version do |t|
      t.references :news
      t.references :user
      t.integer :version
      t.string :message
      t.string :title
      t.text :body
      t.text :second_part
      t.text :links
      t.datetime :created_at
    end
    add_index :news_version, [:news_id, :version]
  end
end