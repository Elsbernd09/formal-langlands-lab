import FormalLanglandsLab.Galois.FrobeniusTraces
import FormalLanglandsLab.LFunctions.FormalDirichletSeries

namespace FormalLanglandsLab
namespace Galois

open FormalLanglandsLab.LFunctions

def galoisLSeries
    (rho : RepresentationPrototype) : FormalDirichletSeries where
  coeff := fun n => rho.trace n

def frobeniusTraceLSeries
    (T : FrobeniusTraceSystem) : FormalDirichletSeries where
  coeff := fun n => T.traceAt n

theorem toyGaloisLSeries_coeff_two :
    (galoisLSeries toyTwoDimensionalRepresentation).coeff 2 = 3 := by
  rfl

theorem toyFrobeniusTraceLSeries_coeff_three :
    (frobeniusTraceLSeries toyFrobeniusTraceSystem).coeff 3 = 4 := by
  rfl

theorem representation_LSeries_matches_trace_LSeries
    (rho : RepresentationPrototype) :
    coeffAgreement
      (galoisLSeries rho)
      (frobeniusTraceLSeries (frobeniusTracesFromRepresentation rho)) := by
  intro n
  rfl

end Galois
end FormalLanglandsLab
