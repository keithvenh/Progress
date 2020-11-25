class AdoptedLanguagesController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @langs = AdoptedLanguage.where(user_id: @user.id).alphabetical
  end

  def new
    @user = current_user
    @languages = Language.all
    @adoptee = AdoptedLanguage.new
    @countries = Language.all.group_by {|lang| lang.country}
  end

  def create
    
    @user = current_user
    @lang = Language.find_by(language_code: params["adopted_language"]["language_code"])
    @adoptee = AdoptedLanguage.new(user_id: params["user_id"], language_id: @lang.id)

    if @adoptee.save
        @trans = Translation.new(user_id: params['user_id'], language_id: @lang.id, adopted_language_id: @adoptee.id)

        if @trans.save!
          redirect_to user_adopted_languages_path(@user)
        else
          redirect_to root_url
        end
    else
      flash.alert = "You have already adopted this language"
      redirect_to new_user_adopted_language_url
    end
  end

  def edit
  end

  def show
  end
end
