import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicFunctionsOneComplexVariableFoundationCanonicalLaneLean

structure MeromorphicFunction where
  domain : Set ℂ
  singularities : Set ℂ
  regularPart : (ℂ → ℂ) → Prop
  principalPart : (ℂ → ℂ) → Prop
  laurentExpansion : Type u
  isolatedSingularities : ℂ → Prop
  meromorphicCondition : Prop

structure MeromorphicStructure (f : MeromorphicFunction) where
  isolatedSingularitiesClosed : f.isolatedSingularities = f.singularities
  meromorphicConditionClosed : f.meromorphicCondition

def MeromorphicStructureClosed (f : MeromorphicFunction) : Prop :=
  f.isolatedSingularities = f.singularities ∧ f.meromorphicCondition

theorem meromorphic_structure_closed_from_evidence (f : MeromorphicFunction) (E : MeromorphicStructure f) : MeromorphicStructureClosed f := by
  exact And.intro E.isolatedSingularitiesClosed E.meromorphicConditionClosed

end MeromorphicFunctionsOneComplexVariableFoundationCanonicalLaneLean
end HautevilleHouse