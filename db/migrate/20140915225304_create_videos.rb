class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.integer :user_id

      t.string :title

      t.string :source
      t.string :thumbnail

      t.text :description

      t.timestamps
    end
  end
end
