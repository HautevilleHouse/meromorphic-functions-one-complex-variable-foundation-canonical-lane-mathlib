import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MeromorphicFunctionsOneComplexVariableFoundationCanonicalLaneLean.MeromorphicFunctionTheory

/-!
# Riemann Mapping and Picard Theorems Package
-/

namespace HautevilleHouse
namespace MeromorphicFunctionsOneComplexVariableFoundationCanonicalLaneLean

structure RiemannMappingPicardPackage {C : CauchyWeierstrassPackage}
    {M : MeromorphicFunctionTheoryPackage C} where
  riemannMappingTheorem : Prop
  littlePicardTheorem : Prop
  bigPicardTheorem : Prop
  montelNormality : Prop

structure RiemannMappingPicardEvidence {C : CauchyWeierstrassPackage}
    {M : MeromorphicFunctionTheoryPackage C} (R : RiemannMappingPicardPackage M) where
  riemannMappingTheoremClosed : R.riemannMappingTheorem
  littlePicardTheoremClosed : R.littlePicardTheorem
  bigPicardTheoremClosed : R.bigPicardTheorem
  montelNormalityClosed : R.montelNormality

def RiemannMappingPicardClosed {C : CauchyWeierstrassPackage}
    {M : MeromorphicFunctionTheoryPackage C} (R : RiemannMappingPicardPackage M) : Prop :=
  R.riemannMappingTheorem ∧ R.littlePicardTheorem ∧
  R.bigPicardTheorem ∧ R.montelNormality

theorem riemann_mapping_picard_closed_from_evidence
    {C : CauchyWeierstrassPackage} {M : MeromorphicFunctionTheoryPackage C}
    (R : RiemannMappingPicardPackage M) (E : RiemannMappingPicardEvidence R) :
    RiemannMappingPicardClosed R := by
  exact And.intro E.riemannMappingTheoremClosed
    (And.intro E.littlePicardTheoremClosed
      (And.intro E.bigPicardTheoremClosed E.montelNormalityClosed))

end MeromorphicFunctionsOneComplexVariableFoundationCanonicalLaneLean
end HautevilleHouse