class AddTypeToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :i_type, :integer
  end
end
