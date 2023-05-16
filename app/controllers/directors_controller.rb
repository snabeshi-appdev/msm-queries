class DirectorsController < ActionController::Base
  def index
    @list_of_directors = Director.all

    render({ :template => "directors_templates/index.html.erb"})
  end

  def director_details
    director_id = params.fetch("director_id")
    @director = Director.where({:id => director_id}).at(0)
    render({ :template => "directors_templates/details.html.erb"})
  end

  def eldest
    @eldest = Director.where.not({:dob => nil}).order({:dob => :asc}).at(0)
    render({ :template => "directors_templates/eldest.html.erb"})
  end

  def youngest
    @youngest = Director.order({:dob => :desc}).at(0)
    render({ :template => "directors_templates/youngest.html.erb"})
  end


end
