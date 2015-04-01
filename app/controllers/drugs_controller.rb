class DrugsController < ApplicationController


	 def  create
	 	@drug= Drug.new(drug_params)
	 	 @drug.save
                                   redirect_to @drug
	 end
	 def search
	       key = params[:search]
	       puts key
	       # @drugs=Drug.exist.sort
	       @drugs = Drug.search(key).paginate(:page => params[:page])
	       render 'index'
	end
	 def index
	 	
	 	# @drugs=Drug.exist.sort.paginate(:page => params[:page])
	 	# @news=Drug.find_all_by_product_name(params[:search])
	 	# puts"#{@news}"
	  	 # @drugs= Drug.where(:producer=>params[:search])
	  	# puts "#{@counters}"
	  	# @drugs =Drug.paginate (:page => params[:page],:per_page => 5)
	  	 @drugs
	 end

	 def show_item
	 	md5_id=params[:md5_id]
                           puts md5_id
	     	@drug= Drug.find_by_md5_id(md5_id)
 		@drug_items = @drug.drug_items
	 end

	def query
  	         @drug= Drug.find(params[:id])
	end
	

	
end
