class CreateTranslations < ActiveRecord::Migration[6.0]
  def change
    create_table :translations do |t|
      t.boolean :first_verse
      t.boolean :ts_one
      t.boolean :ts_two
      t.boolean :ts_three
      t.boolean :ts_four
      t.boolean :ts_five
      t.boolean :ts_six
      t.boolean :ts_seven
      t.boolean :ts_eight
      t.boolean :ts_nine
      t.boolean :ts_ten
      t.boolean :ts_eleven
      t.boolean :ts_twelve
      t.boolean :ts_thirteen
      t.boolean :ts_fouteen
      t.boolean :ts_fifteen
      t.boolean :ts_sixteen
      t.boolean :ts_seventeen
      t.boolean :ts_eighteen
      t.boolean :ts_nineteen
      t.boolean :ts_twenty
      t.boolean :ts_twentyone
      t.boolean :ts_twentytwo
      t.boolean :ts_twentythree
      t.boolean :ts_twentyfour
      t.boolean :ts_twentyfive
      t.boolean :ts_twentysix
      t.boolean :ts_twentyseven
      t.boolean :ts_twentyeight
      t.boolean :ts_twentynine
      t.boolean :ts_thirty
      t.boolean :genesis
      t.boolean :exodus
      t.boolean :leviticus
      t.boolean :numbers
      t.boolean :deuteronomy
      t.boolean :joshua
      t.boolean :judges
      t.boolean :ruth
      t.boolean :first_samuel
      t.boolean :second_samuel
      t.boolean :first_kings
      t.boolean :second_kings
      t.boolean :first_chronicles
      t.boolean :second_chronicles
      t.boolean :ezra
      t.boolean :nehemiah
      t.boolean :esther
      t.boolean :job
      t.boolean :psalms
      t.boolean :proverbs
      t.boolean :ecclesiastes
      t.boolean :song_of_solomon
      t.boolean :isaiah
      t.boolean :jeremiah
      t.boolean :lamentations
      t.boolean :ezekiel
      t.boolean :daniel
      t.boolean :hosea
      t.boolean :joel
      t.boolean :amos
      t.boolean :obadiah
      t.boolean :jonah
      t.boolean :micah
      t.boolean :nahum
      t.boolean :habakkuk
      t.boolean :zephaniah
      t.boolean :haggai
      t.boolean :zechariah
      t.boolean :malachi
      t.boolean :matthew
      t.boolean :mark
      t.boolean :luke
      t.boolean :john
      t.boolean :acts
      t.boolean :romans
      t.boolean :first_corinthians
      t.boolean :second_corinthians
      t.boolean :galatians
      t.boolean :ephesians
      t.boolean :philippians
      t.boolean :colossians
      t.boolean :first_thessalonians
      t.boolean :second_thessalonians
      t.boolean :first_timothy
      t.boolean :second_timothy
      t.boolean :titus
      t.boolean :philemon
      t.boolean :hebrews
      t.boolean :james
      t.boolean :first_peter
      t.boolean :second_peter
      t.boolean :first_john
      t.boolean :second_john
      t.boolean :third_john
      t.boolean :jude
      t.boolean :revelation
      t.boolean :jesus_film
      t.boolean :lumo
      t.references :user, null: false, foreign_key: true
      t.references :ywam_base, null: false, foreign_key: true
      t.references :language, null: false, foreign_key: true
      t.references :adopted_language, null: false, foreign_key: true

      t.timestamps
    end
  end
end
