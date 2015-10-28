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
    while counter < num_of_groups
      account_group = []
      i = 0
      while i < 4
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
        while i < 5
          num_of_names -= 1
          account_group.push(names[j])
          names.pop
          i += 1
          j -= 1
        end
      elsif num_of_names > remainder
        while i < 4
        num_of_names -= 1
        account_group.push(names[j])
        names.pop
        i += 1
        j -= 1
        end
      else
        num_of_names -= 1
        account_group.push(names[j])
        names.pop
        i += 1
        j -= 1
      end
      puts num_of_names
      collection_of_groups.push(account_group)
      puts account_group
      puts "The group size is #{account_group.size}"
      puts "the group number is #{group_counter}"
      group_counter += 1
      counter += 1
    end
  end

  puts "The number of groups is #{collection_of_groups.size}"
  puts "the number of names left in the original list is #{names.size}"
  p collection_of_groups

end

def check_modulo(names)
  remainder = names.size % 5
end

def check_num_groups(names)
  num_of_groups = names.size / 5
end

=begin
def create_acct_group(names)
  num_of_groups = check_num_groups(names)
  remainder = check_modulo(names)
  account_group = []
  names.shuffle!
    i = 0
    while i < 4
          account_group.push(names[i])
          i += 1
    end
  p account_group

=end


create_acct_group(name_list)




# cd dbc/phase-0/week-5