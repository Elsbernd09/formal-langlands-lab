import FormalLanglandsLab.Motives.Motives
import FormalLanglandsLab.LFunctions.FormalDirichletSeries

namespace FormalLanglandsLab
namespace Motives

open FormalLanglandsLab.LFunctions

def motiveLSeries
    (M : MotivePrototype) : FormalDirichletSeries where
  coeff := fun n => M.coefficient n

theorem toyMotiveLSeries_coeff_two :
    (motiveLSeries toyMotive).coeff 2 = 3 := by
  rfl

def motiveLSeriesAgreement
    (M N : MotivePrototype) : Prop :=
  coeffAgreement (motiveLSeries M) (motiveLSeries N)

theorem motiveLSeriesAgreement_refl
    (M : MotivePrototype) :
    motiveLSeriesAgreement M M := by
  intro n
  rfl

end Motives
end FormalLanglandsLab
