import FormalLanglandsLab.MathlibIntegration.FinsetDivisorSets

namespace FormalLanglandsLab
namespace MathlibIntegration

def finsetDivisorCardTableUpToSix : List Nat :=
  [
    mathlibDivisorFinsetCard 1,
    mathlibDivisorFinsetCard 2,
    mathlibDivisorFinsetCard 3,
    mathlibDivisorFinsetCard 4,
    mathlibDivisorFinsetCard 5,
    mathlibDivisorFinsetCard 6
  ]

def finsetDivisorSetTableSmall : List (Finset Nat) :=
  [
    mathlibDivisorFinset 1,
    mathlibDivisorFinset 2,
    mathlibDivisorFinset 3,
    mathlibDivisorFinset 4,
    mathlibDivisorFinset 5,
    mathlibDivisorFinset 6
  ]

theorem finsetDivisorCardTableUpToSix_value :
    finsetDivisorCardTableUpToSix = [1, 2, 2, 3, 2, 4] := by
  decide

theorem finsetDivisorSetTableSmall_length :
    finsetDivisorSetTableSmall.length = 6 := by
  rfl

theorem finsetDivisorCardTable_matches_v4_list_table :
    finsetDivisorCardTableUpToSix = divisorCountTableUpToSix := by
  decide

end MathlibIntegration
end FormalLanglandsLab
