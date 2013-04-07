StudentDirectory::App.controllers :instructor do  
  get :index do
    @people = Instructor.all
    render 'people/index'
  end

  get :new do
    @person = Instructor.new
    render 'people/new'
  end

end
