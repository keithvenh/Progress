require 'json' 

languages = JSON.parse(File.read('db/biblelessLangs.json'))

languages.each do |lang|

    Language.create(
        country_id: lang['countryID'],
        country: lang['country'],
        language_code: lang['languageID'],
        language: lang['name']
    )

end

Location.create(
    name: "YWAM Kona",
    city: "Kailua-Kona",
    country: "United States"
)