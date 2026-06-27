import FormalLanglandsLab.MathlibIntegration.PrimeListEulerProducts
import FormalLanglandsLab.NumberTheory.ClassicalArithmeticFunctions

namespace FormalLanglandsLab
namespace MathlibIntegration

open FormalLanglandsLab.Core
open FormalLanglandsLab.NumberTheory

def mathlibDivisorList
    (n : Nat) : List Nat :=
  (List.range (n + 1)).filter
    (fun d => if d = 0 then false else mathlibDividesBool d n)

def sumNatList : List Nat → Nat
  | [] => 0
  | x :: xs => x + sumNatList xs

def mathlibDivisorCountFromList
    (n : Nat) : Nat :=
  (mathlibDivisorList n).length

def mathlibSumOfDivisorsFromList
    (n : Nat) : Nat :=
  sumNatList (mathlibDivisorList n)

theorem mathlibDivisorList_one :
    mathlibDivisorList 1 = [1] := by
  rfl

theorem mathlibDivisorList_two :
    mathlibDivisorList 2 = [1, 2] := by
  rfl

theorem mathlibDivisorList_three :
    mathlibDivisorList 3 = [1, 3] := by
  rfl

theorem mathlibDivisorList_four :
    mathlibDivisorList 4 = [1, 2, 4] := by
  rfl

theorem mathlibDivisorList_six :
    mathlibDivisorList 6 = [1, 2, 3, 6] := by
  rfl

theorem mathlibDivisorList_twelve :
    mathlibDivisorList 12 = [1, 2, 3, 4, 6, 12] := by
  rfl

theorem mathlibDivisorCountFromList_one :
    mathlibDivisorCountFromList 1 = 1 := by
  rfl

theorem mathlibDivisorCountFromList_two :
    mathlibDivisorCountFromList 2 = 2 := by
  rfl

theorem mathlibDivisorCountFromList_four :
    mathlibDivisorCountFromList 4 = 3 := by
  rfl

theorem mathlibDivisorCountFromList_six :
    mathlibDivisorCountFromList 6 = 4 := by
  rfl

theorem mathlibDivisorCountFromList_twelve :
    mathlibDivisorCountFromList 12 = 6 := by
  rfl

theorem mathlibSumOfDivisorsFromList_one :
    mathlibSumOfDivisorsFromList 1 = 1 := by
  rfl

theorem mathlibSumOfDivisorsFromList_two :
    mathlibSumOfDivisorsFromList 2 = 3 := by
  rfl

theorem mathlibSumOfDivisorsFromList_four :
    mathlibSumOfDivisorsFromList 4 = 7 := by
  rfl

theorem mathlibSumOfDivisorsFromList_six :
    mathlibSumOfDivisorsFromList 6 = 12 := by
  rfl

theorem mathlibSumOfDivisorsFromList_twelve :
    mathlibSumOfDivisorsFromList 12 = 28 := by
  rfl

theorem mathlibDivisorCount_matches_existing_four :
    mathlibDivisorCountFromList 4 = divisorCountFunction 4 := by
  rfl

theorem mathlibDivisorCount_matches_existing_six :
    mathlibDivisorCountFromList 6 = divisorCountFunction 6 := by
  rfl

theorem mathlibDivisorCount_matches_existing_twelve :
    mathlibDivisorCountFromList 12 = divisorCountFunction 12 := by
  rfl

theorem mathlibSumOfDivisors_matches_existing_four :
    mathlibSumOfDivisorsFromList 4 = sumOfDivisorsFunction 4 := by
  rfl

theorem mathlibSumOfDivisors_matches_existing_six :
    mathlibSumOfDivisorsFromList 6 = sumOfDivisorsFunction 6 := by
  rfl

theorem mathlibSumOfDivisors_matches_existing_twelve :
    mathlibSumOfDivisorsFromList 12 = sumOfDivisorsFunction 12 := by
  rfl

end MathlibIntegration
end FormalLanglandsLab
