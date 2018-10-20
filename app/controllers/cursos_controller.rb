class CursosController < ApplicationController
  def index
      @curs = Curso.all
    end

    def new
      @cur = Curso.new
    end

    def create
    @cur = Curso.new(grado: params[:curso][:grado], materia: params[:curso][:matria], profesor_id: params[:curso][:profesor_id])
      if @cur.save
        redirect_to curso_path(@cur)
      else
        render :new
      end
    end

    def show
      @cur = Curso.find(params[:id])
    end

    def edit
      @cur = Curso.find(params[:id])
    end

    def update
      @cur = Curso.find(params[:id])
      if @cur.update(grado: params[:curso][:grado], materia: params[:curso][:materia], profesor_id: params[:curso][:profesor_id])
        redirect_to curso_path(@cur)
      else
        render :edit
      end
    end

    def destroy
      @cur = Curso.find(params[:id])
      @cur.destroy
      redirect_to cursos_path
    end
end
