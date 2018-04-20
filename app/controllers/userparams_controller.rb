class UserparamsController < ApplicationController
  def new
  	@userparam = Userparam.new
  end
  def my_books
    books = Book.all
    @books = books.paginate(page: params[:page], per_page: 5)
    @user_likes = Userparam.find_by_user_id(current_user.id)
  end
  def create
    @userparam=current_user.build_userparam(user_params)
    if @userparam.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
    @userparam = Userparam.find_by_user_id(current_user.id)
  end

  def update
      @userparam = Userparam.find_by_user_id(current_user.id)
      if @userparam.update(user_params)
        redirect_to profile_path
      else
        render 'edit'
      end
  end

  def profile
  end

  private
def user_params
  params.require(:userparam).permit(:firstname, :lastname, :city, :avatar)
  
end
end
