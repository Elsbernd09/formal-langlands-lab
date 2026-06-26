import FormalLanglandsLab.Core.BasicNumberTheory
import FormalLanglandsLab.Core.ArithmeticFunctions
import FormalLanglandsLab.LFunctions.FormalDirichletSeries
import FormalLanglandsLab.Bridge.LanglandsPrototype

namespace FormalLanglandsLab
namespace Experiments

open FormalLanglandsLab.Core
open FormalLanglandsLab.LFunctions
open FormalLanglandsLab.Bridge

def toyArithmeticFunction : ArithmeticFunction Nat :=
  fun n => n

def toySeries : FormalDirichletSeries :=
  fromArithmeticFunction toyArithmeticFunction

theorem toySeries_coeff_three :
    toySeries.coeff 3 = 3 := by
  rfl

def toyArithmeticObject : ArithmeticObject where
  arithmeticData := fun n => n + 1

def toyAnalyticObject : AnalyticObject where
  analyticData := fun n => n + 1

theorem toyCorrespondence :
    hasSameCoefficients toyArithmeticObject toyAnalyticObject := by
  intro n
  rfl

theorem toyLFunctionAgreement :
    coeffAgreement
      (arithmeticLFunction toyArithmeticObject)
      (analyticLFunction toyAnalyticObject) := by
  exact correspondence_implies_L_function_agreement
    toyArithmeticObject
    toyAnalyticObject
    toyCorrespondence

end Experiments
end FormalLanglandsLab
