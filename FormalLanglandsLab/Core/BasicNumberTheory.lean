import Mathlib

namespace FormalLanglandsLab
namespace Core

theorem prime_two : Nat.Prime 2 := by
  exact Nat.prime_two

theorem prime_ne_one {p : ℕ} (hp : Nat.Prime p) : p ≠ 1 := by
  exact hp.ne_one

theorem prime_dvd_mul {p a b : ℕ}
    (hp : Nat.Prime p)
    (h : p ∣ a * b) : p ∣ a ∨ p ∣ b := by
  exact hp.dvd_mul.mp h

end Core
end FormalLanglandsLab
