class Conference < ActiveRecord::Base

	belongs_to :user
	has_many :transactions, :dependent => :destroy

	def inventory_total
		total = 0
		transactions.each do |transaction|
			total = total + transaction.folded + transaction.flat
		end
		total
	end

end
