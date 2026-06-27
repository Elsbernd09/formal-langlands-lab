import FormalLanglandsLab.NumberTheory.CoprimeMultiplicativitySuite

namespace FormalLanglandsLab
namespace NumberTheory

open FormalLanglandsLab.Core

def primePowerTwoTable
    (f : ArithmeticFunction Nat) : Nat × Nat × Nat :=
  (f 2, f 4, f 8)

def primePowerThreeTable
    (f : ArithmeticFunction Nat) : Nat × Nat × Nat :=
  (f 3, f 9, f 27)

def primePowerFiveTable
    (f : ArithmeticFunction Nat) : Nat × Nat :=
  (f 5, f 25)

theorem divisorCount_two_power_one :
    divisorCountFunction 2 = 2 := by
  rfl

theorem divisorCount_two_power_two :
    divisorCountFunction 4 = 3 := by
  rfl

theorem divisorCount_two_power_three :
    divisorCountFunction 8 = 4 := by
  rfl

theorem divisorCount_three_power_one :
    divisorCountFunction 3 = 2 := by
  rfl

theorem divisorCount_three_power_two :
    divisorCountFunction 9 = 3 := by
  rfl

theorem divisorCount_three_power_three :
    divisorCountFunction 27 = 4 := by
  rfl

theorem divisorCount_five_power_one :
    divisorCountFunction 5 = 2 := by
  rfl

theorem divisorCount_five_power_two :
    divisorCountFunction 25 = 3 := by
  rfl

theorem sumOfDivisors_two_power_one :
    sumOfDivisorsFunction 2 = 3 := by
  rfl

theorem sumOfDivisors_two_power_two :
    sumOfDivisorsFunction 4 = 7 := by
  rfl

theorem sumOfDivisors_two_power_three :
    sumOfDivisorsFunction 8 = 15 := by
  rfl

theorem sumOfDivisors_three_power_one :
    sumOfDivisorsFunction 3 = 4 := by
  rfl

theorem sumOfDivisors_three_power_two :
    sumOfDivisorsFunction 9 = 13 := by
  rfl

theorem sumOfDivisors_three_power_three :
    sumOfDivisorsFunction 27 = 40 := by
  rfl

theorem sumOfDivisors_five_power_one :
    sumOfDivisorsFunction 5 = 6 := by
  rfl

theorem sumOfDivisors_five_power_two :
    sumOfDivisorsFunction 25 = 31 := by
  rfl

theorem squareDivisorSum_two_power_one :
    squareDivisorSumFunction 2 = 5 := by
  rfl

theorem squareDivisorSum_two_power_two :
    squareDivisorSumFunction 4 = 21 := by
  rfl

theorem squareDivisorSum_two_power_three :
    squareDivisorSumFunction 8 = 85 := by
  rfl

theorem squareDivisorSum_three_power_one :
    squareDivisorSumFunction 3 = 10 := by
  rfl

theorem squareDivisorSum_three_power_two :
    squareDivisorSumFunction 9 = 91 := by
  rfl

theorem squareDivisorSum_three_power_three :
    squareDivisorSumFunction 27 = 820 := by
  rfl

theorem squareDivisorSum_five_power_one :
    squareDivisorSumFunction 5 = 26 := by
  rfl

theorem squareDivisorSum_five_power_two :
    squareDivisorSumFunction 25 = 651 := by
  rfl

theorem divisorCount_two_table :
    primePowerTwoTable divisorCountFunction = (2, 3, 4) := by
  rfl

theorem divisorCount_three_table :
    primePowerThreeTable divisorCountFunction = (2, 3, 4) := by
  rfl

theorem sumOfDivisors_two_table :
    primePowerTwoTable sumOfDivisorsFunction = (3, 7, 15) := by
  rfl

theorem sumOfDivisors_three_table :
    primePowerThreeTable sumOfDivisorsFunction = (4, 13, 40) := by
  rfl

theorem squareDivisorSum_two_table :
    primePowerTwoTable squareDivisorSumFunction = (5, 21, 85) := by
  rfl

theorem squareDivisorSum_three_table :
    primePowerThreeTable squareDivisorSumFunction = (10, 91, 820) := by
  rfl

end NumberTheory
end FormalLanglandsLab
