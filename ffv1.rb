apartment_list = File.readlines("apartment_list.txt").map(&:chomp)

def fam_fri(participants)
    groups = group_builder(participants.length)

    participants.shuffle!

    groups.each do |group|
        group << participants.pop until group.size == 3 || participants.empty?
    end

    unless participants.empty?
        groups.each do |group|
            group << participants.pop until group.length == 4 || participants.empty?
        end
    end

    groups
end

def group_builder(num_participants)
    num_groups = 0
    
    if num_participants % 4 == 0
        num_groups = num_participants / 4
    else
        num_groups = (num_participants / 4) + 1
    end

    Array.new(num_groups) { Array.new }
end

groups = fam_fri(apartment_list)

puts "Participant Count: #{apartment_list.length}"
groups.each_with_index do |group, i|
    puts "Group #{i + 1}: #{group}"
end