namespace FormalLanglandsLab
namespace EllipticCurves

structure WeierstrassCurve where
  a : Nat
  b : Nat

structure AffinePoint where
  x : Nat
  y : Nat

def curveEquation
    (E : WeierstrassCurve)
    (P : AffinePoint) : Prop :=
  P.y * P.y = P.x * P.x * P.x + E.a * P.x + E.b

def toyCurve : WeierstrassCurve where
  a := 2
  b := 1

def toyPoint : AffinePoint where
  x := 1
  y := 2

theorem toyPoint_on_toyCurve :
    curveEquation toyCurve toyPoint := by
  rfl

end EllipticCurves
end FormalLanglandsLab
