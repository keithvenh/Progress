module AdoptedLanguagesHelper

    def country_by_region(countries)
        
        groups = [
            ['Australia & Melanesia', []],
            ['Islands of Asia', []],
            ['Southeast Asia', []],
            ['South Asia', []],
            ['East Africa', []],
            ['Southern Africa', []],
            ['Central Africa', []],
            ['Francophone West Afria', []],
            ['Anglophone West Afica', []],
            ['Latin America', []],
            ['Other', []]
        ]
        
        countries.each do |c|
            
            case c.region
            when 'Australia & Melanesia'
                groups[0][1].push(c.country)
            when 'Islands of Asia'
                groups[1][1].push(c.country)
            when 'Southeast Asia'
                groups[2][1].push(c.country)
            when 'South Asia'
                groups[3][1].push(c.country)
            when 'East Africa'
                groups[4][1].push(c.country)
            when 'Southern Africa'
                groups[5][1].push(c.country)
            when 'Central Africa'
                groups[6][1].push(c.country)
            when 'Francophone West Africa'
                groups[7][1].push(c.country)
            when 'Anglophone West Africa'
                groups[8][1].push(c.country)
            when 'Latin America'
                groups[9][1].push(c.country)
            when 'Other'
                groups[10][1].push(c.country)
            end
        end

        return groups
    end
end
