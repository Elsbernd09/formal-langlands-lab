import FormalLanglandsLab.MathlibIntegration.MathlibDashboard
import Mathlib.Data.Finset.Basic

namespace FormalLanglandsLab
namespace MathlibIntegration

open Finset

def smallNatFinset : Finset Nat :=
  {1, 2, 3, 4, 5}

def firstThreeNatFinset : Finset Nat :=
  {1, 2, 3}

def firstThreeSum : Nat :=
  ∑ n in firstThreeNatFinset, n

def firstFiveSum : Nat :=
  ∑ n in smallNatFinset, n

def firstThreeProduct : Nat :=
  ∏ n in firstThreeNatFinset, n

theorem firstThreeNatFinset_card :
    firstThreeNatFinset.card = 3 := by
  decide

theorem smallNatFinset_card :
    smallNatFinset.card = 5 := by
  decide

theorem firstThreeSum_value :
    firstThreeSum = 6 := by
  decide

theorem firstFiveSum_value :
    firstFiveSum = 15 := by
  decide

theorem firstThreeProduct_value :
    firstThreeProduct = 6 := by
  decide

theorem one_mem_firstThree :
    1 ∈ firstThreeNatFinset := by
  decide

theorem three_mem_firstThree :
    3 ∈ firstThreeNatFinset := by
  decide

theorem five_not_mem_firstThree :
    5 ∉ firstThreeNatFinset := by
  decide

end MathlibIntegration
end FormalLanglandsLab
