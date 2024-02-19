CREATE TABLE campaign_db(
	cf_id VARCHAR PRIMARY KEY NOT NULL,
	contact_id INTEGER NOT NULL,
	company_name VARCHAR(50) NOT NULL,
	description VARCHAR (30) NOT NULL,
	goal INTEGER NOT NULL,
	pledged INTEGER NOT NULL,
	outcome CHAR(10) NOT NULL,
	backers_count INTEGER NOT NULL,
	country CHAR(5) NOT NULL,
	currency CHAR(5) NOT NULL,
	launched_date VARCHAR NOT NULL,
	end_date VARCHAR NOT NULL,
	category_id VARCHAR (10) NOT NULL,
	subcategory_id VARCHAR (10) NOT NULL
);



CREATE TABLE campaign_db (
    cf_id VARCHAR NOT NULL,
    contact_id INTEGER NOT NULL,
    company_name VARCHAR(100) NOT NULL,
    description TEXT NOT NULL,
    goal FLOAT NOT NULL,
    pledged FLOAT NOT NULL,
    outcome VARCHAR(20) NOT NULL,
    backers_count INTEGER NOT NULL,
    country CHAR(2) NOT NULL,
    currency CHAR(3) NOT NULL,
    launched_date VARCHAR NOT NULL,
    end_date VARCHAR NOT NULL,
    category_id CHAR(10) NOT NULL,
    subcategory_id CHAR(10) NOT NULL,
	CONSTRAINT "pk_campaign" PRIMARY KEY ("cf_id")
);

CREATE TABLE category (
	category_id CHAR(10) NOT NULL,
	category CHAR(15) NOT NULL,
	CONSTRAINT "pk_category" PRIMARY KEY (
        "category_id")
);

CREATE TABLE subcategory(
	subcategory_id CHAR(10) NOT NULL,
	subcategory VARCHAR(30) NOT NULL,
	CONSTRAINT "pk_subcategory" PRIMARY KEY (
		"subcategory_id")
);

CREATE TABLE contacts(
	contact_id INTEGER NOT NULL,
	first_name CHAR(15) NOT NULL,
	last_name CHAR(15) NOT NULL,
	email VARCHAR(50) NOT NULL,
	CONSTRAINT "pk_contact_id" PRIMARY KEY (
		"contact_id")
);

CREATE TABLE crowdfunding_db(
	cf_id VARCHAR PRIMARY KEY NOT NULL,
	contact_id INTEGER NOT NULL,
	company_name VARCHAR(50) NOT NULL,
	blurb VARCHAR (30) NOT NULL,
	goal INTEGER NOT NULL,
	pledged INTEGER NOT NULL,
	outcome CHAR(10) NOT NULL,
	backers_count INTEGER NOT NULL,
	country	CHAR(5) NOT NULL,
	currency CHAR(5) NOT NULL,
	launched_at VARCHAR NOT NULL,
	deadline VARCHAR NOT NULL,
	staff_pick BOOL NOT NULL,
	spotlight BOOL NOT NULL,
	category_sub_category VARCHAR (10) NOT NULL
);

DROP TABLE campaign_db
DROP TABLE category
DROP TABLE subcategory
DROP TABLE contacts
DROP TABLE crowdfunding_db

SELECT * FROM campaign_db
SELECT * FROM category
SELECT * FROM subcategory
SELECT * FROM contacts
SELECT * FROM crowdfunding_db

ALTER TABLE "campaign_db" ADD CONSTRAINT "fk_campaign_category_id" FOREIGN KEY("category_id")
REFERENCES "category" ("category_id");

ALTER TABLE "campaign_db" ADD CONSTRAINT "fk_campaign_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "subcategory" ("subcategory_id");

ALTER TABLE "campaign_db" ADD CONSTRAINT "fk_campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES "contacts" ("contact_id");