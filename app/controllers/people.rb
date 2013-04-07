StudentDirectory::App.controllers :people do
  
  get :index do
    @people = Person.all
    render 'people/index'
  end

  post :create do
    @person = Person.new
    @person.type = params[:type]
    @person.name = params[:name]
    @person.email = params[:email]
    @person.github = params[:github]
    @person.twitter = params[:twitter]
    @person.reason_for_joining = params[:reason_for_joining]
    @person.iq = params[:iq]

    if @person.save
      redirect :people
    else
      flash[:notice] = "Sorry, couldn't save..."
    end
  end

end
