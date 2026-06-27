import FormalLanglandsLab.MathlibIntegration.FinsetFoundation
import FormalLanglandsLab.MathlibIntegration.DivisorLists

namespace FormalLanglandsLab
namespace MathlibIntegration

open Finset
open FormalLanglandsLab.NumberTheory

def mathlibDivisorFinset
    (n : Nat) : Finset Nat :=
  (Finset.range (n + 1)).filter
    (fun d => d ≠ 0 ∧ d ∣ n)

def mathlibDivisorFinsetCard
    (n : Nat) : Nat :=
  (mathlibDivisorFinset n).card

theorem divisorFinset_one_value :
    mathlibDivisorFinset 1 = {1} := by
  decide

theorem divisorFinset_two_value :
    mathlibDivisorFinset 2 = {1, 2} := by
  decide

theorem divisorFinset_three_value :
    mathlibDivisorFinset 3 = {1, 3} := by
  decide

theorem divisorFinset_four_value :
    mathlibDivisorFinset 4 = {1, 2, 4} := by
  decide

theorem divisorFinset_six_value :
    mathlibDivisorFinset 6 = {1, 2, 3, 6} := by
  decide

theorem divisorFinset_twelve_value :
    mathlibDivisorFinset 12 = {1, 2, 3, 4, 6, 12} := by
  decide

theorem one_mem_divisorFinset_six :
    1 ∈ mathlibDivisorFinset 6 := by
  decide

theorem two_mem_divisorFinset_six :
    2 ∈ mathlibDivisorFinset 6 := by
  decide

theorem three_mem_divisorFinset_six :
    3 ∈ mathlibDivisorFinset 6 := by
  decide

theorem six_mem_divisorFinset_six :
    6 ∈ mathlibDivisorFinset 6 := by
  decide

theorem four_not_mem_divisorFinset_six :
    4 ∉ mathlibDivisorFinset 6 := by
  decide

theorem zero_not_mem_divisorFinset_six :
    0 ∉ mathlibDivisorFinset 6 := by
  decide

theorem divisorFinsetCard_one :
    mathlibDivisorFinsetCard 1 = 1 := by
  decide

theorem divisorFinsetCard_two :
    mathlibDivisorFinsetCard 2 = 2 := by
  decide

theorem divisorFinsetCard_three :
    mathlibDivisorFinsetCard 3 = 2 := by
  decide

theorem divisorFinsetCard_four :
    mathlibDivisorFinsetCard 4 = 3 := by
  decide

theorem divisorFinsetCard_six :
    mathlibDivisorFinsetCard 6 = 4 := by
  decide

theorem divisorFinsetCard_twelve :
    mathlibDivisorFinsetCard 12 = 6 := by
  decide

theorem divisorFinsetCard_matches_list_one :
    mathlibDivisorFinsetCard 1 = mathlibDivisorCountFromList 1 := by
  decide

theorem divisorFinsetCard_matches_list_four :
    mathlibDivisorFinsetCard 4 = mathlibDivisorCountFromList 4 := by
  decide

theorem divisorFinsetCard_matches_list_six :
    mathlibDivisorFinsetCard 6 = mathlibDivisorCountFromList 6 := by
  decide

theorem divisorFinsetCard_matches_list_twelve :
    mathlibDivisorFinsetCard 12 = mathlibDivisorCountFromList 12 := by
  decide

end MathlibIntegration
end FormalLanglandsLab
