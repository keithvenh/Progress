require 'csv' 

languages = CSV.read('db/obt-languages.csv', headers: true)

languages.each do |lang|

    Language.create( 
        region: lang['region'],
        country: lang['country'],
        language: lang['language'],
        language_code: lang['language_code'],
        population: lang['population']
    )

end