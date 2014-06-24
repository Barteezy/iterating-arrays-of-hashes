class Dogs
  POOR      = (0..5).to_a.sample
  AVERAGE   = (6..10).to_a.sample
  EXCELLENT = (11..15).to_a.sample

  def initialize
    joe   = {
      :name => {:first => "Joe", :last=> "Smith"},
      :owner_quality => EXCELLENT
    }
    sarah = {
      :name => {:first => "Sarah", :last => "Darnum"},
      :owner_quality => AVERAGE
    }
    andrew = {
      :name => {:first => "Andrew", :last => "Beter"},
      :owner_quality => AVERAGE
    }

    @dogs = [
      {name: "Fido",     size: :large,  owner: joe},
      {name: "Yapper",   size: :small,  owner: joe},
      {name: "Bruiser",  size: :large,  owner: joe},
      {name: "Tank",     size: :huge,   owner: sarah},
      {name: "Beast",    size: :large,  owner: sarah},
      {name: "Harleigh", size: :medium, owner: andrew},
      {name: "Trixie",   size: :small,  owner: andrew}
    ]
  end

  # only edit below this line

  def small_dogs
    small_dog_array = []
    @dogs.each do |dog|
      small_dog_array << dog if dog[:size] == :small
    end
    small_dog_array
  end

  def huge_dog
    huge_dog_array = []
    @dogs.each do |dog|
      huge_dog_array << dog if dog[:size] == :huge

    end
      huge_dog_array.first
  end

  def large_dog_names
    large_dog_name_array = []
    @dogs.each do |dog|
      large_dog_name_array << dog[:name] if dog[:size] == :large
    end
    large_dog_name_array
  end

  def joes_large_dogs
    joes_large_dogs_array = []
    @dogs.each do |dog|
      joes_large_dogs_array << dog[:name] if dog[:owner][:name][:first] == "Joe" && dog[:size] == :large
    end

    joes_large_dogs_array
  end

  def sizes
    sizes_array = []
    @dogs.each do |dog|
      sizes_array << dog[:size]
    end

    sizes_array.uniq
  end

  def owners
    owners = []
    @dogs.each do |dog|
      owners << "#{dog[:owner][:name][:first]} #{dog[:owner][:name][:last]}"
    end
    owners.uniq
  end

  def average_owners
    average_owners = []
    @dogs.each do |dog|
      average_owners << "#{dog[:owner][:name][:first]} #{dog[:owner][:name][:last]}" if dog[:owner][:owner_quality] == AVERAGE
    end
    average_owners.uniq
  end

  def to_s
  
    @dogs.each do |dog|
      "#{dog[:owner][:name][:first]}"
    end


  end





end
