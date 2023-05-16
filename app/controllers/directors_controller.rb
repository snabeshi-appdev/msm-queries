class DirectorsController < ActionController::Base
  def index
    @list_of_directors = Director.all

    render({ :template => "directors_templates/index.html.erb"})
  end

  def details
    @director_id = params.fetch("director_id")
    @list_of_directors = Director.all
    render({ :template => "directors_templates/details.html.erb"})

  end

end
