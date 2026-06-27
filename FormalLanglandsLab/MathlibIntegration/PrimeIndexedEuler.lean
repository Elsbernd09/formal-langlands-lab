import FormalLanglandsLab.MathlibIntegration.MathlibMultiplicativity
import FormalLanglandsLab.NumberTheory.EulerProductVerification

namespace FormalLanglandsLab
namespace MathlibIntegration

open FormalLanglandsLab.Core
open FormalLanglandsLab.NumberTheory

structure MathlibPrimeIndex where
  value : Nat
  isPrime : Nat.Prime value

def mathlibPrimeTwo : MathlibPrimeIndex where
  value := 2
  isPrime := by
    decide

def mathlibPrimeThree : MathlibPrimeIndex where
  value := 3
  isPrime := by
    decide

def mathlibPrimeFive : MathlibPrimeIndex where
  value := 5
  isPrime := by
    decide

def mathlibPrimeSeven : MathlibPrimeIndex where
  value := 7
  isPrime := by
    decide

def mathlibPrimeEleven : MathlibPrimeIndex where
  value := 11
  isPrime := by
    decide

def mathlibPrimeLocalEulerFactor
    (f : ArithmeticFunction Nat)
    (p : MathlibPrimeIndex) : Nat :=
  f 1 + f p.value + f (p.value * p.value)

def mathlibTwoThreeEulerProduct
    (f : ArithmeticFunction Nat) : Nat :=
  mathlibPrimeLocalEulerFactor f mathlibPrimeTwo *
  mathlibPrimeLocalEulerFactor f mathlibPrimeThree

def mathlibTwoThreeFiveEulerProduct
    (f : ArithmeticFunction Nat) : Nat :=
  mathlibPrimeLocalEulerFactor f mathlibPrimeTwo *
  mathlibPrimeLocalEulerFactor f mathlibPrimeThree *
  mathlibPrimeLocalEulerFactor f mathlibPrimeFive

theorem mathlibPrimeTwo_value :
    mathlibPrimeTwo.value = 2 := by
  rfl

theorem mathlibPrimeThree_value :
    mathlibPrimeThree.value = 3 := by
  rfl

theorem mathlibPrimeFive_value :
    mathlibPrimeFive.value = 5 := by
  rfl

theorem mathlibPrimeTwo_isPrime :
    Nat.Prime mathlibPrimeTwo.value := by
  exact mathlibPrimeTwo.isPrime

theorem mathlibPrimeThree_isPrime :
    Nat.Prime mathlibPrimeThree.value := by
  exact mathlibPrimeThree.isPrime

theorem mathlibPrimeFive_isPrime :
    Nat.Prime mathlibPrimeFive.value := by
  exact mathlibPrimeFive.isPrime

theorem constantOne_mathlibLocalEuler_two :
    mathlibPrimeLocalEulerFactor constantOneFunction mathlibPrimeTwo = 3 := by
  rfl

theorem constantOne_mathlibLocalEuler_three :
    mathlibPrimeLocalEulerFactor constantOneFunction mathlibPrimeThree = 3 := by
  rfl

theorem constantOne_mathlibLocalEuler_five :
    mathlibPrimeLocalEulerFactor constantOneFunction mathlibPrimeFive = 3 := by
  rfl

theorem divisorCount_mathlibLocalEuler_two :
    mathlibPrimeLocalEulerFactor divisorCountFunction mathlibPrimeTwo = 6 := by
  rfl

theorem divisorCount_mathlibLocalEuler_three :
    mathlibPrimeLocalEulerFactor divisorCountFunction mathlibPrimeThree = 6 := by
  rfl

theorem divisorCount_mathlibLocalEuler_five :
    mathlibPrimeLocalEulerFactor divisorCountFunction mathlibPrimeFive = 6 := by
  rfl

theorem sumOfDivisors_mathlibLocalEuler_two :
    mathlibPrimeLocalEulerFactor sumOfDivisorsFunction mathlibPrimeTwo = 11 := by
  rfl

theorem sumOfDivisors_mathlibLocalEuler_three :
    mathlibPrimeLocalEulerFactor sumOfDivisorsFunction mathlibPrimeThree = 18 := by
  rfl

theorem sumOfDivisors_mathlibLocalEuler_five :
    mathlibPrimeLocalEulerFactor sumOfDivisorsFunction mathlibPrimeFive = 38 := by
  rfl

theorem squareDivisorSum_mathlibLocalEuler_two :
    mathlibPrimeLocalEulerFactor squareDivisorSumFunction mathlibPrimeTwo = 27 := by
  rfl

theorem squareDivisorSum_mathlibLocalEuler_three :
    mathlibPrimeLocalEulerFactor squareDivisorSumFunction mathlibPrimeThree = 102 := by
  rfl

theorem squareDivisorSum_mathlibLocalEuler_five :
    mathlibPrimeLocalEulerFactor squareDivisorSumFunction mathlibPrimeFive = 678 := by
  rfl

theorem constantOne_mathlibTwoThreeEulerProduct :
    mathlibTwoThreeEulerProduct constantOneFunction = 9 := by
  rfl

theorem divisorCount_mathlibTwoThreeEulerProduct :
    mathlibTwoThreeEulerProduct divisorCountFunction = 36 := by
  rfl

theorem sumOfDivisors_mathlibTwoThreeEulerProduct :
    mathlibTwoThreeEulerProduct sumOfDivisorsFunction = 198 := by
  rfl

theorem squareDivisorSum_mathlibTwoThreeEulerProduct :
    mathlibTwoThreeEulerProduct squareDivisorSumFunction = 2754 := by
  rfl

theorem constantOne_mathlibTwoThreeFiveEulerProduct :
    mathlibTwoThreeFiveEulerProduct constantOneFunction = 27 := by
  rfl

theorem divisorCount_mathlibTwoThreeFiveEulerProduct :
    mathlibTwoThreeFiveEulerProduct divisorCountFunction = 216 := by
  rfl

theorem sumOfDivisors_mathlibTwoThreeFiveEulerProduct :
    mathlibTwoThreeFiveEulerProduct sumOfDivisorsFunction = 7524 := by
  rfl

end MathlibIntegration
end FormalLanglandsLab
