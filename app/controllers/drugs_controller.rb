class DrugsController < ApplicationController


	 def  create
	 	@drug= Drug.new(drug_params)
	 	 @drug.save
                                   redirect_to @drug
	 end
	 def search
	       key = params[:search]
	       puts key
	       @drugs = Drug.search(key)
	       render 'index'
	end
	 def index
	 	# @news=Drug.find_all_by_product_name(params[:search])
	 	# puts"#{@news}"
	  	 # @drugs= Drug.where(:producer=>params[:search])
	  	# puts "#{@counters}"
	  	 @drugs
	 end

	def query
  	         @drug= Drug.find(params[:id])
	end
	

	
end
