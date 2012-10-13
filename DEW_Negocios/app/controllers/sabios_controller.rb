class SabiosController < ApplicationController
  # GET /sabios
  # GET /sabios.json
  def index
    @sabios = Sabio.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sabios }
    end
  end

  # GET /sabios/1
  # GET /sabios/1.json
  def show
    @sabio = Sabio.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sabio }
    end
  end

  # GET /sabios/new
  # GET /sabios/new.json
  def new
    @sabio = Sabio.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sabio }
    end
  end

  # GET /sabios/1/edit
  def edit
    @sabio = Sabio.find(params[:id])
  end

  # POST /sabios
  # POST /sabios.json
  def create
    @sabio = Sabio.new(params[:sabio])

    respond_to do |format|
      if @sabio.save
        format.html { redirect_to @sabio, notice: 'Sabio was successfully created.' }
        format.json { render json: @sabio, status: :created, location: @sabio }
      else
        format.html { render action: "new" }
        format.json { render json: @sabio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sabios/1
  # PUT /sabios/1.json
  def update
    @sabio = Sabio.find(params[:id])

    respond_to do |format|
      if @sabio.update_attributes(params[:sabio])
        format.html { redirect_to @sabio, notice: 'Sabio was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @sabio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sabios/1
  # DELETE /sabios/1.json
  def destroy
    @sabio = Sabio.find(params[:id])
    @sabio.destroy

    respond_to do |format|
      format.html { redirect_to sabios_url }
      format.json { head :no_content }
    end
  end
end
