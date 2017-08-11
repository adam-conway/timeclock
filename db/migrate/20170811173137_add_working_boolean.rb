class AddWorkingBoolean < ActiveRecord::Migration[5.1]
  def change
  	add_column :punchins, :working, :boolean
  end
end
