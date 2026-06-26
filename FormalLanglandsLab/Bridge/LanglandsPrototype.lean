import FormalLanglandsLab.LFunctions.FormalDirichletSeries

namespace FormalLanglandsLab
namespace Bridge

open FormalLanglandsLab.LFunctions

structure ArithmeticObject where
  arithmeticData : Nat → Nat

structure AnalyticObject where
  analyticData : Nat → Nat

def hasSameCoefficients
    (A : ArithmeticObject)
    (B : AnalyticObject) : Prop :=
  ∀ n : Nat, A.arithmeticData n = B.analyticData n

def arithmeticLFunction
    (A : ArithmeticObject) : FormalDirichletSeries where
  coeff := A.arithmeticData

def analyticLFunction
    (B : AnalyticObject) : FormalDirichletSeries where
  coeff := B.analyticData

theorem correspondence_implies_L_function_agreement
    (A : ArithmeticObject)
    (B : AnalyticObject)
    (h : hasSameCoefficients A B) :
    coeffAgreement (arithmeticLFunction A) (analyticLFunction B) := by
  intro n
  exact h n

end Bridge
end FormalLanglandsLab
