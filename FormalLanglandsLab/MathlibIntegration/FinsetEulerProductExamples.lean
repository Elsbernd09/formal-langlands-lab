import FormalLanglandsLab.MathlibIntegration.FinsetMultiplicativityExamples
import FormalLanglandsLab.MathlibIntegration.PrimeListEulerProducts

namespace FormalLanglandsLab
namespace MathlibIntegration

theorem finsetDivisorCount_localEuler_two :
    mathlibPrimeLocalEulerFactor finsetDivisorCountFunction mathlibPrimeTwo = 6 := by
  decide

theorem finsetDivisorCount_localEuler_three :
    mathlibPrimeLocalEulerFactor finsetDivisorCountFunction mathlibPrimeThree = 6 := by
  decide

theorem finsetDivisorCount_localEuler_five :
    mathlibPrimeLocalEulerFactor finsetDivisorCountFunction mathlibPrimeFive = 6 := by
  decide

theorem finsetSumOfDivisors_localEuler_two :
    mathlibPrimeLocalEulerFactor finsetSumOfDivisorsFunction mathlibPrimeTwo = 11 := by
  decide

theorem finsetSumOfDivisors_localEuler_three :
    mathlibPrimeLocalEulerFactor finsetSumOfDivisorsFunction mathlibPrimeThree = 18 := by
  decide

theorem finsetSumOfDivisors_localEuler_five :
    mathlibPrimeLocalEulerFactor finsetSumOfDivisorsFunction mathlibPrimeFive = 38 := by
  decide

theorem finsetSquareDivisorSum_localEuler_two :
    mathlibPrimeLocalEulerFactor finsetSquareDivisorSumFunction mathlibPrimeTwo = 27 := by
  decide

theorem finsetSquareDivisorSum_localEuler_three :
    mathlibPrimeLocalEulerFactor finsetSquareDivisorSumFunction mathlibPrimeThree = 102 := by
  decide

theorem finsetSquareDivisorSum_localEuler_five :
    mathlibPrimeLocalEulerFactor finsetSquareDivisorSumFunction mathlibPrimeFive = 678 := by
  decide

theorem finsetDivisorCount_finiteEulerProduct_small :
    finiteMathlibEulerProduct finsetDivisorCountFunction mathlibSmallPrimeIndexList = 216 := by
  decide

theorem finsetSumOfDivisors_finiteEulerProduct_small :
    finiteMathlibEulerProduct finsetSumOfDivisorsFunction mathlibSmallPrimeIndexList = 7524 := by
  decide

theorem finsetSquareDivisorSum_finiteEulerProduct_small :
    finiteMathlibEulerProduct finsetSquareDivisorSumFunction mathlibSmallPrimeIndexList = 1867212 := by
  decide

theorem finsetEulerProduct_divisorCount_matches_v4 :
    finiteMathlibEulerProduct finsetDivisorCountFunction mathlibSmallPrimeIndexList =
      finiteMathlibEulerProduct divisorCountFunction mathlibSmallPrimeIndexList := by
  decide

theorem finsetEulerProduct_sumOfDivisors_matches_v4 :
    finiteMathlibEulerProduct finsetSumOfDivisorsFunction mathlibSmallPrimeIndexList =
      finiteMathlibEulerProduct sumOfDivisorsFunction mathlibSmallPrimeIndexList := by
  decide

theorem finsetEulerProduct_squareDivisorSum_matches_v4 :
    finiteMathlibEulerProduct finsetSquareDivisorSumFunction mathlibSmallPrimeIndexList =
      finiteMathlibEulerProduct squareDivisorSumFunction mathlibSmallPrimeIndexList := by
  decide

end MathlibIntegration
end FormalLanglandsLab
