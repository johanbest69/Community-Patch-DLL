-- Arsenal of Democracy

UPDATE Policies
SET MilitaryUnitGiftExtraInfluence = '0'
WHERE Type = 'POLICY_ARSENAL_DEMOCRACY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET InfluenceGPExpend = '10'
WHERE Type = 'POLICY_ARSENAL_DEMOCRACY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

-- Capitalism

DELETE FROM Policy_BuildingClassHappiness
WHERE PolicyType = 'POLICY_CAPITALISM' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET NoUnhappfromXSpecialists = '3'
WHERE Type = 'POLICY_CAPITALISM' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET HappfromXSpecialists = '3'
WHERE Type = 'POLICY_CAPITALISM' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET Level = '2'
WHERE Type = 'POLICY_CAPITALISM' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

-- Covert Action
UPDATE Policies
SET FreeSpy = '1'
WHERE Type = 'POLICY_COVERT_ACTION' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

-- Open Society
UPDATE Policies
SET GreatPeopleRateModifier = '33'
WHERE Type = 'POLICY_OPEN_SOCIETY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

-- New Deal

UPDATE Policy_ImprovementYieldChanges
SET Yield = '5'
WHERE PolicyType = 'POLICY_NEW_DEAL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

-- Civil Society

UPDATE Policies
SET Level = '2'
WHERE Type = 'POLICY_CIVIL_SOCIETY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET HalfSpecialistFood = '0'
WHERE Type = 'POLICY_CIVIL_SOCIETY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET SpecialistFoodChange = '-2'
WHERE Type = 'POLICY_CIVIL_SOCIETY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

-- Treaty Organization

UPDATE Policies
SET FreeWCVotes = '4'
WHERE Type = 'POLICY_TREATY_ORGANIZATION' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );


-- Creative Expression

-- Economic Union

UPDATE Policies
SET FreeTradeRoute = '2'
WHERE Type = 'POLICY_ECONOMIC_UNION' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET SharedIdeologyTradeGoldChange = '6'
WHERE Type = 'POLICY_ECONOMIC_UNION' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

-- Media Culture

 -- Their Finest Hour

 -- Universal Suffrage 

UPDATE Policies
SET HalfSpecialistUnhappiness = '0'
WHERE Type = 'POLICY_UNIVERSAL_SUFFRAGE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET ExtraHappinessPerCity = '1'
WHERE Type = 'POLICY_UNIVERSAL_SUFFRAGE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

-- Urbanization
DELETE FROM Policy_BuildingClassHappiness
WHERE PolicyType = 'POLICY_URBANIZATION' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET Level = '1'
WHERE Type = 'POLICY_URBANIZATION' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

--POLICY_UNIVERSAL_HEALTHCARE_F

DELETE FROM Policy_BuildingClassHappiness
WHERE PolicyType = 'POLICY_UNIVERSAL_HEALTHCARE_F' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET Help = 'TXT_KEY_POLICY_UNIVERSAL_HEALTHCARE_F_HELP'
WHERE Type = 'POLICY_UNIVERSAL_HEALTHCARE_F' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET Description = 'TXT_KEY_POLICY_UNIVERSAL_HEALTHCARE_F'
WHERE Type = 'POLICY_UNIVERSAL_HEALTHCARE_F' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

-- Volunteer Army

UPDATE Policies
SET Level = '1'
WHERE Type = 'POLICY_VOLUNTEER_ARMY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET ExtraSupplyPerPopulation = '15'
WHERE Type = 'POLICY_VOLUNTEER_ARMY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );


-- NEW

UPDATE Policy_GreatWorkYieldChanges
SET YieldType = 'YIELD_TOURISM'
WHERE PolicyType = 'POLICY_CREATIVE_EXPRESSION';

INSERT INTO Policy_BuildingClassYieldChanges
	(PolicyType, BuildingClassType, YieldType, YieldChange)
VALUES
	('POLICY_CREATIVE_EXPRESSION', 'BUILDINGCLASS_OPERA_HOUSE', 'YIELD_GOLDEN_AGE_POINTS', 2),
	('POLICY_CREATIVE_EXPRESSION', 'BUILDINGCLASS_OPERA_HOUSE', 'YIELD_CULTURE', 2),
	('POLICY_CREATIVE_EXPRESSION', 'BUILDINGCLASS_MUSEUM', 'YIELD_GOLDEN_AGE_POINTS', 2),
	('POLICY_CREATIVE_EXPRESSION', 'BUILDINGCLASS_MUSEUM', 'YIELD_CULTURE', 2),
	('POLICY_CREATIVE_EXPRESSION', 'BUILDINGCLASS_BROADCAST_TOWER', 'YIELD_GOLDEN_AGE_POINTS', 2),
	('POLICY_CREATIVE_EXPRESSION', 'BUILDINGCLASS_BROADCAST_TOWER', 'YIELD_CULTURE', 2),
	('POLICY_CREATIVE_EXPRESSION', 'BUILDINGCLASS_AMPHITHEATER', 'YIELD_GOLDEN_AGE_POINTS', 2),
	('POLICY_CREATIVE_EXPRESSION', 'BUILDINGCLASS_AMPHITHEATER', 'YIELD_CULTURE', 2);

UPDATE Policy_BuildingClassTourismModifiers
SET TourismModifier = '25'
WHERE PolicyType = 'POLICY_MEDIA_CULTURE';

INSERT INTO Policy_BuildingClassHappiness
	(PolicyType, BuildingClassType, Happiness)
VALUES
	('POLICY_MEDIA_CULTURE', 'BUILDINGCLASS_BROADCAST_TOWER', 1);

INSERT INTO Policy_BuildingClassYieldModifiers
	(PolicyType, BuildingClassType, YieldType, YieldMod)
VALUES
	('POLICY_MEDIA_CULTURE', 'BUILDINGCLASS_STADIUM', 'YIELD_CULTURE', 20),
	('POLICY_SPACE_PROCUREMENTS', 'BUILDINGCLASS_LABORATORY', 'YIELD_SCIENCE', 10);

INSERT INTO Policy_ImprovementYieldChanges
	(PolicyType, ImprovementType, YieldType, Yield)
VALUES
	('POLICY_URBANIZATION', 'IMPROVEMENT_FARM', 'YIELD_FOOD', 2),
	('POLICY_URBANIZATION', 'IMPROVEMENT_PLANTATION', 'YIELD_FOOD', 2),
	('POLICY_URBANIZATION', 'IMPROVEMENT_CAMP', 'YIELD_FOOD', 2),
	('POLICY_URBANIZATION', 'IMPROVEMENT_TERRACE_FARM', 'YIELD_FOOD', 2),
	('POLICY_URBANIZATION', 'IMPROVEMENT_EKI', 'YIELD_FOOD', 2),
	('POLICY_URBANIZATION', 'IMPROVEMENT_KUNA', 'YIELD_FOOD', 2),
	('POLICY_URBANIZATION', 'IMPROVEMENT_ENCAMPMENT_SHOSHONE', 'YIELD_FOOD', 2),
	('POLICY_URBANIZATION', 'IMPROVEMENT_POLDER', 'YIELD_FOOD', 2),
	('POLICY_URBANIZATION', 'IMPROVEMENT_CHATEAU', 'YIELD_FOOD', 2),
	('POLICY_URBANIZATION', 'IMPROVEMENT_KASBAH', 'YIELD_FOOD', 2),
	('POLICY_URBANIZATION', 'IMPROVEMENT_BRAZILWOOD_CAMP', 'YIELD_FOOD', 2),
	('POLICY_URBANIZATION', 'IMPROVEMENT_MOAI', 'YIELD_FOOD', 2),
	('POLICY_URBANIZATION', 'IMPROVEMENT_FEITORIA', 'YIELD_FOOD', 2),
	('POLICY_URBANIZATION', 'IMPROVEMENT_CUSTOMS_HOUSE_VENICE', 'YIELD_FOOD', 2),
	('POLICY_NEW_DEAL', 'IMPROVEMENT_LANDMARK', 'YIELD_TOURISM', 5),
	('POLICY_NEW_DEAL', 'IMPROVEMENT_CITADEL', 'YIELD_PRODUCTION', 5),
	('POLICY_NEW_DEAL', 'IMPROVEMENT_CUSTOMS_HOUSE_VENICE', 'YIELD_FOOD', 5);

UPDATE Policies
SET AllCityFreeBuilding = 'BUILDINGCLASS_HOSPITAL'
WHERE Type = 'POLICY_UNIVERSAL_HEALTHCARE_F';	
	
INSERT INTO Policy_YieldFromBirth
	(PolicyType, YieldType, Yield)
VALUES
	('POLICY_UNIVERSAL_HEALTHCARE_F', 'YIELD_CULTURE', 50);

INSERT INTO Policy_BuildingClassProductionModifiers
	(PolicyType, BuildingClassType, ProductionModifier)
VALUES
	('POLICY_SPACE_PROCUREMENTS', 'BUILDINGCLASS_SPACESHIP_FACTORY', 100);
