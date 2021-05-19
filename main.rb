require_relative "barrier"

good_ids = [12, 32, 47, "23A", 51, 87]
bad_ids = [11, 9, "B67", "b", 19, 22]

newBarrier = Barrier.new(good_ids, bad_ids)
puts newBarrier.check_id(32)