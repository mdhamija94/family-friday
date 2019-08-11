apartment_list = %w(Mohit Laura Evan Sue Gabby Bre Max John Chris Jax Frida Kelsey Jamiah Liz Ryan Victor Ian Calvin Benson Jack KK Aitor Chee Lauren Priya JZ)


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

groups.each do |group|
    puts "#{group}"
end