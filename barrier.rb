require_relative "ids_list";

class Barrier
    attr_accessor :good_ids, :bad_ids

    def initialize(good_ids, bad_ids)
        @good_ids = IdsList.new(good_ids)
        @bad_ids = IdsList.new(bad_ids)
    end

    def check_id(user_id)
        if self.good_ids.verify(user_id)
            return "Passed"
        end

        if self.bad_ids.verify(user_id)
            return "Bad id -> call police"
        end

        return "Wrong id"
    end
end