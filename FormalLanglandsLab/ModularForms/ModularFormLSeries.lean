import FormalLanglandsLab.ModularForms.ModularFormPrototype
import FormalLanglandsLab.LFunctions.FormalDirichletSeries

namespace FormalLanglandsLab
namespace ModularForms

open FormalLanglandsLab.LFunctions

def modularFormLSeries
    (f : ModularFormPrototype) : FormalDirichletSeries where
  coeff := fun n => modularCoefficient f n

theorem toyModularFormLSeries_coeff_three :
    (modularFormLSeries toyModularForm).coeff 3 = 3 := by
  rfl

def modularFormAsCoefficientSystem
    (f : ModularFormPrototype) : FourierCoefficientSystem where
  coefficient := fun n => modularCoefficient f n

theorem toyModularCoefficientSystem_coeff_four :
    (modularFormAsCoefficientSystem toyModularForm).coefficient 4 = 4 := by
  rfl

end ModularForms
end FormalLanglandsLab
