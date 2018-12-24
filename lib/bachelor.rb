

# [{"name"=>"Tessa Horst", "age"=>"26", "hometown"=>"San Francisco, CA", "occupation"=>"Social Worker", "status"=>"Winner"},
 # {"name"=>"Bevin Nicole Powers", "age"=>"28", "hometown"=>"Palo Alto, CA", "occupation"=>"Assistant", "status"=>"Week 8"},
 # {"name"=>"Danielle Imwalle", "age"=>"25", "hometown"=>"Bethel, CT", "occupation"=>"Graphic Designer", "status"=>"Week 7"},]

require'pry'
def get_first_name_of_season_winner(data, season)
    name = nil
    data[season].map {|hash| hash['status'] == "Winner" ? name = hash['name'].split(' ')[0] : nil }
    name
end

####====OR====####

# def get_first_name_of_season_winner(data, season)
#     data[season].map do |key|
#         key.map do |attribute, data|
#             if key[attribute] == "Winner"
#                 # binding.pry
#                 # key['name'].split(" ")[0]
#                 key.fetch('name').split(" ")[0]
#             end
#         end
#     end.flatten.compact[0]
# end

def get_contestant_name(data, occupation)
    name = nil
    data.map {|season, people| people.map {|attribute| attribute["occupation"] == occupation ? name = attribute["name"] : nil}}
    name
end



def count_contestants_by_hometown(data, hometown)
    home_town_count = 0
    data.map {|season, people| people.map {|attribute| attribute["hometown"] == hometown ? home_town_count += 1 : nil}}
    home_town_count
end



def get_occupation(data, hometown)
    occupation = []
    data.map {|season, people| people.map {|attribute| attribute["hometown"] == hometown ? occupation << attribute["occupation"] : nil}}
    occupation[0]
end



def get_average_age_for_season(data, season)
    ages = 0
    data[season].each {|attribute| ages += attribute["age"].to_f}
    (ages/data[season].length).round
end
