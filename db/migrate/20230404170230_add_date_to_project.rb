class AddDateToProject < ActiveRecord::Migration[6.1]
  def change
    add_column :projects, :published, :date
  end
end
