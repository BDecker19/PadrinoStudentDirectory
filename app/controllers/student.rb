StudentDirectory::App.controllers :student do
    
  get :index do
    @people = Student.all
    render 'people/index'
  end

  get :new do
    @person = Student.new
    render 'people/new'
  end

end
