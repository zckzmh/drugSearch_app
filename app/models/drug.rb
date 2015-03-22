class Drug < ActiveRecord::Base

      scope :search,->(key){where("product_name like '%#{key}%' or name like '%#{key}%' or py_name like '%#{key}%'") }
      # scope :search,->(key){where("name like '%#{key}%'") }
      # def  self.search(key)
      # 	where("product_name  like？" , '%#{key}%'   )
      # end
  end
