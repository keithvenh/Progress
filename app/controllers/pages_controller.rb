class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @overall = Language.all
    @australia = Language.where(region: "Australia & Melanesia")
    @islands = Language.where(region: "Islands of Asia")
    @se_asia = Language.where(region: "Southeast Asia")
    @south_asia = Language.where(region: "South Asia")
    @east_africa = Language.where(region: "East Africa")
    @southern_africa = Language.where(region: "Southern Africa")
    @central_africa = Language.where(region: "Central Africa")
    @francophone = Language.where(region: "Francophone West Africa")
    @anglophone = Language.where(region: "Anglophone West Africa")
    @latin_america = Language.where(region: "Latin America")
    @other = Language.where(region: "Other")
  end

  def help
  end

  def about
  end
end
