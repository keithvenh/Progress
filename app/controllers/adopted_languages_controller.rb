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
    
    @user = current_user
    @lang = Language.find_by(language_code: params["adopted_language"]["language_code"])
    @adoptee = AdoptedLanguage.new(user_id: params["user_id"], language_id: @lang.id)

    if @adoptee.save
        @trans = Translation.new(user_id: params['user_id'], language_id: @lang.id, ywam_base_id: @user.ywam_base_id, adopted_language_id: @adoptee.id)
        puts "="*40
        puts @trans.ywam_base.name
        puts "="*40
        if @trans.save!
          redirect_to user_adopted_languages_path(@user)
        else
          redirect_to root_url
        end
    else
      render 'new'
    end
  end

  def edit
  end

  def show
  end
end
