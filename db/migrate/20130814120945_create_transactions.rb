class CreateTransactions < ActiveRecord::Migration
  def self.up
    create_table :transactions do |t|
      t.integer :folded
      t.integer :flat
      t.integer :conference_id

      t.timestamps
    end
  end

  def self.down
    drop_table :transactions
  end
end
