class CreateClients < ActiveRecord::Migration
  def self.up
    create_table :clients do |t|
      t.string :name
      t.string :pri_color
      t.string :sec_color

      t.timestamps
    end
  end

  def self.down
    drop_table :clients
  end
end
