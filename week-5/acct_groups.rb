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
  print names_array
  return names_array
end

make_array("Caroline Artz
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
  names.shuffle!
  j = 0
  i = names.size - 1
  account_group = []
  if (names % 5) != 0
    until i < 0
      for j in 0..4
        account_group[j] = names[i]
        j += 1
        i -= 1
      end
      j = 0
    end


  else


end

def create_group_array()
  if account_group