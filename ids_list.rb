class IdsList
    attr_accessor :ids

    def initialize(new_ids)
        @ids = new_ids
    end

    def verify(user_id)
        self.ids.each do |id|
            if id === user_id
                return true
            end
        end

        return false
    end
end