function setSelectedFacts()
--> action {
   getGeneralData().ccsAmericanSalePreviousYear = JOINTURE_PARIS_AMERICAN_SALES_FACTS_SELECTION.selectedFact;
   getGeneralData().ccsGlobalSalePreviousYear = JOINTURE_PARIS_GLOBAL_SALES_FACTS_SELECTION.selectedFact;
   getGeneralData().dcsProvologneSalePreviousYear = JOINTURE_DCS_PROVOLOGNE_SALES_FACTS_SELECTION.selectedFact;
   getGeneralData().dcsGlobalSalePreviousYear = JOINTURE_DCS_GLOBAL_SALES_FACTS_SELECTION.selectedFact;
}
;

function setTopUnitsSoldParisFact()
   --> local LibCube:FactsSorter sorter
   --> action {
       /* On cherche le fromage le plus vendu du Capital Cheese Store*/
            sorter = getOneMeasureSorter(
                           JOINTURE_PARIS_SALES_FACTS_SELECTION>>selectedFacts,
                           MEASURE_SALE_VALUE);
            getGeneralData().topSoldUnitsParisFact = sorter.getTopFact();
            
        /* On cherche le fromage le plus vendu du Deluxe Cheese Store*/
            sorter = getOneMeasureSorter(
                           JOINTURE_DCS_SALES_FACTS_SELECTION>>selectedFacts,
                           MEASURE_SALE_VALUE);
            getGeneralData().topSoldUnitsDCSFact = sorter.getTopFact();
   }
;


/*
function setCCSMostSoldUnitsPercentage()
   --> local LibCube:TwoFactsOneMeasureComparison comparison
   --> action {
         comparison = getFactsComparison(
                              getGeneralData().ccsGlobalSalePreviousYear
                              getGeneralData().topSoldUnitsParisFact,
                              MEASURE_SALE_VALUE);
         getGeneralData().ccsMostSoldUnitsPercentage = comparison.pctChange;
   }
;
*/

function setCCSMostSoldUnitsPercentage()
   --> action {
         
        getGeneralData().ccsMostSoldUnitsPercentage = getGeneralData().topSoldUnitsParisFact.getMeasure(MEASURE_SALE_VALUE).value/getGeneralData().ccsGlobalSalePreviousYear.getMeasure(MEASURE_SALE_VALUE).value
   }
;

function setDCSMostSoldUnitsPercentage()
   --> action {
         
        getGeneralData().dcsMostSoldUnitsPercentage = getGeneralData().topSoldUnitsDCSFact.getMeasure(MEASURE_SALE_VALUE).value/getGeneralData().dcsGlobalSalePreviousYear.getMeasure(MEASURE_SALE_VALUE).value
   }
;

function setParisPerformersSoldFact()
    --> local LibCube:FactsSorter sorter
    --> action{
        /* On cherche le fromage le plus vendu et celui le moins vendu à Paris*/
        sorter = getOneMeasureSorter(
                    JOINTURE_PARIS_LEAF_PRODUCT_SALES_FACTS_SELECTION>>selectedFacts,
                    MEASURE_SALE_VALUE);
        getGeneralData().topProductParisFact = sorter.getTopFact();
        getGeneralData().bottomProductParisFact = sorter.getFact(sorter.facts.size());
        
        /* On utilise le sorter pour faire une liste des fromages les plus vendus
        
        topProductsFacts = new(List);
        foreach(_productFact, JOINTURE_PARIS_LEAF_PRODUCT_SALES_FACTS_SELECTION.selectedFacts){
               topTypeProductsFacts.add(_productFact);
        }
        */ 
        getGeneralData().topProductParisSalesSorter = JOINTURE_PARIS_LEAF_PRODUCT_SALES_FACTS_SELECTION>>selectedFacts;
    }
;