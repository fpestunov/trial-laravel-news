/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

DELETE FROM `categories`;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
	(1, 'tech', '2019-03-07 10:41:47', '2019-03-07 10:41:49'),
	(2, 'world', '2019-03-07 10:41:47', '2019-03-07 10:41:49'),
	(3, 'style', '2019-03-07 10:41:47', '2019-03-07 10:41:49'),
	(4, 'sport', '2019-03-07 10:41:47', '2019-03-07 10:41:49'),
	(5, 'travel', '2019-03-08 20:07:24', '2019-03-08 20:07:25');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;

DELETE FROM `news`;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` (`id`, `category_id`, `title`, `body`, `created_at`, `updated_at`) VALUES
	(1, 1, 'SpaceX Crew Dragon capsule, built to carry humans', 'SpaceX will bring its Crew Dragon spacecraft home from the International Space Station Friday, capping its historic first test flight.\n\nIf all goes well, it\'ll bring SpaceX one step closer to ending the United States\' years-long reliance on Russia to fly NASA astronauts to and from the ISS. Crew Dragon is SpaceX\'s first capsule built to carry humans.\nAt about 2:30 am ET on Friday, Crew Dragon will unlatch from the ISS and continue to zip through orbit for the next five hours. It\'ll then spend about 15 minutes firing its engines to slow its descent, allowing the spacecraft to safely cut back through the Earth\'s thick atmosphere.\nFinally, Crew Dragon, will deploy a plume of parachutes and drift to a landing in the Atlantic Ocean where recovery ships will be standing by to haul it out of the water.\nThe trip back to Earth will be a final key test for Crew Dragon, which launched an uncrewed demonstration mission on Saturday and linked up with the ISS on Sunday.', '2019-03-05 15:51:39', '2019-03-08 15:51:39'),
	(2, 1, 'Airbnb acquires last-minute hotel booking app HotelTonight', 'Airbnb has struck a deal that will help bolster its boutique hotel business.\nThe company announced Thursday it signed an agreement to acquire HotelTonight, a last-minute hotel booking startup.\nHotelTonight, founded in 2010, is best known for its app and website that allow customers to book discounted hotel rooms — ranging from boutique hotels to large chains — on short notice. While the acquisition price was not disclosed, HotelTonight was last valued at $463 million in 2017.\nAirbnb, which is worth about $31 billion, previously said it is on a mission to build a platform that helps people with all aspects of travel, including where to stay, what to do and how to get there. The acquisition will help Airbnb diversify its business as it gears up to go public.\nBut the move could also spur backlash from the hotel industry, which has been a vocal adversary to Airbnb and has pushed for regulations on short-term rental businesses. Although HotelTonight lists excess inventory from some big hotel brands, those companies may take issue with the concept now that the app is part of Airbnb.', '2019-03-04 15:53:47', '2019-03-08 15:53:47'),
	(3, 2, '5 examples of women taking climate action', 'Climate-related disasters, extreme weather events and depleting water sources affect everyone on earth, but studies show that women are disproportionately impacted by global warming.\nWomen in developing countries are particularly at risk as they are often poorer and more dependent on natural resources than men, according to the United Nations.\nOn International Women\'s Day, we profile five initiatives led by women fighting for a greener planet.\nThree hundred women from 100 different countries are sailing to remote parts of the planet over the next two years to raise awareness of the plastic crisis plaguing our oceans.\nBritish skipper Emily Penn launched the all-female eXXpedition voyages in 2014 because she was shocked by the "trillions of pieces of microplastics" she came across while sailing around the world.\nEXXpedition\'s aim is to highlight the extent of the plastic crisis and gain a better understanding of the different types of plastic in the oceans, Penn told CNN.', '2019-03-03 15:57:59', '2019-03-08 15:57:59'),
	(4, 2, 'Millions of Britons should renew passports by Friday', 'UK consumer group Which? has warned that millions of Britons could see holiday plans disrupted if they don\'t renew their passport by Friday.\nWhich? claims that 3.5 million people could be prevented from entering 26 countries in the Schengen zone -- including France, Italy and Spain -- in the event of a no-deal Brexit.\nUK passport holders were previously told that they would require six months validity on their passport on the day of travel in order to enter Schengen countries after Brexit.\nHowever a legal loophole means that those with up to 15 months\' validity could be forced to stay at home if Britain crashes out of the EU without a deal.\nThe deadline to reach a deal is March 29, three weeks from Friday.\nA new UK passport takes three weeks to arrive using the standard service, leading to claims of a Friday "deadline," and Which? warns that the passport office could be busier than normal as more people realize they need a new document in order to travel.\nHowever expedited services are available for an extra fee, and there is still time for the UK and the EU to reach a deal and end the threat of travel disruption.', '2019-03-02 15:59:11', '2019-03-08 15:59:11'),
	(5, 2, 'North Korea acknowledges Trump-Kim summit ended without agreement', 'North Korea has acknowledged for the first time that February\'s Hanoi summit between its leader, Kim Jong Un, and US President Donald Trump ended "unexpectedly without an agreement."\nDespite previously painting the Trump-Kim summit in Vietnam in a positive light, state news agency KCNA said on Friday that the meeting hadn\'t gone as well as expected.\n"The public at home and abroad that had hoped for success and good results from the second DPRK-US summit in Hanoi are feeling regretful, blaming the US for the summit that ended unexpectedly without an agreement," the report said.\nKCNA had previously showcased the Trump-Kim summit through a carefully edited documentary, presenting a triumphant arrival by Kim in his bullet-proof train, to huge crowds lining the streets for a glimpse of his motorcade.\nThe US hoped the summit would demonstrate the success of Trump\'s diplomatic gamble with North Korea, but instead the meeting ended with no joint agreement, after Kim demanded all US sanctions be lifted on his country.', '2019-03-08 16:01:02', '2019-03-08 16:01:02'),
	(6, 4, 'The evolution of Ajax\'s $500 million football factory', 'Former Ajax player and coach Danny Blind sits down in the club\'s boardroom and begins to reel off some of the most prominent players to have contributed to its success over the years.\nJohan Cruyff, Ruud Krol, Arie Haan and Jonny Repp helped win three European Cups in the 1970s. Marco Van Basten and Frank Rijkaard starred in the eighties before making way for Patrick Kluivert, Edgar Davids and Clarence Seedorf in the nineties.\nAs well as being some of the most storied names in world football, all were graduates of the Ajax academy -- an institution long-famed for its prolific player output and pursuit of technical perfection.\nThe Amsterdam-based club continues to churn out some of the most exciting talents in world football today.\nFrenkie De Jong, Matthijs de Ligt and Justin Kluivert are among the most recent to roll off its well-tuned production line.\nIn the past, this trio would have formed the backbone of the next great Ajax side.\nBut maintaining talent has become an increasing challenge with the Dutch league unable to compete with the riches swirling around competitions in England, Spain, Germany, France and Italy.', '2019-03-01 16:03:16', '2019-03-08 16:03:16'),
	(7, 4, 'Naomi Osaka honored with doll as Barbie celebrates 60th birthday', 'Two grand slam titles, the world No. 1 spot and now Naomi Osaka has been honored by Barbie.\nIt\'s in recognition of the 21-year-old\'s win at the 2018 US Open and then a second consecutive grand slam title at the Australian Open earlier this year as Osaka rose from world No. 72 to top of the rankings -- the first Asian to hold the position.\nThe announcement that Osaka is to be celebrated with her own doll comes as toy manufacturer Mattel marks the 60th birthday of the iconic brand, while Friday, March 8 is also International Women\'s Day.\nAs well as Osaka, former cyclist Kristina Vogel, ice dancer Tessa Virtue and sports journalist Melodie Robinson have all been honored with dolls this year.\nOsaka, whose mother is Japanese and father is from Haiti, tweeted earlier this week about her pride at being viewed as an influential female figure to young children.\nShe said: "Recently a lot of parents have been coming up to me and telling me that their kids look up to me, those words literally blew me away. I was honestly so shocked and felt this huge responsibility because I remember how important my role models are.', '2019-01-08 16:04:02', '2019-03-08 16:04:02'),
	(8, 3, 'Waiting game: An extended look at how we queue', 'Many of us experience multiple queues on an average day. If they move quickly, they\'re soon forgotten. But a slow line can seem to last forever and can put a drag on an entire day.\nWhat separates a good queuing experience from a bad one, however, is not just the speed of the line. How the wait makes us feel and line fairness (nobody likes line-jumpers) can have a greater impact on our perception of a queue than the amount of time we spend in it. And while waiting time is often hard to cut down, perception can be altered with good line design and management.\n"A wait is a psychological state," Don Norman, a user experience pioneer and director of The Design Lab at UCSD, said in a phone interview. "In that way, it\'s a matter of design, of trying to understand the psychology of the people waiting but also their boredom and frustration. It requires a human-centered design perspective, from the points of view of both the people doing the servicing and the people waiting in line. That isn\'t hard, but you have to develop a sensitivity to it or realize why it might be important."', '2019-03-08 16:05:33', '2019-03-08 16:05:33'),
	(9, 3, 'From Mesopotamia to West London, a 4,000-year history of the turban', 'Growing up in Southall, West London, where many of Britain\'s Sikhs settled after moving to the UK, the turban was all around us: at home, in the gurdwara, on the street. It is Sikhs\' most identifiable feature.\nBut tracing the turban\'s origins back through history, we found that it was, at one time, also worn by Muslims, Hindus, Jews and Christians.\nThe turban\'s exact origin is unclear. A turban-like garment, found on a royal Mesopotamian sculpture dating to 2350 B.C., is believed to be the earliest known example, offering evidence that the garment predates the Abrahamic religions.\nThe use of turbans once stretched across India, the Middle East, Europe and Africa, protecting wearers from sun, rain or cold. In some regions, only believers had the privilege of wearing one, while other cultures ordered non-believers to assume turbans of different colors so they could be identified. (In eighth-century Egypt and Syria, for example, Christians wore blue turbans, Jews yellow and Samaritans red, while Muslims generally sported white ones).', '2019-03-05 16:06:27', '2019-03-08 16:06:27'),
	(10, 5, 'The best Disney World hotels, ranked', 'One of the first decisions you make when planning a trip to Walt Disney World in Orlando, Florida, can also be one of the most overwhelming: Where to stay?\nWith more than two dozen Disney owned-and-operated resorts on property, there\'s something for every family and every budget, from character-obsessed kids to adults wanting a little luxury.\n#7 Disney\'s Contemporary Resort\nThe Contemporary, one of Disney World\'s original hotels, boasts one amenity that no other can — and we\'re not even referring to the monorail that stops inside the main atrium.\nIt\'s the only place where you can access the Magic Kingdom on foot, which is clutch at the end of the night when you just can\'t wait in one more line to board the monorail.\nThe views from this mid-century modern-themed resort are also like no other.\nTry to reserve a park-side room for panoramic views of the Magic Kingdom and its nightly fireworks show, or if you\'re staying elsewhere, it\'s worth it to book a dinner reservation at the California Grill on the hotel\'s top floor, where the show\'s soundtrack is piped onto the viewing balcony for extra effect.\nThe monorail station and open design of the main concourse give a slightly chaotic feel to this resort, which drops it in our rankings, but fortunately that noise doesn\'t carry to the guest rooms above.\nContemporary Resort, 4600 North World Drive, Lake Buena Vista, FL 32830; 407-824-1000', '2019-02-18 16:08:14', '2019-03-08 16:08:14');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;