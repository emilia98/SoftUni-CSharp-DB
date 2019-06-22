USE "Ads";

SELECT *
FROM 
	"Ads"
WHERE 
	CategoryId IS NULL 
	OR 
	TownId IS NULL 
	OR 
	ImageDataURL IS NULL
ORDER BY 
	Id ASC;

/*
Id	Title	Text	ImageDataURL	OwnerId	CategoryId	TownId	Date	StatusId
1	Just a Joke	I sell my free time. 15 EUR / hour	NULL	956b34b3-d4dc-4601-a248-9bc7a6723611	NULL	NULL	2014-12-24 23:53:17.000	3
2	2 bed apartment to let	Available immediately.

Bright second floor 2 bed apartment in Waterford City.

2 double rooms one ensure. Main bathroom with full size bath.

Kitchen diner. Living room with floor to ceiling windows. Looking out onto railway square green space and old city tower and walls.

Secure complex with telephone security access to front and rear. Lift and stair access.

Price: 550 EUR	NULL	10216432-a65b-4a15-951f-64b3b93002ce	3	5	2014-12-24 20:21:11.000	3
5	Job as Housekeeper	I am looking for a job as housekeeper.	NULL	956b34b3-d4dc-4601-a248-9bc7a6723611	4	6	2014-12-30 23:43:30.000	3
7	Afterschool Bus Driver	Driver with D1 license needed ASAP for approximately 2 hours per day, 5 days a week collecting children with a staff member from local schools and dropping back to afterschool facility. Occasional weekend work can be offered also.	NULL	6f8364ff-c364-4a98-bb3e-beec1f9ff38a	4	13	2014-12-27 17:11:00.000	3
11	Free cat. Great hunter	Free tom cat, 6 months. Great hunter on a farm. Text or call.	NULL	956b34b3-d4dc-4601-a248-9bc7a6723611	10	12	2014-12-24 17:38:58.000	3
12	Free cat	Free tom cat, 3 months old.	NULL	9f2ad132-4496-4636-b741-004161190a9a	10	9	2014-12-26 05:14:30.000	2
13	Free dog	Free dog, 5 months old.	NULL	9f2ad132-4496-4636-b741-004161190a9a	10	12	2015-01-01 20:07:33.000	1
14	Free MP3 Player	Free MP3 player, broken.	NULL	956b34b3-d4dc-4601-a248-9bc7a6723611	2	9	2014-12-24 05:15:37.000	2
21	Free porno	Beautiful free Asian porno (Jan 2015)	NULL	9f2ad132-4496-4636-b741-004161190a9a	5	NULL	2015-01-02 11:33:00.000	4
23	2012 Nissan Altima 3.5 SR 2dr Coupe CVT	2012 Nissan Altima 3.5 SR 2dr Coupe CVT for sale: 15,800 USD. 3.5 SR trim. ONLY 2,876 Miles! Sunroof, CD Player, Keyless Start, iPod/MP3 Input, Alloy Wheels, Overhead Airbag.	NULL	10216432-a65b-4a15-951f-64b3b93002ce	1	11	2015-02-02 22:44:00.000	2
27	Pharmacy Technician Job (Walgreens)	Pharmacy Technician 
Walgreens - Marion, IA
JOB DESCRIPTION

At Walgreens, we help people get, stay and live well. That’s our core purpose and the difference we make in people’s lives every day. Our purpose has shaped the direction of our company since Charles R. Walgreen Sr. founded his first drugstore in 1901, and it still does today.

Our team members make that purpose come to life in our over 7,800 stores in all 50 states, the District of Columbia and Puerto Rico, in our call centers, distribution centers, on-site clinics, specialty pharmacies and corporate offices. In fact, those daily demonstrations of our purpose have helped Walgreens become an industry leader and a household name.

Walgreens has something for everyone who wants to build a successful career. Here, you’ll find supportive co- workers, an innovative environment and the tools you need to grow your skills, help build healthy communities and advance your career.

As the nation's leading pharmacy, we seek professional individuals to fill key positions at Walgreens, ensuring our leadership and taking us to even higher levels of growth, profitability, innovation and customer service. Walgreens is an equal opportunity employer and welcomes individuals of diverse talents and backgrounds. Walgreens promotes and supports a drug-free and smoke-free workplace.

At Walgreens, you have the best of both worlds: the training, support and resources of one of America's largest retail organizations behind you, plus the encouragement to be a true entrepreneur.
	NULL	956b34b3-d4dc-4601-a248-9bc7a6723611	4	NULL	2015-01-31 12:00:00.000	4
*/