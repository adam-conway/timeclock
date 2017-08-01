class CreateClients < ActiveRecord::Migration[5.1]
  def change
    create_table :clients do |t|
      t.string :client_name
      t.float :client_rate

      t.timestamps
    end
  end
end
