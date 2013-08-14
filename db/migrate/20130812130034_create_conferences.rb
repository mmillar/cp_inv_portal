class CreateConferences < ActiveRecord::Migration
  def self.up
    create_table :conferences do |t|
      t.string :code
      t.string :name
      t.string :notes

      t.timestamps
    end
  end

  def self.down
    drop_table :conferences
  end
end
