require_relative "ids_list"

module Barrier
    @good_ids = IdsList.new(["12", "32", "47", "23A", "51", "87"])
    @bad_ids = IdsList.new(["11", "9", "B67", "b", "19", "22"])

    def check_id(user_id)
        if @good_ids.verify(user_id)
            return "Passed"
        end

        if @bad_ids.verify(user_id)
            return "Bad id -> call police"
        end

        return "Wrong id"
    end
end