class CreateProfieles < ActiveRecord::Migration[7.2]
  def change
    create_table :profieles do |t|
      t.string :racket_name
      t.string :history
      t.string :play_style
      t.string :level
      t.string :generation
      t.string :gender 
      t.timestamps
    end
  end
end
