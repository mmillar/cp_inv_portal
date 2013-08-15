class AddNewFieldsToTransactions < ActiveRecord::Migration
  def self.up
    add_column :transactions, :date, :datetime
    add_column :transactions, :note, :text
  end

  def self.down
    remove_column :transactions, :note
    remove_column :transactions, :date
  end
end
