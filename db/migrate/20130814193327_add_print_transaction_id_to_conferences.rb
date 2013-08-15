class AddPrintTransactionIdToConferences < ActiveRecord::Migration
  def self.up
    add_column :conferences, :transaction_id, :integer
  end

  def self.down
    remove_column :conferences, :transaction_id
  end
end
