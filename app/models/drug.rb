class Drug < ActiveRecord::Base
      scope :sort, -> {order(updated_at: :desc)}
      scope :search,->(key){where(" name like '%#{key}%' or product_name like '%#{key}%' or py_name like '%#{key}%'") }
      # scope :search,->(key){where("name like '%#{key}%'") }
      # def  self.search(key,page)
      # paginate :per_page => 5, :page => page,
      # 	         where("product_name like '%#{key}%' or name like '%#{key}%' or py_name like '%#{key}%'" )
      # end
  end
