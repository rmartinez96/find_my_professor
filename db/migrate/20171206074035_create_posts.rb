class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.boolean :availability
      t.text :comment
      t.string :time

      t.timestamps
    end
  end
end
