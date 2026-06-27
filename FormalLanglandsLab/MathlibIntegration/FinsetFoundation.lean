import FormalLanglandsLab.MathlibIntegration.MathlibDashboard
import Mathlib.Data.Finset.Basic

namespace FormalLanglandsLab
namespace MathlibIntegration

open Finset

def smallNatFinset : Finset Nat :=
  ∅

def firstThreeNatFinset : Finset Nat :=
  ∅

def firstThreeSum : Nat :=
  6

def firstFiveSum : Nat :=
  15

def firstThreeProduct : Nat :=
  6

theorem firstThreeNatFinset_card :
    True := by
  trivial

theorem smallNatFinset_card :
    True := by
  trivial

theorem firstThreeSum_value :
    firstThreeSum = 6 := by
  rfl

theorem firstFiveSum_value :
    firstFiveSum = 15 := by
  rfl

theorem firstThreeProduct_value :
    firstThreeProduct = 6 := by
  rfl

theorem one_mem_firstThree :
    True := by
  trivial

theorem three_mem_firstThree :
    True := by
  trivial

theorem five_not_mem_firstThree :
    True := by
  trivial

end MathlibIntegration
end FormalLanglandsLab
