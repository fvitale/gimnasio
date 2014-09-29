class EjerciciosController < ApplicationController
  # GET /ejercicios
  # GET /ejercicios.json
  def index
    @ejercicios = Ejercicio.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ejercicios }
    end
  end

  # GET /ejercicios/1
  # GET /ejercicios/1.json
  def show
    @ejercicio = Ejercicio.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ejercicio }
    end
  end

  # GET /ejercicios/new
  # GET /ejercicios/new.json
  def new
    @ejercicio = Ejercicio.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ejercicio }
    end
  end

  # GET /ejercicios/1/edit
  def edit
    @ejercicio = Ejercicio.find(params[:id])
  end

  # POST /ejercicios
  # POST /ejercicios.json
  def create
    @ejercicio = Ejercicio.new(params[:ejercicio])

    respond_to do |format|
      if @ejercicio.save
        format.html { redirect_to @ejercicio, notice: 'Ejercicio was successfully created.' }
        format.json { render json: @ejercicio, status: :created, location: @ejercicio }
      else
        format.html { render action: "new" }
        format.json { render json: @ejercicio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ejercicios/1
  # PUT /ejercicios/1.json
  def update
    @ejercicio = Ejercicio.find(params[:id])

    respond_to do |format|
      if @ejercicio.update_attributes(params[:ejercicio])
        format.html { redirect_to @ejercicio, notice: 'Ejercicio was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ejercicio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ejercicios/1
  # DELETE /ejercicios/1.json
  def destroy
    @ejercicio = Ejercicio.find(params[:id])
    @ejercicio.destroy

    respond_to do |format|
      format.html { redirect_to ejercicios_url }
      format.json { head :no_content }
    end
  end
end
