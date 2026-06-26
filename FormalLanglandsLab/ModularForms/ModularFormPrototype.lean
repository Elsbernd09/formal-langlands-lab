import FormalLanglandsLab.ModularForms.FourierCoefficients

namespace FormalLanglandsLab
namespace ModularForms

structure ModularFormPrototype where
  weight : Nat
  level : Nat
  qExpansion : QExpansion

def toyModularForm : ModularFormPrototype where
  weight := 2
  level := 11
  qExpansion := identityQExpansion

def modularCoefficient
    (f : ModularFormPrototype)
    (n : Nat) : Nat :=
  f.qExpansion.coeff n

theorem toyModularForm_weight :
    toyModularForm.weight = 2 := by
  rfl

theorem toyModularForm_level :
    toyModularForm.level = 11 := by
  rfl

theorem toyModularForm_coeff_three :
    modularCoefficient toyModularForm 3 = 3 := by
  rfl

end ModularForms
end FormalLanglandsLab
