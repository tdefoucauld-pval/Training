function runProcessingTasks()
--> domains Void
--> action
{
    //insert here all process tasks
    _businessRules:myBusinessRules();
    
    getGeneralData().cube.init();
    
    setSelectedFacts();
    setTopUnitsSoldParisFact()
    setCCSMostSoldUnitsPercentage()
    setDCSMostSoldUnitsPercentage()
    setParisPerformersSoldFact()
}
;