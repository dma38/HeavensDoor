class RemoveDescriptionFromStatuses < ActiveRecord::Migration[5.0]
  def change
    remove_column :statuses, :description, :string
  end
end
