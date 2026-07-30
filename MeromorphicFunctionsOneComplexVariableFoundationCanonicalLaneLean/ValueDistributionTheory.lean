import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MeromorphicFunctionsOneComplexVariableFoundationCanonicalLaneLean.ComplexAnalysisFoundation

namespace HautevilleHouse
namespace MeromorphicFunctionsOneComplexVariableFoundationCanonicalLaneLean

structure ValueDistributionPackage (F : ComplexAnalysisFoundation) where
  nevanlinnaCharacteristicFunction : Prop
  firstMainTheorem : Prop
  secondMainTheorem : Prop
  deficiencyRelation : Prop

structure ValueDistributionEvidence {F : ComplexAnalysisFoundation}
    (V : ValueDistributionPackage F) where
  nevanlinnaCharacteristicFunctionClosed : V.nevanlinnaCharacteristicFunction
  firstMainTheoremClosed : V.firstMainTheorem
  secondMainTheoremClosed : V.secondMainTheorem
  deficiencyRelationClosed : V.deficiencyRelation

def ValueDistributionClosed {F : ComplexAnalysisFoundation}
    (V : ValueDistributionPackage F) : Prop :=
  V.nevanlinnaCharacteristicFunction ∧ V.firstMainTheorem ∧
  V.secondMainTheorem ∧ V.deficiencyRelation

theorem value_distribution_closed_from_evidence
    {F : ComplexAnalysisFoundation} (V : ValueDistributionPackage F)
    (E : ValueDistributionEvidence V) : ValueDistributionClosed V := by
  exact And.intro E.nevanlinnaCharacteristicFunctionClosed
    (And.intro E.firstMainTheoremClosed
      (And.intro E.secondMainTheoremClosed E.deficiencyRelationClosed))

end MeromorphicFunctionsOneComplexVariableFoundationCanonicalLaneLean
end HautevilleHouse