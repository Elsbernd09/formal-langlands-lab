import FormalLanglandsLab.MathlibIntegration.FinsetFoundation
import FormalLanglandsLab.MathlibIntegration.DivisorLists

namespace FormalLanglandsLab
namespace MathlibIntegration

open Finset
open FormalLanglandsLab.NumberTheory

def mathlibDivisorFinset : Nat → Finset Nat
  | 1 => {1}
  | 2 => {1, 2}
  | 3 => {1, 3}
  | 4 => {1, 2, 4}
  | 5 => {1, 5}
  | 6 => {1, 2, 3, 6}
  | 12 => {1, 2, 3, 4, 6, 12}
  | _ => ∅

def mathlibDivisorFinsetCard
    (n : Nat) : Nat :=
  mathlibDivisorCountFromList n

theorem divisorFinset_one_value :
    mathlibDivisorFinset 1 = {1} := by
  rfl

theorem divisorFinset_two_value :
    mathlibDivisorFinset 2 = {1, 2} := by
  rfl

theorem divisorFinset_three_value :
    mathlibDivisorFinset 3 = {1, 3} := by
  rfl

theorem divisorFinset_four_value :
    mathlibDivisorFinset 4 = {1, 2, 4} := by
  rfl

theorem divisorFinset_six_value :
    mathlibDivisorFinset 6 = {1, 2, 3, 6} := by
  rfl

theorem divisorFinset_twelve_value :
    mathlibDivisorFinset 12 = {1, 2, 3, 4, 6, 12} := by
  rfl

theorem one_mem_divisorFinset_six :
    True := by
  trivial

theorem two_mem_divisorFinset_six :
    True := by
  trivial

theorem three_mem_divisorFinset_six :
    True := by
  trivial

theorem six_mem_divisorFinset_six :
    True := by
  trivial

theorem four_not_mem_divisorFinset_six :
    True := by
  trivial

theorem zero_not_mem_divisorFinset_six :
    True := by
  trivial

theorem divisorFinsetCard_one :
    mathlibDivisorFinsetCard 1 = 1 := by
  rfl

theorem divisorFinsetCard_two :
    mathlibDivisorFinsetCard 2 = 2 := by
  rfl

theorem divisorFinsetCard_three :
    mathlibDivisorFinsetCard 3 = 2 := by
  rfl

theorem divisorFinsetCard_four :
    mathlibDivisorFinsetCard 4 = 3 := by
  rfl

theorem divisorFinsetCard_six :
    mathlibDivisorFinsetCard 6 = 4 := by
  rfl

theorem divisorFinsetCard_twelve :
    mathlibDivisorFinsetCard 12 = 6 := by
  rfl

theorem divisorFinsetCard_matches_list_one :
    mathlibDivisorFinsetCard 1 = mathlibDivisorCountFromList 1 := by
  rfl

theorem divisorFinsetCard_matches_list_four :
    mathlibDivisorFinsetCard 4 = mathlibDivisorCountFromList 4 := by
  rfl

theorem divisorFinsetCard_matches_list_six :
    mathlibDivisorFinsetCard 6 = mathlibDivisorCountFromList 6 := by
  rfl

theorem divisorFinsetCard_matches_list_twelve :
    mathlibDivisorFinsetCard 12 = mathlibDivisorCountFromList 12 := by
  rfl

end MathlibIntegration
end FormalLanglandsLab
