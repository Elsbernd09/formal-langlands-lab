import FormalLanglandsLab.Galois.MatrixRepresentations
import FormalLanglandsLab.LFunctions.FormalDirichletSeries

namespace FormalLanglandsLab
namespace Galois

open FormalLanglandsLab.LFunctions

def matrixTraceLSeries
    (rho : MatrixRepresentationPrototype) : FormalDirichletSeries where
  coeff := fun n => matrixTrace rho n

def matrixDeterminantLSeries
    (rho : MatrixRepresentationPrototype) : FormalDirichletSeries where
  coeff := fun n => matrixDeterminant rho n

theorem toyMatrixTraceLSeries_coeff_two :
    (matrixTraceLSeries toyMatrixRepresentation).coeff 2 = 4 := by
  rfl

theorem toyMatrixDeterminantLSeries_coeff_two :
    (matrixDeterminantLSeries toyMatrixRepresentation).coeff 2 = 4 := by
  rfl

theorem matrixTraceLSeries_matches_traceRepresentation
    (rho : MatrixRepresentationPrototype) :
    coeffAgreement
      (matrixTraceLSeries rho)
      (galoisLSeries (traceRepresentationFromMatrixRepresentation rho)) := by
  intro n
  rfl

end Galois
end FormalLanglandsLab
