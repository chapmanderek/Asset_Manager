class EAsset < ActiveRecord::Base
	validates :tag_id, presence: true, uniqueness: true, length: {is: 8}

	def self.latest
		EAsset.order(:updated_at).last
	end
end

