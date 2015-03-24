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

	def query
  	         @drug= Drug.find(params[:id])
	end
	

	
end
