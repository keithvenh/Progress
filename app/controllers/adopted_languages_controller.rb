class AdoptedLanguagesController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @langs = AdoptedLanguage.where(user_id: @user.id)
  end

  def new
    @user = current_user
    @languages = Language.all
    @adoptee = AdoptedLanguage.new
    @countries = Language.distinct.pluck(:country)
  end

  def create
    lang = Language.find_by(language_code: params["adopted_language"]["language_code"])
    puts "="*25
    puts lang
    puts "="*25
    @adoptee = AdoptedLanguage.new(user_id: params["user_id"], language_id: lang.id)
    if @adoptee.save
        redirect_to user_adopted_languages_path(current_user)
    else
      render 'new'
    end
  end

  def edit
  end

  def show
  end
end
