class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string  :path
      t.string  :alt
      t.string  :description
      t.belongs_to :article, index: true

      t.timestamps
    end
  end
end
