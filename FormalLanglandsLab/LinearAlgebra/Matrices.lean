namespace FormalLanglandsLab
namespace LinearAlgebra

structure Matrix2x2 where
  a11 : Nat
  a12 : Nat
  a21 : Nat
  a22 : Nat

def trace2x2
    (M : Matrix2x2) : Nat :=
  M.a11 + M.a22

def determinant2x2
    (M : Matrix2x2) : Nat :=
  M.a11 * M.a22 + M.a12 * M.a21

def identityMatrix2x2 : Matrix2x2 where
  a11 := 1
  a12 := 0
  a21 := 0
  a22 := 1

def scalarMatrix2x2
    (c : Nat) : Matrix2x2 where
  a11 := c
  a12 := 0
  a21 := 0
  a22 := c

theorem trace_identityMatrix2x2 :
    trace2x2 identityMatrix2x2 = 2 := by
  rfl

theorem determinant_identityMatrix2x2 :
    determinant2x2 identityMatrix2x2 = 1 := by
  rfl

theorem trace_scalarMatrix2x2_two :
    trace2x2 (scalarMatrix2x2 2) = 4 := by
  rfl

end LinearAlgebra
end FormalLanglandsLab
