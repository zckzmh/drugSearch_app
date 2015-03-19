class DrugsController < ApplicationController


	 def  create
	 	@drug= Drug.new(drug_params)
	 	 @drug.save
                                   redirect_to @drug
	 end
	 def search
		
	end
	 def index
	  	 @drugs= Drug.find_all_by_product_name(params[:search])
	  	puts "#{@drugs}"
	 end

	def query
  	         @drug= Drug.find(params[:id])
	end
	

	private
	def   drug_params
		params.require(:drug).permit(:product_name, :name)
	end
	def query
  	         @drug= Drug.find(params[:id])
	end
end
