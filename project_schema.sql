create table players(
	PlayerID	int,
    TeamID		int,
    FirstName	varchar(255),
    LastName	varchar(255),
    Position	varchar(2),
    CONSTRAINT chk_Position CHECK (Position IN ('QB', 'RB', 'WR')),
    Touchdowns	int,
    TotalYards	int,
    Salary		int,
    primary key (PlayerID),
    foreign key (TeamID) references teams (TeamID));
    
create table games(
	GameID		int,
    Date		DATE,
    Stadium		varchar(255),
    Result		varchar(1),
    CONSTRAINT chk_Result CHECK (Result IN ('W', 'L', 'T')),
    Attendance	int,
    TicketRevenue int,
    primary key (GameID));
    
create table teams(
	TeamID		int,
    TeamName	varchar(255),
    City		varchar(255),
    primary key (TeamID));
    
create table play(
	PlayerID	int,
    GameID		int,
    primary key (PlayerID, GameID), # Opinions?
    foreign key (PlayerID) references players (PlayerID),
    foreign key (GameID) references games (GameID));
