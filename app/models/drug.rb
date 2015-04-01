class Drug < ActiveRecord::Base
      has_many :drug_items,:class_name => "DrugItem",:foreign_key => "drug_md5_id",:primary_key=>"md5_id"
      scope :sort, -> {order(updated_at: :desc)}
      scope :search,->(key){where(" name like '%#{key}%' or product_name like '%#{key}%' or py_name like '%#{key}%'") }
      scope :detail,->(id){where("drugs.product_name=?",id )}
      # scope :search,->(key){where("name like '%#{key}%'") }
      # def  self.search(key,page)
      # paginate :per_page => 5, :page => page,
      # 	         where("product_name like '%#{key}%' or name like '%#{key}%' or py_name like '%#{key}%'" )
      # end
  end
