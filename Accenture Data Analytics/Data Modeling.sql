Use project
SELECT * FROM content
SELECT * FROM Reactions
SELECT * FROM ReactionTypes

CREATE TABLE Combine( User_Id varchar(500), Content_ID varchar(500),Content_Type char(500), Category char(500), 
Reaction_Type char(500), Sentiment char(500),  Date_Time datetime, Score int)

INSERT INTO Combine( User_Id, Content_ID, Content_Type, Category, Reaction_Type, Sentiment, Date_Time, Score)
SELECT c.User_id, 
		r.Content_ID, 
		c.Content_Type,
		c.Category,
		r.Reaction_Type,
		rt.Sentiment,
		r.DateTime,
		rt.score
		from reactions as r
inner join content as c on r.Content_ID = c.Content_ID
inner join reactiontypes as rt on r.Reaction_Type= rt.Type

SELECT * FROM Combine


