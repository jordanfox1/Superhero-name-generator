class HomeController < ApplicationController
  # common_content method is inherited only by :index and :team
  before_action :common_content, :only => [:index, :team]

  def common_content
    @hero_name = Faker::Superhero.name.titleize  
    @hero_power = Faker::Superhero.power.titleize 
    @coporate_power = Faker::Company.bs.titleize 
    @office_catchphrase = Faker::Marketing.buzzwords.titleize 
    @avatar = Faker::Avatar.image(slug: @random, size: "500x500", format: "png", set: @set, bgset: @background)
    
    @bg = rand(1..2)
    @random = rand(1..1000)
    @set_number = rand(1..4)
    #Randomly pick avatarimage
    if @set_number == 1
      @set = "set1"
    elsif @set_number == 2
      @set = "set2"
    elsif @set_number == 3
      @set = "set3"
    else
      @set = "set4"
    end
    #Randomly pick bg image
    if @bg == 1
      @background = "bg1"
    else
      @background = "bg2"
    end

    @avatar = Faker::Avatar.image(slug: @random, size: "300x300", format: "png", set: @set, bgset: @background)


  end

  def index
  end

  def team
    @team_number = params[:team_number].to_i

  end

end
