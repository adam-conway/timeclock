class CreatePunchins < ActiveRecord::Migration[5.1]
  def change
    create_table :punchins do |t|
      t.string :client
      t.datetime :time
      t.boolean :working

      t.timestamps
    end
  end
end
