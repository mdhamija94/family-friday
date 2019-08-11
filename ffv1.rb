people = File.readlines("apartment_list.txt").map(&:chomp)
apartment_list = Array.new(people)

def fam_fri(people)
    groups = group_builder(people)

    people.shuffle!

    groups.each do |group|
        group << people.pop until group.size == 3 || people.empty?
    end

    unless people.empty?
        groups.each do |group|
            group << people.pop until group.length == 4 || people.empty?
        end
    end

    groups
end

def group_builder(people)
    num_groups = 0
    
    if people.length % 4 == 0
        num_groups = people.length / 4
    else
        num_groups = (people.length / 4) + 1
    end

    Array.new(num_groups) { Array.new }
end

puts "Participant Count: #{apartment_list.length}"

groups = fam_fri(apartment_list)

groups.each_with_index do |group, i|
    puts "Group #{i + 1}: #{group}"
end