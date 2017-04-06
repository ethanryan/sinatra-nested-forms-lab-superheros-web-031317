require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do #renders the index.erb page
      erb :super_hero #super_hero is our main page
    end


    post '/team' do #renders the new.erb page
      team_name = params[:team][:name]
      team_motto = params[:team][:motto]
      team_info = params[:team]
      @new_team = Team.new(team_info)

      # member1_name = params[:team][:members][0][:name]
      # member1_power = params[:team][:members][0][:power]
      # member1_biograpy = params[:team][:members][0][:biograpy]
      # member1_info = params[:team][:members][0]

      @member1 = params[:team][:members][0]
      @member2 = params[:team][:members][1]
      @member3 = params[:team][:members][2]
      #@member1 = SuperHero.new(params[:team][:members][0])

      erb :team #submitting super_hero will direct user to team page
    end

end #end class



# Create a route that responds to a GET request at /.
#
# Create a view with a form and render it in the GET / route.
#
# The form should have fields for the name of a
# superhero team and their motto.
#
# There should be form inputs for each of the
# three superhero member's name, power, and bio.
