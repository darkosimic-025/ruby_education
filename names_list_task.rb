class NameList
  def initialize
    @names = []
  end

  def add_name(name)
    @names << name
    puts "#{name} has been added to the list"
  end

  def remove_name(name)
    if @names.include? name
      @names.delete name
      puts "#{name} has been removed from the list"
    else
      puts "#{name} isn't in the list"
    end
  end

  def shuffle_names
    @names.shuffle!
    puts "The names have been shuffled."
  end

  def display_names
    puts "Current names in the list: #{@names.join(', ')}"
  end
end

name_list = NameList.new

name_list.add_name("Darko")
name_list.add_name("Lana")
name_list.add_name("Aleksa")
name_list.add_name("Luka")

name_list.remove_name("Darko")

name_list.shuffle_names

name_list.display_names
