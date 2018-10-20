class ProfesoresController < ApplicationController
  def index
    @profs = Profesor.all
  end

  def new
    @prof = Profesor.new
  end

  def create
  @prof = Profesor.new(nombre: params[:profesor][:nombre], apellido: params[:profesor][:apellido],
    documento: params[:profesor][:documento], edad: params[:profesor][:edad])
    if @prof.save
      redirect_to profesor_path(@prof)
    else
      render :new
    end
  end

  def show
    @prof = Profesor.find(params[:id])
  end

  def edit
    @prof = Profesor.find(params[:id])
  end

  def update
    @prof = Profesor.find(params[:id])
    if @prof.update(nombre: params[:profesor][:nombre], apellido: params[:profesor][:apellido],
      documento: params[:profesor][:documento], edad: params[:profesor][:edad])
      redirect_to profesor_path(@prof)
    else
      render :edit
    end
  end

  def destroy
    @prof = Profesor.find(params[:id])
    @prof.destroy
    redirect_to profesores_path
  end
end
