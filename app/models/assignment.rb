class Assignment < ActiveRecord::Base
	validates :staff, presence: true
	validates :e_asset_id, presence: true
end
