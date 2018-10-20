class EstudiantesController < ApplicationController
  def index
    @ests = Estudiante.all
  end

  def new
    @est = Estudiante.new
  end

  def create
  @est = Estudiante.new(nombre: params[:estudiante][:nombre], apellido: params[:estudiante][:apellido],
    documento: params[:estudiante][:documento], fecha_nac: params[:estudiante][:fecha_nac],
    curso_id: params[:estudiante][:curso_id])
    if @est.save
      redirect_to estudiante_path(@est)
    else
      render :new
    end
  end

  def show
    @est = Estudiante.find(params[:id])
  end

  def edit
    @est = Estudiante.find(params[:id])
  end

  def update
    @est = Estudiante.find(params[:id])
    if @est.update(nombre: params[:estudiante][:nombre], apellido: params[:estudiante][:apellido],
      documento: params[:estudiante][:documento], fecha_nac: params[:estudiante][:fecha_nac],
      curso_id: params[:estudiante][:curso_id])
      redirect_to estudiante_path(@est)
    else
      render :edit
    end
  end

  def destroy
    @est = Estudiante.find(params[:id])
    @est.destroy
    redirect_to estudiantes_path
  end
end
