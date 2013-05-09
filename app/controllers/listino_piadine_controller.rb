class ListinoPiadineController < ApplicationController

  #GET /listinoPiadine/1
  #GET /listinoPiadine/1.json
  def GetListinoPiadine
     
    listino = ListinoPiadine.where("piadineria_id = " + params[:id]).first()
	
	if listino.nil?
		@listinoPiadine = []
	else	
		@listinoPiadine = listino.piadinas
	end
    
    respond_to do |format|
      format.html 
      format.json { render json: @listinoPiadine }
    end
    
  end 
end
