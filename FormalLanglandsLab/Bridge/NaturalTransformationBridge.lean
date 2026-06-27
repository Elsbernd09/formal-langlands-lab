import FormalLanglandsLab.Motives.NaturalTransformations
import FormalLanglandsLab.LFunctions.LocalGlobalCompatibility
import FormalLanglandsLab.LFunctions.PrimeEulerSystem

namespace FormalLanglandsLab
namespace Bridge

open FormalLanglandsLab.Motives
open FormalLanglandsLab.LFunctions

def naturalTransformationLocalAgreement
    (eta : NaturalTransformationPrototype) : Prop :=
  sameLocalFactors
    (localFactorSystemFromSeries eta.sourceSeries)
    (localFactorSystemFromSeries eta.targetSeries)

def naturalTransformationPrimeEulerAgreement
    (eta : NaturalTransformationPrototype) : Prop :=
  sameEulerPolynomials
    (primeEulerSystemFromSeries eta.sourceSeries)
    (primeEulerSystemFromSeries eta.targetSeries)

theorem naturalTransformation_implies_localAgreement
    (eta : NaturalTransformationPrototype) :
    naturalTransformationLocalAgreement eta := by
  intro n
  exact eta.preservesCoefficients n

theorem naturalTransformation_implies_primeEulerAgreement
    (eta : NaturalTransformationPrototype) :
    naturalTransformationPrimeEulerAgreement eta := by
  intro p
  exact eta.preservesCoefficients p.value

theorem toyCohomologyToModular_localAgreement :
    naturalTransformationLocalAgreement
      (cohomologyToModularNaturalTransformation toyMotive) := by
  intro n
  rfl

theorem toyGaloisToSpectral_primeEulerAgreement :
    naturalTransformationPrimeEulerAgreement
      (galoisToSpectralNaturalTransformation toyMotive) := by
  intro p
  rfl

end Bridge
end FormalLanglandsLab
