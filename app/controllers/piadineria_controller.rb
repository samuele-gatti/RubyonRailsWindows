require 'net/http'

class PiadineriaController < ApplicationController
   
  
  #GET /piadineria/latitude/1/longitude/1
  #GET /piadineria/latitude/1/longitude/1.json
  def GetPiadinerie
	@piadineria = Piadinerium.all
    @piadineria.each do |piad|
		piad.class.module_eval {attr_accessor :distanza}
		piad.class.module_eval {attr_accessor :tempo}
		
		coordinates= params[:latitudine]+ ',' + params[:longitudine]
		uri = URI('http://maps.googleapis.com/maps/api/directions/json')
        params = { :origin => piad.fullAddress, :destination => coordinates, :sensor => false }
        uri.query = URI.encode_www_form(params)
        res = Net::HTTP.get_response(uri)
		obj = JSON.parse(res.body)
		piad.distanza = obj['routes'][0]['legs'][0]['distance']['text']
		piad.tempo = obj['routes'][0]['legs'][0]['duration']['text']
		@result = obj
		
    end
	@piadineria.sort_by!{|p| p.distanza}	
	respond_to do |format|
	    format.html 
      format.json { render json: @piadineria }
    end
  end
  
  # GET /piadineria
  # GET /piadineria.json
  def index
    @piadineria = Piadinerium.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @piadineria }
    end
  end

  # GET /piadineria/1
  # GET /piadineria/1.json
  def show
    @piadinerium = Piadinerium.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @piadinerium }
    end
  end

  # GET /piadineria/new
  # GET /piadineria/new.json
  def new
    @piadinerium = Piadinerium.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @piadinerium }
    end
  end

  # GET /piadineria/1/edit
  def edit
    @piadinerium = Piadinerium.find(params[:id])
  end

  # POST /piadineria
  # POST /piadineria.json
  def create
    @piadinerium = Piadinerium.new(params[:piadinerium])

    respond_to do |format|
      if @piadinerium.save
        format.html { redirect_to @piadinerium, notice: 'Piadinerium was successfully created.' }
        format.json { render json: @piadinerium, status: :created, location: @piadinerium }
      else
        format.html { render action: "new" }
        format.json { render json: @piadinerium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /piadineria/1
  # PUT /piadineria/1.json
  def update
    @piadinerium = Piadinerium.find(params[:id])

    respond_to do |format|
      if @piadinerium.update_attributes(params[:piadinerium])
        format.html { redirect_to @piadinerium, notice: 'Piadinerium was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @piadinerium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /piadineria/1
  # DELETE /piadineria/1.json
  def destroy
    @piadinerium = Piadinerium.find(params[:id])
    @piadinerium.destroy

    respond_to do |format|
      format.html { redirect_to piadineria_url }
      format.json { head :no_content }
    end
  end
end
