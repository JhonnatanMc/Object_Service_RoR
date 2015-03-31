class UserService 
  
  
  before_action :set_user, only: [:show, :edit, :update, :destroy]

 attr_accessor :user
 
  # Crear el objeto
  def initialize(user_params )
    @user = user_params
  end
  
   def create(user_params)
     
     user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end      
    end
    
  end


end