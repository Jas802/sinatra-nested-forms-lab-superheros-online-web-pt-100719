require 'sinatra/base'

class App < Sinatra::Base
  get '/' do
    erb :super_hero
  end
    set :views, Proc.new { File.join(root, "../views/") }

    post '/teams' do
    @team_name = params[:team][:name]
    @team_motto = params[:team][:motto]
    @hero_name = []
    @hero_power = []
    @hero_bio = []
    @team_members = params[:team][:members]
    @team_members.each do |hero|
     @hero_name << hero[:name]
     @hero_power << hero[:power]
     @hero_bio << hero[:bio]
     erb :team
    end


  end
end
