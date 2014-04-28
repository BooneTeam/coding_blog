class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.text :body
      t.belongs_to :post, index: true

      t.timestamps
    end
  end
end
