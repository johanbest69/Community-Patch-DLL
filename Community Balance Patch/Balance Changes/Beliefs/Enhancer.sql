-- Religious Texts

UPDATE Beliefs
SET SpyPressure = '5'
WHERE Type = 'BELIEF_RELIGIOUS_TEXTS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET SpreadStrengthModifier = '30'
WHERE Type = 'BELIEF_RELIGIOUS_TEXTS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

-- Reliquary (Now Tithes)
UPDATE Beliefs
SET GreatPersonExpendedFaith = '0'
WHERE Type = 'BELIEF_RELIQUARY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET GoldPerFirstCityConversion = '0'
WHERE Type = 'BELIEF_RELIQUARY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

INSERT INTO Belief_YieldFromConversion
	(BeliefType, YieldType, Yield)
VALUES
	('BELIEF_RELIQUARY', 'YIELD_GOLD', 100);

-- Just War (Now Martyrdom)
UPDATE Beliefs
SET CombatModifierEnemyCities = '0'
WHERE Type = 'BELIEF_JUST_WAR' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET GreatPersonExpendedFaith = '100'
WHERE Type = 'BELIEF_JUST_WAR' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

-- Heathen Conversion (Now Holy Warriors)
UPDATE Beliefs
SET Enhancer = '1'
WHERE Type = 'BELIEF_HEATHEN_CONVERSION' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET ConvertsBarbarians = '0'
WHERE Type = 'BELIEF_HEATHEN_CONVERSION' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET Reformation = '0'
WHERE Type = 'BELIEF_HEATHEN_CONVERSION' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

INSERT INTO Belief_ResourceQuantityModifiers
	(BeliefType, ResourceType, ResourceQuantityModifier)
VALUES
	('BELIEF_HEATHEN_CONVERSION', 'RESOURCE_IRON', 3),
	('BELIEF_HEATHEN_CONVERSION', 'RESOURCE_HORSE', 3),
	('BELIEF_HEATHEN_CONVERSION', 'RESOURCE_OIL', 3),
	('BELIEF_HEATHEN_CONVERSION', 'RESOURCE_COAL', 3),
	('BELIEF_HEATHEN_CONVERSION', 'RESOURCE_ALUMINUM', 3),
	('BELIEF_HEATHEN_CONVERSION', 'RESOURCE_URANIUM', 3);

-- Itinerant Preachers (Religious Celebrations)
UPDATE Beliefs
SET SpreadDistanceModifier = '0'
WHERE Type = 'BELIEF_ITINERANT_PREACHERS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET HappinessPerFollowingCity = '0.5'
WHERE Type = 'BELIEF_ITINERANT_PREACHERS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET CityStateMinimumInfluence = '0'
WHERE Type = 'BELIEF_ITINERANT_PREACHERS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET CSYieldBonusFromSharedReligion = '25'
WHERE Type = 'BELIEF_ITINERANT_PREACHERS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

-- Messiah (Now Sainthood)

UPDATE Beliefs
SET InquisitorPressureRetention = '25'
WHERE Type = 'BELIEF_MESSIAH' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

-- Missionary Zeal (Now Scholar-Priests)
UPDATE Beliefs
SET SciencePerOtherReligionFollower = '7'
WHERE Type = 'BELIEF_MISSIONARY_ZEAL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

-- Holy Order
UPDATE Beliefs
SET SpreadDistanceModifier = '20'
WHERE Type = 'BELIEF_HOLY_ORDER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET PressureChangeTradeRoute = '200'
WHERE Type = 'BELIEF_HOLY_ORDER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET MissionaryCostModifier = '0'
WHERE Type = 'BELIEF_HOLY_ORDER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET FriendlyCityStateSpreadModifier = '100'
WHERE Type = 'BELIEF_HOLY_ORDER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

-- Religious Unity
UPDATE Beliefs
SET MissionaryCostModifier = '-30'
WHERE Type = 'BELIEF_RELIGIOUS_UNITY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET FriendlyCityStateSpreadModifier = '0'
WHERE Type = 'BELIEF_RELIGIOUS_UNITY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET HappinessPerXPeacefulForeignFollowers = '6'
WHERE Type = 'BELIEF_RELIGIOUS_UNITY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

-- NEW

INSERT INTO Belief_YieldChangePerXForeignFollowers
	(BeliefType, YieldType, ForeignFollowers)
VALUES
	('BELIEF_JUST_WAR', 'YIELD_CULTURE', 6),
	('BELIEF_JUST_WAR', 'YIELD_SCIENCE', 6),
	('BELIEF_RELIQUARY', 'YIELD_FAITH', 6),
	('BELIEF_RELIQUARY', 'YIELD_GOLD', 6);

INSERT INTO Belief_EraFaithUnitPurchase
	(BeliefType, EraType)
VALUES
	('BELIEF_HEATHEN_CONVERSION', 'ERA_ANCIENT'),
	('BELIEF_HEATHEN_CONVERSION', 'ERA_CLASSICAL'),
	('BELIEF_HEATHEN_CONVERSION', 'ERA_MEDIEVAL'),
	('BELIEF_HEATHEN_CONVERSION', 'ERA_RENAISSANCE'),
	('BELIEF_HEATHEN_CONVERSION', 'ERA_INDUSTRIAL'),
	('BELIEF_HEATHEN_CONVERSION', 'ERA_MODERN'),
	('BELIEF_HEATHEN_CONVERSION', 'ERA_POSTMODERN'),
	('BELIEF_HEATHEN_CONVERSION', 'ERA_FUTURE');


UPDATE Beliefs
SET Tooltip = 'TXT_KEY_BELIEF_HEATHEN_CONVERSION'
WHERE Type = 'BELIEF_HEATHEN_CONVERSION' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET Tooltip = 'TXT_KEY_BELIEF_RELIGIOUS_UNITY'
WHERE Type = 'BELIEF_RELIGIOUS_UNITY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET Tooltip = 'TXT_KEY_BELIEF_HOLY_ORDER'
WHERE Type = 'BELIEF_HOLY_ORDER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET Tooltip = 'TXT_KEY_BELIEF_MISSIONARY_ZEAL'
WHERE Type = 'BELIEF_MISSIONARY_ZEAL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET Tooltip = 'TXT_KEY_BELIEF_MESSIAH'
WHERE Type = 'BELIEF_MESSIAH' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET Tooltip = 'TXT_KEY_BELIEF_ITINERANT_PREACHERS'
WHERE Type = 'BELIEF_ITINERANT_PREACHERS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET Tooltip = 'TXT_KEY_BELIEF_JUST_WAR'
WHERE Type = 'BELIEF_JUST_WAR' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET Tooltip = 'TXT_KEY_BELIEF_RELIQUARY'
WHERE Type = 'BELIEF_RELIQUARY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET Tooltip = 'TXT_KEY_BELIEF_RELIGIOUS_TEXTS'
WHERE Type = 'BELIEF_RELIGIOUS_TEXTS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );
