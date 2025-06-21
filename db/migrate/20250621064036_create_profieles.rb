class CreateProfieles < ActiveRecord::Migration[7.2]
  def change
    create_table :profieles do |t|
      t.timestamps
    end
  end
end
