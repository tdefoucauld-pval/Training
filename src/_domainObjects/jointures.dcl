// Jointure test pour Paris

LibCube:Jointure JOINTURE_PARIS_AMERICAN_SALES_FACTS
   --> dimensionConditions
      -> List
         --> values
            -> LibCube:JointureDimensionCondition
               --> dimension DIMENSION_CITY
               --> members CITY_PARIS
               ;,
 
            -> LibCube:JointureDimensionCondition
               --> dimension DIMENSION_STORE
               --> members STORE_CAPITAL_CHEESE_STORE
               ;,
 
            -> LibCube:JointureDimensionCondition
               --> dimension DIMENSION_PRODUCT
               --> members PRODUCT_AMERICAN
               ;,
 
            -> LibCube:JointureDimensionCondition
               --> dimension DIMENSION_TIME
               --> members getGeneralData().previousPeriod
               ;
         ;
   ;
 
LibCube:JointureOneFactSelection JOINTURE_PARIS_AMERICAN_SALES_FACTS_SELECTION
   --> jointure JOINTURE_PARIS_AMERICAN_SALES_FACTS
;

LibCube:Jointure JOINTURE_PARIS_GLOBAL_SALES_FACTS
   --> dimensionConditions
      -> List
         --> values
            -> LibCube:JointureDimensionCondition
               --> dimension DIMENSION_CITY
               --> members CITY_PARIS
               ;,
 
            -> LibCube:JointureDimensionCondition
               --> dimension DIMENSION_STORE
               --> members STORE_CAPITAL_CHEESE_STORE
               ;,
 
            -> LibCube:JointureDimensionCondition
               --> dimension DIMENSION_PRODUCT
               --> members PRODUCT_ALL
               ;,
 
            -> LibCube:JointureDimensionCondition
               --> dimension DIMENSION_TIME
               --> members getGeneralData().previousPeriod
               ;
         ;
   ;
 
LibCube:JointureOneFactSelection JOINTURE_PARIS_GLOBAL_SALES_FACTS_SELECTION
   --> jointure JOINTURE_PARIS_GLOBAL_SALES_FACTS
;

LibCube:Jointure JOINTURE_PARIS_SALES_FACTS
   --> dimensionConditions
      -> List
         --> values
            -> LibCube:JointureDimensionCondition
               --> dimension DIMENSION_CITY
               --> members CITY_PARIS
               ;,
 
            -> LibCube:JointureDimensionCondition
               --> dimension DIMENSION_STORE
               --> members STORE_CAPITAL_CHEESE_STORE
               ;,
 
            -> LibCube:JointureDimensionCondition
               --> dimension DIMENSION_PRODUCT
               --> membersCollection DIMENSION_PRODUCT>>hierarchyMembersAccesors.get(_FIRST).leafMembers
               ;,
 
            -> LibCube:JointureDimensionCondition
               --> dimension DIMENSION_TIME
               --> members getGeneralData().previousPeriod
               ;
         ;
   ;
 
LibCube:JointureFactsSelection JOINTURE_PARIS_SALES_FACTS_SELECTION
   --> jointure JOINTURE_PARIS_SALES_FACTS
;


LibCube:Jointure JOINTURE_DCS_PROVOLOGNE_SALES_FACTS
   --> dimensionConditions
      -> List
         --> values
            -> LibCube:JointureDimensionCondition
               --> dimension DIMENSION_CITY
               --> members CITY_PARIS
               ;,
 
            -> LibCube:JointureDimensionCondition
               --> dimension DIMENSION_STORE
               --> members STORE_DELUXE_CHEESE_STORE
               ;,
 
            -> LibCube:JointureDimensionCondition
               --> dimension DIMENSION_PRODUCT
               --> members PRODUCT_PROVOLOGNE
               ;,
 
            -> LibCube:JointureDimensionCondition
               --> dimension DIMENSION_TIME
               --> members getGeneralData().previousPeriod
               ;
         ;
   ;

LibCube:JointureOneFactSelection JOINTURE_DCS_PROVOLOGNE_SALES_FACTS_SELECTION
   --> jointure JOINTURE_DCS_PROVOLOGNE_SALES_FACTS
;

LibCube:Jointure JOINTURE_DCS_GLOBAL_SALES_FACTS
   --> dimensionConditions
      -> List
         --> values
            -> LibCube:JointureDimensionCondition
               --> dimension DIMENSION_CITY
               --> members CITY_PARIS
               ;,
 
            -> LibCube:JointureDimensionCondition
               --> dimension DIMENSION_STORE
               --> members STORE_DELUXE_CHEESE_STORE
               ;,
 
            -> LibCube:JointureDimensionCondition
               --> dimension DIMENSION_PRODUCT
               --> members PRODUCT_ALL
               ;,
 
            -> LibCube:JointureDimensionCondition
               --> dimension DIMENSION_TIME
               --> members getGeneralData().previousPeriod
               ;
         ;
   ;
 
LibCube:JointureOneFactSelection JOINTURE_DCS_GLOBAL_SALES_FACTS_SELECTION
   --> jointure JOINTURE_DCS_GLOBAL_SALES_FACTS
;

LibCube:Jointure JOINTURE_DCS_SALES_FACTS
   --> dimensionConditions
      -> List
         --> values
            -> LibCube:JointureDimensionCondition
               --> dimension DIMENSION_CITY
               --> members CITY_PARIS
               ;,
 
            -> LibCube:JointureDimensionCondition
               --> dimension DIMENSION_STORE
               --> members STORE_DELUXE_CHEESE_STORE
               ;,
 
            -> LibCube:JointureDimensionCondition
               --> dimension DIMENSION_PRODUCT
               --> membersCollection DIMENSION_PRODUCT>>hierarchyMembersAccesors.get(_FIRST).leafMembers
               ;,
 
            -> LibCube:JointureDimensionCondition
               --> dimension DIMENSION_TIME
               --> members getGeneralData().previousPeriod
               ;
         ;
   ;
 
LibCube:JointureFactsSelection JOINTURE_DCS_SALES_FACTS_SELECTION
   --> jointure JOINTURE_DCS_SALES_FACTS
;

LibCube:Jointure JOINTURE_PARIS_LEAF_PRODUCT_SALES_FACTS
   --> dimensionConditions
      -> List
         --> values
            -> LibCube:JointureDimensionCondition
               --> dimension DIMENSION_CITY
               --> members CITY_PARIS
               ;,
 
            -> LibCube:JointureDimensionCondition
               --> dimension DIMENSION_STORE
               --> members STORE_ALL
               ;,
 
            -> LibCube:JointureDimensionCondition
               --> dimension DIMENSION_PRODUCT
               --> membersCollection DIMENSION_PRODUCT>>hierarchyMembersAccesors.get(_FIRST).leafMembers
               ;,
 
            -> LibCube:JointureDimensionCondition
               --> dimension DIMENSION_TIME
               --> members getGeneralData().previousPeriod
               ;
         ;
   ;
 
LibCube:JointureFactsSelection JOINTURE_PARIS_LEAF_PRODUCT_SALES_FACTS_SELECTION
   --> jointure JOINTURE_PARIS_LEAF_PRODUCT_SALES_FACTS
;


LibCube:Jointure JOINTURE_NY_GLOBAL_SALES_FACTS
   --> dimensionConditions
      -> List
         --> values
            -> LibCube:JointureDimensionCondition
               --> dimension DIMENSION_CITY
               --> members CITY_NEW_YORK
               ;,
 
            -> LibCube:JointureDimensionCondition
               --> dimension DIMENSION_STORE
               --> membersCollection minus (Store, {STORE_ALL})
               ;,
 
            -> LibCube:JointureDimensionCondition
               --> dimension DIMENSION_PRODUCT
               --> members PRODUCT_ALL
               ;,
 
            -> LibCube:JointureDimensionCondition
               --> dimension DIMENSION_TIME
               --> members getGeneralData().previousPeriod
               ;
         ;
   ;

LibCube:JointureFactsSelection JOINTURE_NY_GLOBAL_SALES_FACTS_SELECTION
   --> jointure JOINTURE_NY_GLOBAL_SALES_FACTS
;