import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicFunctionsOneComplexVariableFoundationCanonicalLaneLean

structure RiemannMappingPackage where
  simplyConnectedDomain : Set ℂ → Prop
  biholomorphicMap : Set ℂ → Set ℂ → Prop
  unitDiskModel : ℂ → ℂ
  mappingExistence : Prop
  boundaryBehavior : Prop

def RiemannMappingClosed (R : RiemannMappingPackage) : Prop :=
  R.mappingExistence ∧ R.boundaryBehavior

structure RiemannMappingEvidence (R : RiemannMappingPackage) where
  mappingExistenceClosed : R.mappingExistence
  boundaryBehaviorClosed : R.boundaryBehavior

theorem riemann_mapping_closed_from_evidence (R : RiemannMappingPackage) (E : RiemannMappingEvidence R) : RiemannMappingClosed R := by
  exact And.intro E.mappingExistenceClosed E.boundaryBehaviorClosed

end MeromorphicFunctionsOneComplexVariableFoundationCanonicalLaneLean
end HautevilleHouse