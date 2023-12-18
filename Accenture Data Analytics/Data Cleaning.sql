Use project
SELECT * FROM content

--Removing column 'URL' from table as it is of no use
ALTER TABLE content 
DROP COLUMN URL

-- Renaming column 'Type' to 'Content_Type'
SP_RENAME 'Content.Type' , 'Content_Type'

UPDATE content
SET category = TRIM(BOTH '"' FROM category)

SELECT * FROM Reactions
-- Removing null values
DELETE FROM Reactions WHERE Type IS Null

-- Renaming column 'Type' to 'Reaction_Type'
SP_RENAME 'Reactions.Type' , 'Reaction_Type'

