import FormalLanglandsLab.MathlibIntegration.PrimeIndexedEuler

namespace FormalLanglandsLab
namespace MathlibIntegration

open FormalLanglandsLab.Core
open FormalLanglandsLab.NumberTheory

def mathlibSmallPrimeIndexList : List MathlibPrimeIndex :=
  [
    mathlibPrimeTwo,
    mathlibPrimeThree,
    mathlibPrimeFive
  ]

def mathlibFivePrimeIndexList : List MathlibPrimeIndex :=
  [
    mathlibPrimeTwo,
    mathlibPrimeThree,
    mathlibPrimeFive,
    mathlibPrimeSeven,
    mathlibPrimeEleven
  ]

def localEulerFactorList
    (f : ArithmeticFunction Nat)
    (ps : List MathlibPrimeIndex) : List Nat :=
  ps.map (fun p => mathlibPrimeLocalEulerFactor f p)

def productNatList : List Nat → Nat
  | [] => 1
  | x :: xs => x * productNatList xs

def finiteMathlibEulerProduct
    (f : ArithmeticFunction Nat)
    (ps : List MathlibPrimeIndex) : Nat :=
  productNatList (localEulerFactorList f ps)

theorem smallPrimeIndexList_length :
    mathlibSmallPrimeIndexList.length = 3 := by
  rfl

theorem fivePrimeIndexList_length :
    mathlibFivePrimeIndexList.length = 5 := by
  rfl

theorem constantOne_localEulerList_small :
    localEulerFactorList constantOneFunction mathlibSmallPrimeIndexList =
      [3, 3, 3] := by
  rfl

theorem divisorCount_localEulerList_small :
    localEulerFactorList divisorCountFunction mathlibSmallPrimeIndexList =
      [6, 6, 6] := by
  rfl

theorem sumOfDivisors_localEulerList_small :
    localEulerFactorList sumOfDivisorsFunction mathlibSmallPrimeIndexList =
      [11, 18, 38] := by
  rfl

theorem squareDivisorSum_localEulerList_small :
    localEulerFactorList squareDivisorSumFunction mathlibSmallPrimeIndexList =
      [27, 102, 678] := by
  rfl

theorem productNatList_empty :
    productNatList [] = 1 := by
  rfl

theorem productNatList_three_threes :
    productNatList [3, 3, 3] = 27 := by
  rfl

theorem productNatList_six_six_six :
    productNatList [6, 6, 6] = 216 := by
  rfl

theorem constantOne_finiteEulerProduct_small :
    finiteMathlibEulerProduct constantOneFunction mathlibSmallPrimeIndexList = 27 := by
  rfl

theorem divisorCount_finiteEulerProduct_small :
    finiteMathlibEulerProduct divisorCountFunction mathlibSmallPrimeIndexList = 216 := by
  rfl

theorem sumOfDivisors_finiteEulerProduct_small :
    finiteMathlibEulerProduct sumOfDivisorsFunction mathlibSmallPrimeIndexList = 7524 := by
  rfl

theorem squareDivisorSum_finiteEulerProduct_small :
    finiteMathlibEulerProduct squareDivisorSumFunction mathlibSmallPrimeIndexList = 1867212 := by
  rfl

theorem finiteEulerProduct_matches_manual_twoThreeFive_constantOne :
    finiteMathlibEulerProduct constantOneFunction mathlibSmallPrimeIndexList =
      mathlibTwoThreeFiveEulerProduct constantOneFunction := by
  rfl

theorem finiteEulerProduct_matches_manual_twoThreeFive_divisorCount :
    finiteMathlibEulerProduct divisorCountFunction mathlibSmallPrimeIndexList =
      mathlibTwoThreeFiveEulerProduct divisorCountFunction := by
  rfl

theorem finiteEulerProduct_matches_manual_twoThreeFive_sumOfDivisors :
    finiteMathlibEulerProduct sumOfDivisorsFunction mathlibSmallPrimeIndexList =
      mathlibTwoThreeFiveEulerProduct sumOfDivisorsFunction := by
  rfl

end MathlibIntegration
end FormalLanglandsLab
