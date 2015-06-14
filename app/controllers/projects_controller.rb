class ProjectsController < ApplicationController
	def new
		 @project = Project.new
		 @anteriores = t(:anteriores)
	end
	def webProject
		 @project = Project.all
		 @anteriores = t(:anteriores)
	end
	def softwareProject
		 @project = Project.all
		 @anteriores = t(:anteriores)
	end
	def create
		@project = Project.create(project_params)
			if @project.save
				redirect_to  @project
			else
				render 'new'
		end
	end

	def show
		@project = Project.find(params[:id])
		@anteriores = t(:anteriores)
	end
	
	def index
	  @project = Project.all
	   @anteriores = t(:anteriores)
	end

	def edit
		@project = Project.find(params[:id])
	end	

	def destroy
		@project = Project.find(params[:id])
		@project.destroy

		redirect_to projects_path
	end

	def update
		@project= Project.find(params[:id])

		if @project.update(project_params)
			redirect_to @project
		else
			render 'edit'
		end
	end
	def vistaSoftware
		@project = Project.all
	    @desarrolloSoftware = t(:desarrolloSoftware)
	    @tituloClientes = t(:tituloClientes)
	    @tituloContenido = t(:tituloContenido)
	    @contenidopreferido1 = t(:contenidopreferido1)
	    @contenidopreferido2 = t(:contenidopreferido2)
	    @tituloSoftware = t(:tituloSoftware)
	    @contenidoSoftware = t(:contenidoSoftware)
	    @tituloAgilidad = t(:tituloAgilidad)
	    @contenidoAgilidad = t(:contenidoAgilidad)
	    @tituloCloud = t(:tituloCloud)
	    @contenidoCloud = t(:contenidoCloud)
	    @tituloExperiencia = t(:tituloExperiencia)
	    @contenidoExperiencia = t(:contenidoExperiencia)  
	    @anteriores = t(:anteriores)
	  end
	def vistaWeb
		@project = Project.all
		@desarrolloWeb = t(:desarrolloWeb)
		@tituloClientes = t(:tituloClientes)
		@tituloContenido = t(:tituloContenido)
		@contenidopreferido1 = t(:contenidopreferido1)
		@contenidopreferido2 = t(:contenidopreferido2)
		@tituloSoftware = t(:tituloSoftware)
		@contenidoSoftware = t(:contenidoSoftware)
		@tituloAgilidad = t(:tituloAgilidad)
		@contenidoAgilidad = t(:contenidoAgilidad)
		@tituloCloud = t(:tituloCloud)
		@contenidoCloud = t(:contenidoCloud)
		@tituloExperiencia = t(:tituloExperiencia)
		@contenidoExperiencia = t(:contenidoExperiencia) 
		@anteriores = t(:anteriores) 
	end

private
  def project_params
    params.require(:project).permit(:title, :text, :url, :imagen, :tipo)
   end
end
