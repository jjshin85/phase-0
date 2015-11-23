##8.5 More Schemas##

###Release 6: Create a One-to-one Schema###
- What is a one-to-one database?
  A one-to-one database is when one object of data is related to only one other object of data. For example, a capital city is related to a state, but there's only 1 capital city for each state and onl 1 state for each capital city. A one-to-many relationship would be where one piece of data has a relationship to many other pieces of data. For example, an author may have written 10 books, that author represents one piece of data, and that data is related to many other pieces of data (the books they have written).

- When would you use a one-to-one database? (Think generally, not in terms of the example you created).
  When a piece of data corresponds to only one other object. Unless we consider polygamy, marriage would be a good example: there's a one-to-one relationship between spouse and spouse.

- What is a many-to-many database?
  When there are multiple relationships between multiple pieces of data. For example, if you play six-degrees of Kevin Bacon you would see that Kevin Bacon costarred with Kiefer Sutherland in Flatliners, and Kiefer Sutherland is the son of Donald Sutherland, who starred in a movie with Jennifer Laurence. Mapping these relationships, which may not be the same kind of relationships (Kevin Bacon's relationship with Kiefer Sutherland is that they acted together, but Kiefer Sutherland's relationship with Donald Sutherland is that they're family), requires a many-to-many database.

- When would you use a many-to-many database? (Think generally, not in terms of the example you created).  You would use a many-to-many database when their are multiple relationships between multiple objects. Again, it might be helpful to think of the 6 degrees of separation game.

- What is confusing about database schemas? What makes sense?
  What's confusing about schemas is tracking the relationships because they work more like a web than a flowchart, which is how I generally think of data structures. I think it makes a lot of sense because it keeps the relationships intact and prevents duplicating data, and the fact that it works more like a web is very interesting.
