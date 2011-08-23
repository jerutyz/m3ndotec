class EncargadosController < ApplicationController
  # GET /encargados
  # GET /encargados.xml
  def index
    @encargados = Encargado.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @encargados }
    end
  end

  # GET /encargados/1
  # GET /encargados/1.xml
  def show
    @encargado = Encargado.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @encargado }
    end
  end

  # GET /encargados/new
  # GET /encargados/new.xml
  def new
    @encargado = Encargado.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @encargado }
    end
  end

  # GET /encargados/1/edit
  def edit
    @encargado = Encargado.find(params[:id])
  end

  # POST /encargados
  # POST /encargados.xml
  def create
    @encargado = Encargado.new(params[:encargado])

    respond_to do |format|
      if @encargado.save
        format.html { redirect_to(@encargado, :notice => 'Encargado was successfully created.') }
        format.xml  { render :xml => @encargado, :status => :created, :location => @encargado }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @encargado.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /encargados/1
  # PUT /encargados/1.xml
  def update
    @encargado = Encargado.find(params[:id])

    respond_to do |format|
      if @encargado.update_attributes(params[:encargado])
        format.html { redirect_to(@encargado, :notice => 'Encargado was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @encargado.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /encargados/1
  # DELETE /encargados/1.xml
  def destroy
    @encargado = Encargado.find(params[:id])
    @encargado.destroy

    respond_to do |format|
      format.html { redirect_to(encargados_url) }
      format.xml  { head :ok }
    end
  end
end
