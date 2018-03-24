class AddEnclosureToEntries < ActiveRecord::Migration[5.1]
  def change
    add_column :entries, :enclosure_url, :string
    add_column :entries, :enclosure_length, :integer
    add_column :entries, :enclosure_type, :string
  end
end
