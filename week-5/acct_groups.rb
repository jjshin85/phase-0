=begin

Pseudocode:

input: names of members in cohort
output: list of groups consisting of 3-5 members

First, create an array with the list of names of cohort members.
Next, randomly assign them into groups with an iterator. Use a method that picks names at random.
The iterator will create a groups of 5 with no groups having less than 3 people. We can use IF/ELSE statements to check this.

=end

def make_array (string)

  names_array = string.split("\n")
  return names_array
end

name_list = make_array("Caroline Artz
Syema Ailia
Alan Alcesto
Daniel Andersen
James Artz
Darius Atmar
Brian Bensch
Nicola Beuscher
Kris Bies
Logan Bresnahan
William Brinkert
Laura C.
Scott Chou
Bernice Anne W Chua
Abraham Clark
Jon Clayton
Kevin Corso
Jacob Crofts
John D.
Katy D.
Emmanuel Kaunitz
Amaar Fazlani
Solomon Fernandez
Edward Gemson
Jamar Gibbs
Chris Gomes
Will Granger
Christopher M. Guard
Adell H.
James Hwang
Matt H.
Michael H.
Peter H.
Ryan Ho
Igor Kazimirov
Walter Kerr
Karla King
Becky Lehmann
Malia Lehrer
Carolina Medellin
Timothy Meixell
Lorena Mesa
Chris Miklius
Joshua Monzon
Shea Munion
Bryan Munroe
Neal Peters
Trevor Newcomb
Aleksandra Nowak
Morgan O.
Fatma Ocal
Van Phan
Luis Fernando Plaz
Natalie Polen
Alicia Quezada
Celeen R.
Jessie Richardson
Gary S.
Iulia S.
Nimi Samocha
Zach Schatz
Tal Schwartz
Pratik Shah
Josh Shin
Shawn Spears
Sasha Tailor
Nil Thacker
Natasha Thapliyal
Sabrina Unrein
Brian Wagner
Clinton Weber
Gregory Wehmeier
Michael Whelpley
Peter N Wood
Caitlyn Y.
Ryan Zell")

def check_modulo(names)
  remainder = names.size % 5
end

def check_num_groups(names)
  num_of_groups = names.size / 5
end

def create_acct_group(names)
  num_of_names = names.size
  puts num_of_names

  num_of_groups = check_num_groups(names)
  remainder = check_modulo(names)
  num_of_groups += remainder
  names.shuffle!
  counter = 0
  group_counter = 1
  j = num_of_names -1
  collection_of_groups = []

  if ((names.size % 5) == 0) || ((names.size % 5) > 2)
    #Check group size, if the number of students is evenly divisble by 5 or if the remainder is 3 or greater.
    while counter < num_of_groups
      account_group = []
      i = 0
      while i < 4
        #iterate through list until groups size is five
        account_group.push(names[j])
        names.pop
        i += 1
        j -= 1

      end
      collection_of_groups.push(account_group)
      puts account_group
      puts "The group size is #{account_group.size}"
      puts "the group number is #{group_counter}"
      group_counter += 1
      counter += 1
    end

  else
    while counter < num_of_groups
      account_group = []
      i = 0
      if num_of_names > (10 + remainder)
        #create groups of 5 until it needs to make smaller group sizes
        while i < 5
          num_of_names -= 1
          account_group.push(names[j])
          i += 1
          j -= 1
        end
      elsif num_of_names >= remainder
        while i < 4
        num_of_names -= 1
        account_group.push(names[j])
        i += 1
        j -= 1
        end
      else
        num_of_names -= 1
        account_group.push(names[j])
        i += 1
        j -= 1
      end
      collection_of_groups.push(account_group)
      puts account_group
      puts "The group size is #{account_group.size}"
      puts "the group number is #{group_counter}"
      group_counter += 1
      counter += 1
    end
  end

  puts "The number of groups is #{collection_of_groups.size}"
  p collection_of_groups

end

create_acct_group(name_list)


=begin

- What was the most interesting and most difficult part of this challenge?
  They were one and the same, iterating through a nested array and figuring out the flow of the program and the order I needed to declare variables and where to put them.
- Do you feel you are improving in your ability to write pseudocode and break the problem down?
  Yes, usually I get the main parts of the problem, but there's usually some aspect that I didn't think about and adjustment I need to make from my original plan.
- Was your approach for automating this task a good solution? What could have made it even better?
  I probably could've added a few more groups of four so there wouldn't be any groups of three. But this challenge took a lot of time and I couldn't really add more complexity on top of it.
- What data structure did you decide to store the accountability groups in and why?
  Nested arrays, because I had to divide them into groups, and then fill in those groups.
- What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
  I mainly took out notes and variables I added to help me keep track of what was happening in the code. I added a lot of comments and outputed variable values to debug the program.

=end