class AddMoreFieldsToTransaction < ActiveRecord::Migration
  def self.up
    add_column :transactions, :docket, :string
    add_column :transactions, :usage, :string
  end

  def self.down
    remove_column :transactions, :usage
    remove_column :transactions, :docket
  end
end
