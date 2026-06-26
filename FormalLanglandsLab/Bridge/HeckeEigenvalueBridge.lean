import FormalLanglandsLab.ModularForms.EigenformPrototype
import FormalLanglandsLab.ModularForms.ModularFormLSeries
import FormalLanglandsLab.LFunctions.FormalDirichletSeries

namespace FormalLanglandsLab
namespace Bridge

open FormalLanglandsLab.ModularForms
open FormalLanglandsLab.LFunctions

def heckeEigenvalueSequence
    (f : ModularFormPrototype) : Nat → Nat :=
  fun n => modularCoefficient f n

def heckeEigenvalueLSeries
    (f : ModularFormPrototype) : FormalDirichletSeries where
  coeff := heckeEigenvalueSequence f

theorem heckeEigenvalueLSeries_matches_modularFormLSeries
    (f : ModularFormPrototype) :
    coeffAgreement
      (heckeEigenvalueLSeries f)
      (modularFormLSeries f) := by
  intro n
  rfl

theorem toyHeckeEigenvalue_coeff_three :
    (heckeEigenvalueLSeries toyModularForm).coeff 3 = 3 := by
  rfl

def heckeEigenvalueAgreement
    (f g : ModularFormPrototype) : Prop :=
  coeffAgreement
    (heckeEigenvalueLSeries f)
    (heckeEigenvalueLSeries g)

theorem heckeEigenvalueAgreement_refl
    (f : ModularFormPrototype) :
    heckeEigenvalueAgreement f f := by
  intro n
  rfl

end Bridge
end FormalLanglandsLab
