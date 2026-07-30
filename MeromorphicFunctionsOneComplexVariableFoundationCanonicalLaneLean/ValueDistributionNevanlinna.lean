import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MeromorphicFunctionsOneComplexVariableFoundationCanonicalLaneLean.AnalyticContinuationAndSheaf

/-!
# Value Distribution and Nevanlinna Theory Package
-/

namespace HautevilleHouse
namespace MeromorphicFunctionsOneComplexVariableFoundationCanonicalLaneLean

structure ValueDistributionPackage {C : CauchyWeierstrassPackage}
    {M : MeromorphicFunctionTheoryPackage C} {R : RiemannMappingPicardPackage M}
    {A : AnalyticContinuationPackage R} where
  nevanlinnaCharacteristicDefined : Prop
  firstMainTheorem : Prop
  secondMainTheorem : Prop
  defectRelation : Prop

structure ValueDistributionEvidence {C : CauchyWeierstrassPackage}
    {M : MeromorphicFunctionTheoryPackage C} {R : RiemannMappingPicardPackage M}
    {A : AnalyticContinuationPackage R} (V : ValueDistributionPackage A) where
  nevanlinnaCharacteristicDefinedClosed : V.nevanlinnaCharacteristicDefined
  firstMainTheoremClosed : V.firstMainTheorem
  secondMainTheoremClosed : V.secondMainTheorem
  defectRelationClosed : V.defectRelation

def ValueDistributionClosed {C : CauchyWeierstrassPackage}
    {M : MeromorphicFunctionTheoryPackage C} {R : RiemannMappingPicardPackage M}
    {A : AnalyticContinuationPackage R} (V : ValueDistributionPackage A) : Prop :=
  V.nevanlinnaCharacteristicDefined ∧ V.firstMainTheorem ∧
  V.secondMainTheorem ∧ V.defectRelation

theorem value_distribution_closed_from_evidence
    {C : CauchyWeierstrassPackage} {M : MeromorphicFunctionTheoryPackage C}
    {R : RiemannMappingPicardPackage M} {A : AnalyticContinuationPackage R}
    (V : ValueDistributionPackage A) (E : ValueDistributionEvidence V) :
    ValueDistributionClosed V := by
  exact And.intro E.nevanlinnaCharacteristicDefinedClosed
    (And.intro E.firstMainTheoremClosed
      (And.intro E.secondMainTheoremClosed E.defectRelationClosed))

end MeromorphicFunctionsOneComplexVariableFoundationCanonicalLaneLean
end HautevilleHouse