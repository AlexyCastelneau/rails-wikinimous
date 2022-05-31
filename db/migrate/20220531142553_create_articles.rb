class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :content
      t.string :subtitle1
      t.string :paragraph1
      t.string :subtitle2
      t.string :paragraph2

      t.timestamps
    end
  end
end
