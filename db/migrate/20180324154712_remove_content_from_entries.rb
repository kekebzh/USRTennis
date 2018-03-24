class RemoveContentFromEntries < ActiveRecord::Migration[5.1]
  def change
    remove_column :entries, :content, :text
  end
end
