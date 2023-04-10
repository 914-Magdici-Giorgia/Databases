

-- modify the type of a column
CREATE OR ALTER PROCEDURE setNoRaceWinsFromBestTeamsDecimal
AS
	ALTER TABLE BestTeams ALTER COLUMN no_race_wins TINYINT
GO
CREATE OR ALTER PROCEDURE setNoRaceWinsFromBestTeamsInt
AS
	ALTER TABLE BestTeams ALTER COLUMN no_race_wins INT
GO

-- add / remove a column


CREATE OR ALTER PROCEDURE addNumberOfRacesToDrivers
AS
	ALTER TABLE Drivers ADD no_races INT
GO

CREATE OR ALTER PROCEDURE removeNumberOfRacesToDrivers
AS
	ALTER TABLE Drivers DROP COLUMN no_races 
GO





-- add/remove a DEFAULT constraint

CREATE OR ALTER PROCEDURE addDefaultToWorldChampionshipsFromDrivers
AS
	ALTER TABLE Drivers ADD CONSTRAINT default_WC DEFAULT(10) FOR WorldChampionships
GO

CREATE OR ALTER PROCEDURE removeDefaultToWorldChampionshipsFromDrivers
AS
	ALTER TABLE Drivers DROP CONSTRAINT default_WC
Go




-- create/drop a table


CREATE OR ALTER PROCEDURE addChassis
AS
	CREATE TABLE Chassis(
		chassis_id INT NOT NULL,
		name VARCHAR(20) NOT NULL,
		team_id INT NOT NULL,
		CONSTRAINT chassis_pk PRIMARY KEY(chassis_id),
		)
GO

CREATE OR ALTER PROCEDURE dropChassis
AS
	DROP TABLE Chassis
GO



-- add/remove a primary key


CREATE OR ALTER PROCEDURE addTeamAndNamePrimaryKeyChassis
AS
	ALTER TABLE Chassis DROP CONSTRAINT chassis_pk
	ALTER TABLE Chassis ADD CONSTRAINT chassis_pk PRIMARY KEY(team_id, name)
GO

CREATE OR ALTER PROCEDURE removeTeamAndNamePrimaryKeyChassis
AS
	ALTER TABLE Chassis DROP CONSTRAINT chassis_pk
	ALTER TABLE Chassis ADD CONSTRAINT chassis_pk PRIMARY KEY(chassis_id)
GO



-- add/remove a candidate key


CREATE OR ALTER PROCEDURE addCandidateKeyDrivers
AS
	ALTER TABLE Drivers ADD CONSTRAINT Drivers_CK UNIQUE(id,team_id)
GO


CREATE OR ALTER PROCEDURE removeCandidateKeyDrivers
AS
	ALTER TABLE Drivers DROP CONSTRAINT Drivers_CK
GO



-- add / remove a foreign key

CREATE OR ALTER PROCEDURE addForeignKeyChassis
AS
	ALTER TABLE Chassis ADD CONSTRAINT Team_FK FOREIGN KEY(team_id) REFERENCES Teams(id)
GO

CREATE OR ALTER PROCEDURE removeForeignKeyChassis
AS
	ALTER TABLE Chassis DROP CONSTRAINT Team_FK 
GO



-- a table that contains the current version of the database schema

CREATE TABLE versionTable (
	version INT
)



INSERT INTO versionTable 
VALUES
	(1) 

CREATE TABLE procedureTable (
	initial_version INT,
	final_version INT,
	procedure_name VARCHAR(MAX),
	PRIMARY KEY (initial_version, final_version)
)

INSERT INTO procedureTable
VALUES
	(1, 2, 'setNoRaceWinsFromBestTeamsDecimal'),
	(2, 1, 'setNoRaceWinsFromBestTeamsInt'),
	(2, 3, 'addNumberOfRacesToDrivers'), 
	(3, 2, 'removeNumberOfRacesToDrivers'),
	(3, 4, 'addDefaultToWorldChampionshipsFromDrivers'),
	(4, 3, 'removeDefaultToWorldChampionshipsFromDrivers'),
	(4, 5, 'addChassis'),
	(5, 4, 'dropChassis'),
	(5, 6, 'addTeamAndNamePrimaryKeyChassis'),
	(6, 5, 'removeTeamAndNamePrimaryKeyChassis'),
	(6, 7, 'addCandidateKeyDrivers'),
	(7, 6, 'removeCandidateKeyDrivers'),
	(7, 8, 'addForeignKeyChassis'),
	(8, 7, 'removeForeignKeyChassis')


-- procedure to bring the database to the specified version

CREATE PROCEDURE goToVersion(@newVersion INT) 
AS
	DECLARE @current_version INT
	DECLARE @procedureName VARCHAR(MAX)
	SELECT @current_version = version FROM versionTable

	IF (@newVersion > (SELECT MAX(final_version) FROM procedureTable) OR @newVersion < 1)
		RAISERROR ('Bad version', 10, 1)
	ELSE
	BEGIN
		IF @newVersion = @current_version
			PRINT('You are already on this version!');
		ELSE
		BEGIN
			IF @current_version > @newVersion
			BEGIN
				WHILE @current_version > @newVersion 
					BEGIN
						SELECT @procedureName = procedure_name FROM procedureTable WHERE initial_version = @current_version AND final_version = @current_version-1
						PRINT('Executing ' + @procedureName);
						EXEC (@procedureName)
						SET @current_version = @current_version - 1
					END
			END

			IF @current_version < @newVersion
			BEGIN
				WHILE @current_version < @newVersion 
					BEGIN
						SELECT @procedureName = procedure_name FROM procedureTable WHERE initial_version = @current_version AND final_version = @current_version+1
						PRINT('Executing ' + @procedureName);
						EXEC (@procedureName)
						SET @current_version = @current_version + 1
					END
			END

			UPDATE versionTable SET version = @newVersion
		END
	END
GO

EXEC goToVersion 1

INSERT INTO Drivers (id, driver_name) values (101,'mama')
INSERT INTO Drivers (id, driver_name) values (102,'csdf')
select*
from Drivers
SELECT *
FROM versionTable

SELECT *
FROM procedureTable