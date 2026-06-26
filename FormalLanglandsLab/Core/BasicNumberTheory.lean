namespace FormalLanglandsLab
namespace Core

def double (n : Nat) : Nat :=
  n + n

def square (n : Nat) : Nat :=
  n * n

def cube (n : Nat) : Nat :=
  n * n * n

theorem double_zero : double 0 = 0 := by
  rfl

theorem double_two : double 2 = 4 := by
  rfl

theorem square_two : square 2 = 4 := by
  rfl

theorem cube_two : cube 2 = 8 := by
  rfl

end Core
end FormalLanglandsLab
