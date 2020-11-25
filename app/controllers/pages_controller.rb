class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @overall = { max: Language.count, current: AdoptedLanguage.distinct.pluck(:language_id).count }

    @australia = { max: Language.where(region: "Australia & Melanesia").count, current: AdoptedLanguage.joins("INNER JOIN languages ON languages.region = 'Australia & Melanesia' AND languages.id = adopted_languages.language_id").distinct.pluck(:language_id).count }

    @islands = { max: Language.where(region: "Islands of Asia").count, current: AdoptedLanguage.joins("INNER JOIN languages ON languages.region = 'Islands of Asia' AND languages.id = adopted_languages.language_id").distinct.pluck(:language_id).count }

    @se_asia = { max: Language.where(region: "Southeast Asia").count, current: AdoptedLanguage.joins("INNER JOIN languages ON languages.region = 'Southeast Asia' AND languages.id = adopted_languages.language_id").distinct.pluck(:language_id).count }

    @south_asia = { max: Language.where(region: "South Asia").count, current: AdoptedLanguage.joins("INNER JOIN languages ON languages.region = 'South Asia' AND languages.id = adopted_languages.language_id").distinct.pluck(:language_id).count }

    @east_africa = { max: Language.where(region: "East Africa").count, current: AdoptedLanguage.joins("INNER JOIN languages ON languages.region = 'East Africa' AND languages.id = adopted_languages.language_id").distinct.pluck(:language_id).count }

    @southern_africa = { max: Language.where(region: "Southern Africa").count, current: AdoptedLanguage.joins("INNER JOIN languages ON languages.region = 'Southern Africa' AND languages.id = adopted_languages.language_id").distinct.pluck(:language_id).count }

    @central_africa = { max: Language.where(region: "Central Africa").count, current: AdoptedLanguage.joins("INNER JOIN languages ON languages.region = 'Central Africa' AND languages.id = adopted_languages.language_id").distinct.pluck(:language_id).count }

    @francophone = { max: Language.where(region: "Francophone West Africa").count, current: AdoptedLanguage.joins("INNER JOIN languages ON languages.region = 'Francophone West Africa' AND languages.id = adopted_languages.language_id").distinct.pluck(:language_id).count }

    @anglophone = { max: Language.where(region: "Anglophone West Africa").count, current: AdoptedLanguage.joins("INNER JOIN languages ON languages.region = 'Anglophone West Africa' AND languages.id = adopted_languages.language_id").distinct.pluck(:language_id).count }

    @latin_america = { max: Language.where(region: "Latin America").count, current: AdoptedLanguage.joins("INNER JOIN languages ON languages.region = 'Latin America' AND languages.id = adopted_languages.language_id").distinct.pluck(:language_id).count }

    @other = { max: Language.where(region: "Other").count, current: AdoptedLanguage.joins("INNER JOIN languages ON languages.region = 'Other' AND languages.id = adopted_languages.language_id").distinct.pluck(:language_id).count }
  end

  def display
    @overall = { max: Language.count, current: AdoptedLanguage.distinct.pluck(:language_id).count }

    @australia = { max: Language.where(region: "Australia & Melanesia").count, current: AdoptedLanguage.joins("INNER JOIN languages ON languages.region = 'Australia & Melanesia' AND languages.id = adopted_languages.language_id").distinct.pluck(:language_id).count }

    @islands = { max: Language.where(region: "Islands of Asia").count, current: AdoptedLanguage.joins("INNER JOIN languages ON languages.region = 'Islands of Asia' AND languages.id = adopted_languages.language_id").distinct.pluck(:language_id).count }

    @se_asia = { max: Language.where(region: "Southeast Asia").count, current: AdoptedLanguage.joins("INNER JOIN languages ON languages.region = 'Southeast Asia' AND languages.id = adopted_languages.language_id").distinct.pluck(:language_id).count }

    @south_asia = { max: Language.where(region: "South Asia").count, current: AdoptedLanguage.joins("INNER JOIN languages ON languages.region = 'South Asia' AND languages.id = adopted_languages.language_id").distinct.pluck(:language_id).count }

    @east_africa = { max: Language.where(region: "East Africa").count, current: AdoptedLanguage.joins("INNER JOIN languages ON languages.region = 'East Africa' AND languages.id = adopted_languages.language_id").distinct.pluck(:language_id).count }

    @southern_africa = { max: Language.where(region: "Southern Africa").count, current: AdoptedLanguage.joins("INNER JOIN languages ON languages.region = 'Southern Africa' AND languages.id = adopted_languages.language_id").distinct.pluck(:language_id).count }

    @central_africa = { max: Language.where(region: "Central Africa").count, current: AdoptedLanguage.joins("INNER JOIN languages ON languages.region = 'Central Africa' AND languages.id = adopted_languages.language_id").distinct.pluck(:language_id).count }

    @francophone = { max: Language.where(region: "Francophone West Africa").count, current: AdoptedLanguage.joins("INNER JOIN languages ON languages.region = 'Francophone West Africa' AND languages.id = adopted_languages.language_id").distinct.pluck(:language_id).count }

    @anglophone = { max: Language.where(region: "Anglophone West Africa").count, current: AdoptedLanguage.joins("INNER JOIN languages ON languages.region = 'Anglophone West Africa' AND languages.id = adopted_languages.language_id").distinct.pluck(:language_id).count }

    @latin_america = { max: Language.where(region: "Latin America").count, current: AdoptedLanguage.joins("INNER JOIN languages ON languages.region = 'Latin America' AND languages.id = adopted_languages.language_id").distinct.pluck(:language_id).count }

    @other = { max: Language.where(region: "Other").count, current: AdoptedLanguage.joins("INNER JOIN languages ON languages.region = 'Other' AND languages.id = adopted_languages.language_id").distinct.pluck(:language_id).count }
  end

  def help
  end

  def about
  end
end
