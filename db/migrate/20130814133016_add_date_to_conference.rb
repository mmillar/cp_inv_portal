class AddDateToConference < ActiveRecord::Migration
  def self.up
    add_column :conferences, :date, :datetime
  end

  def self.down
    remove_column :conferences, :date
  end
end
