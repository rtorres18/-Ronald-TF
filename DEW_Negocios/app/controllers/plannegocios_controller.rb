class PlannegociosController < ApplicationController
  # GET /plannegocios
  # GET /plannegocios.json
  def index
    @plannegocios = Plannegocio.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @plannegocios }

# Formulario de busqueda

    @search = Plannegocio.search(params[:search])   
    @plannegocios = @search.all  

# FIN de Formulario de busqueda
    end
  end

  # GET /plannegocios/1
  # GET /plannegocios/1.json
  def show
    @plannegocio = Plannegocio.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @plannegocio }
    end
  end

  # GET /plannegocios/new
  # GET /plannegocios/new.json
  def new
    @plannegocio = Plannegocio.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @plannegocio }
    end
  end

  # GET /plannegocios/1/edit
  def edit
    @plannegocio = Plannegocio.find(params[:id])
  end

  # POST /plannegocios
  # POST /plannegocios.json
  def create
    @plannegocio = Plannegocio.new(params[:plannegocio])

    respond_to do |format|
      if @plannegocio.save
        format.html { redirect_to @plannegocio, notice: 'Plannegocio was successfully created.' }
        format.json { render json: @plannegocio, status: :created, location: @plannegocio }
      else
        format.html { render action: "new" }
        format.json { render json: @plannegocio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /plannegocios/1
  # PUT /plannegocios/1.json
  def update
    @plannegocio = Plannegocio.find(params[:id])

    respond_to do |format|
      if @plannegocio.update_attributes(params[:plannegocio])
        format.html { redirect_to @plannegocio, notice: 'Plannegocio was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @plannegocio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plannegocios/1
  # DELETE /plannegocios/1.json
  def destroy
    @plannegocio = Plannegocio.find(params[:id])
    @plannegocio.destroy

    respond_to do |format|
      format.html { redirect_to plannegocios_url }
      format.json { head :no_content }
    end
  end
end
