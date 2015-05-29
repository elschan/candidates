require_relative 'candidates'

def experienced?(candidate)
candidate[:years_of_experience] >= 2 
end

def find(id) # fix bug for return if candidate:id!= 
    @candidates.each do |candidate|
return candidate if candidate[:id] == id 
end
end


def enough_git_points?(candidate)
  candidate[:github_points] >= 100  
end

def enough_languages?(candidate)
  candidate[:languages].include?('Ruby' || 'Python')
end

def applied_recent?(candidate)
  candidate[:date_applied] >= 15
end

def old_enough?(candidate)
  candidate[:age] >= 17
end

def qualified_candidates?(candidates)
    candidates.each do |candidate|
    puts candidate if 
    old_enough?(candidate) &&
    applied_recent?(candidate) &&
    enough_languages?(candidate) &&
    enough_git_points?(candidate) &&
    experienced?(candidate)
end
end


def ordered_by_qualifications(candidates)
  candidates.sort_by {|candidate| [candidate[:years_of_experience], candidate[:github_points]]}.reverse
end






