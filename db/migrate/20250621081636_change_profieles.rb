class ChangeProfieles < ActiveRecord::Migration[7.2]
  def change
    rename_table :profieles, :profiles
  end
end
