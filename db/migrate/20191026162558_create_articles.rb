class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|

      t.timestamps null: false
      t.string :title, null: false
      t.string :image
      t.string :detail
      t.references :user, foreign_key: true
    end
  end
end
