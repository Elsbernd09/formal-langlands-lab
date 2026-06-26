import FormalLanglandsLab.EllipticCurves.WeierstrassModels

namespace FormalLanglandsLab
namespace EllipticCurves

def toyPointCount
    (E : WeierstrassCurve)
    (p : Nat) : Nat :=
  p + E.a + E.b

def toyTraceCoefficient
    (E : WeierstrassCurve)
    (p : Nat) : Nat :=
  p + 1 + toyPointCount E p

theorem toyCurvePointCountAtTwo :
    toyPointCount toyCurve 2 = 5 := by
  rfl

theorem toyCurveTraceAtTwo :
    toyTraceCoefficient toyCurve 2 = 8 := by
  rfl

end EllipticCurves
end FormalLanglandsLab
