/*---------------------------*/
/* データベースを新規作成         */
/*---------------------------*/
CREATE DATABASE sgrpg;
USE sgrpg;

/*---------------------------*/
/* テーブルを作成               */
/*---------------------------*/
-- ユーザー
CREATE TABLE User(
    id    integer AUTO_INCREMENT,
    lv    integer,  -- レベル
    exp   integer,  -- 経験値
    money integer,  -- 所持金

    PRIMARY KEY(id)
);

-- キャラクター --
CREATE TABLE Chara(
	id	integer AUTO_INCREMENT,
	name varchar(64),
	
	PRIMARY KEY(id)
);

-- ユーザーが所持しているキャラクター --
CREATE TABLE UserChara(
	id	integer AUTO_INCREMENT,
	user_id	integer,
	chara_id	integer,
	
	PRIMARY KEY(id)
);

