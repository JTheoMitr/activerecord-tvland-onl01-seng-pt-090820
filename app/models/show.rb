class Show < ActiveRecord::Base

    belongs_to :network
    has_many :characters
    has_many :actors, through: :characters

    def actors_list
        all_actors = []
        self.characters.each do |c|
        id = c.actor_id
        actor = Actor.find(id)
        actor_name = actor.first_name + " " + actor.last_name
        all_actors << actor_name
        end
        all_actors
    end

end