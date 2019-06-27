function getFactsComparison(LibCube:Fact comparedFact, LibCube:Fact comparingFact, LibCube:Measure comparingMeasure)
--> domains LibCube:TwoFactsOneMeasureComparison 
--> local LibCube:TwoFactsOneMeasureComparison comparison
--> action {
    comparison = new(LibCube:TwoFactsOneMeasureComparison)
    comparison.comparedFact = comparedFact
    comparison.comparingFact = comparingFact
    comparison.measure = comparingMeasure
    comparison.compute()
    return comparison;
}
;

function getOneMeasureSorter
args{
    Collection          facts

    LibCube:Measure     comparingMeasure

    Boolean             useAbsoluteValue
    --> key             _USE_ABSOLUTE_VALUE
    --> defaultValue    false

    Boolean             isAscendant
    --> key             _IS_ASCENDANT
    --> defaultValue    false
}
local {
    LibCube:FactsSorter sorter
}
--> domains LibCube:FactsSorter
--> action {
    sorter = new(LibCube:FactsSorter)
    sorter.facts = facts
    sorter.sortType = SORT_TYPE_ONE_MEASURE
    sorter.measure = comparingMeasure
    sorter.sortFacts()
    return sorter;
}
;

function getComparisonAttributeSorter
args{
    Collection          facts

    Attribute           twoFactsComparisonAttr

    Attribute           twoFactsDifferenceAttr

    Boolean             useAbsoluteValue
    --> key             _USE_ABSOLUTE_VALUE
    --> defaultValue    false

    Boolean             isAscendant
    --> key             _IS_ASCENDANT
    --> defaultValue    false
}
local {
    LibCube:FactsSorter sorter
}
--> domains LibCube:FactsSorter
--> action {
    sorter = new(LibCube:FactsSorter)
    sorter.facts = facts
    sorter.sortType = SORT_TYPE_COMPARISON_ATTRIBUTE
    sorter.twoFactsComparisonAttribute = twoFactsComparisonAttr
    sorter.twoFactsDifferenceAttribute = twoFactsDifferenceAttr
    sorter.useAbsoluteValue = false
    sorter.sortFacts()
    return sorter;
}
;
