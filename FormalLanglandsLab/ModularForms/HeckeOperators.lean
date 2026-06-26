import FormalLanglandsLab.ModularForms.ModularFormPrototype

namespace FormalLanglandsLab
namespace ModularForms

structure HeckeOperator where
  index : Nat

def applyHeckeOperator
    (T : HeckeOperator)
    (f : ModularFormPrototype) : ModularFormPrototype where
  weight := f.weight
  level := f.level
  qExpansion := {
    coeff := fun n => T.index * f.qExpansion.coeff n
  }

def T_two : HeckeOperator where
  index := 2

def T_three : HeckeOperator where
  index := 3

theorem apply_T_two_coeff_three :
    modularCoefficient (applyHeckeOperator T_two toyModularForm) 3 = 6 := by
  rfl

theorem apply_T_three_coeff_four :
    modularCoefficient (applyHeckeOperator T_three toyModularForm) 4 = 12 := by
  rfl

end ModularForms
end FormalLanglandsLab
