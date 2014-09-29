class RutinasController < ApplicationController
  # GET /rutinas
  # GET /rutinas.json
  def index
    @rutinas = Rutina.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @rutinas }
    end
  end

  # GET /rutinas/1
  # GET /rutinas/1.json
  def show
    @rutina = Rutina.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @rutina }
    end
  end

  # GET /rutinas/new
  # GET /rutinas/new.json
  def new
    @rutina = Rutina.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @rutina }
    end
  end

  # GET /rutinas/1/edit
  def edit
    @rutina = Rutina.find(params[:id])
  end

  # POST /rutinas
  # POST /rutinas.json
  def create
    @rutina = Rutina.new(params[:rutina])

    respond_to do |format|
      if @rutina.save
        format.html { redirect_to @rutina, notice: 'Rutina was successfully created.' }
        format.json { render json: @rutina, status: :created, location: @rutina }
      else
        format.html { render action: "new" }
        format.json { render json: @rutina.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /rutinas/1
  # PUT /rutinas/1.json
  def update
    @rutina = Rutina.find(params[:id])

    respond_to do |format|
      if @rutina.update_attributes(params[:rutina])
        format.html { redirect_to @rutina, notice: 'Rutina was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @rutina.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rutinas/1
  # DELETE /rutinas/1.json
  def destroy
    @rutina = Rutina.find(params[:id])
    @rutina.destroy

    respond_to do |format|
      format.html { redirect_to rutinas_url }
      format.json { head :no_content }
    end
  end
end
