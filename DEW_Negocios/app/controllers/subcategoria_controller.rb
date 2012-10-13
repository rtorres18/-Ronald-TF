class SubcategoriaController < ApplicationController
  # GET /subcategoria
  # GET /subcategoria.json
  def index
    @subcategoria = Subcategorium.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @subcategoria }
    end
  end

  # GET /subcategoria/1
  # GET /subcategoria/1.json
  def show
    @subcategorium = Subcategorium.find(params[:id])
    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @subcategorium }
    end
  end

  # GET /subcategoria/new
  # GET /subcategoria/new.json
  def new
    @subcategorium = Subcategorium.new

    respond_to do |format|	  
      format.html # new.html.erb
      format.json { render json: @subcategorium }
    end
  end

  # GET /subcategoria/1/edit
  def edit
    @subcategorium = Subcategorium.find(params[:id])
  end

  # POST /subcategoria
  # POST /subcategoria.json
  def create
    @subcategorium = Subcategorium.new(params[:subcategorium])

    respond_to do |format|
      if @subcategorium.save
        format.html { redirect_to @subcategorium, notice: 'Se ha creado la subcategoria satisfactoriamente.' }
        format.json { render json: @subcategorium, status: :created, location: @subcategorium }
      else
        format.html { render action: "new" }
        format.json { render json: @subcategorium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /subcategoria/1
  # PUT /subcategoria/1.json
  def update
    @subcategorium = Subcategorium.find(params[:id])

    respond_to do |format|
      if @subcategorium.update_attributes(params[:subcategorium])
        format.html { redirect_to @subcategorium, notice: 'Se ha actualizado la subcategoria satisfactoriamente.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @subcategorium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subcategoria/1
  # DELETE /subcategoria/1.json
  def destroy
    @subcategorium = Subcategorium.find(params[:id])
    @subcategorium.destroy

    respond_to do |format|
      format.html { redirect_to subcategoria_url }
      format.json { head :no_content }
    end
  end
end
