require_relative "testing_library"

celebs = ["Britney", "Miley", "Madonna", "Cher", "Bruno", "Michael"]

def how_many_celebrities(celebs)
  celebs.count
end


def name_lengths(celebs)
  celebs.map(&:length)
end


def reverse_celebrity_names(celebs)
  celebs.map(&:reverse)
end


def first_three_celebrities_with_each(celebs)
  first_three = []
  celebs.each { |x| first_three << x if three.size < 3 }
  three
end


def first_three_celebrities_without_each(celebs)
  celebs[0..2]
end


def reverse_case_celebrities_names(celebs)
  celebs.map { |x| x.swapcase}
end


def sum_of_all_celebrity_name_lengths(celebs)
  celebs.inject(0) {|sum, x| sum + x.length }
end


def celebrities_with_long_names(celebs)
 celebs.map { |x| x.length > 6 }
end


check("how_many_celebrities", how_many_celebrities(celebs) == 6)
check("name_lengths", name_lengths(celebs) == [7, 5, 7, 4, 5, 7])
check("reverse_celebrity_names", reverse_celebrity_names(celebs) == ["yentirB", "yeliM", "annodaM", "rehC", "onurB", "leahciM"])
check("first_three_celebrities_with_each", first_three_celebrities_with_each(celebs) == ["Britney", "Miley", "Madonna"])
check("first_three_celebrities_without_each", first_three_celebrities_without_each(celebs) == ["Britney", "Miley", "Madonna"])
check("reverse_case_celebrities_names", reverse_case_celebrities_names(celebs) == ["bRITNEY", "mILEY", "mADONNA", "cHER", "bRUNO", "mICHAEL"])
check("sum_of_all_celebrity_name_lengths", sum_of_all_celebrity_name_lengths(celebs) == 35)
check("celebrities_with_long_names", celebrities_with_long_names(celebs) == [true, false, true, false, false, true])
