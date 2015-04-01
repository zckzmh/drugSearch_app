class DrugItem < ActiveRecord::Base
	belongs_to :drug ,:class_name=>"Drug",:foreign_key =>"drug_md5_id", :primary_key=>"md5_id"
	validates :drug_md5_id, presence: true
end
