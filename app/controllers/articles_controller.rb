class ArticlesController < ApplicationController
    #http_basic_authenticate_with name: "mawesi", password: "m4w351545", excep:[:index, :show, :blog]
	
		 # 	before_filter :authenticate, :only => [:usuario]
		 # 	def authenticate
			# authenticate_or_request_with_http_basic do |username, password| 
			# 		if(username == "mawesi" && password == "m4w351545")
			# 			true
			# 		else
			# 			#redirect_to '/blog'
			# 		end
			# 	end
			# end

	def index
		@articles = Article.all
		@anteriores = t(:anteriores)
	end
	def show
		@article = Article.find(params[:id])
	end
	#before_action: authenticate_user! 
	def usuario
		@articles = Article.all
		@anteriores = t(:anteriores)
	end
	def new
		@article = Article.new
		@user = User.find(current_user.id)
	end
	def create
		@article = Article.new(article_params)

		if @article.save
			redirect_to usuario_path
		else
			render 'new'
		end
	end
	def edit
		@article = Article.find(params[:id])
	end
	def destroy
		@article = Article.find(params[:id])
		@article.destroy
     	redirect_to usuario_path, :notice => "El post ha sido eliminado"
	end
	def update
		@article = Article.find(params[:id])

		if @article.update(article_params)
			redirect_to usuario_path
		else
			render 'edit'
		end
	end
	private
	def article_params
		params.require(:article).permit(:autor, :title, :descripcion, :text)
	end
end
