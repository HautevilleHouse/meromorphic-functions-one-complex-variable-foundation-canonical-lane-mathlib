import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicFunctionsOneComplexVariableFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ∀ (f : A.object) (z : ℂ), IsMeromorphicAt f z → ∃ r : ℂ, ResidueFormula f z r

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

def ConstrainedMeromorphicClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  intro f z h
  exact ResidueFormula.exists_residue f z h

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

theorem constrained_meromorphic_endgame (A : AdmissibleClass) :
    ConstrainedMeromorphicClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MeromorphicFunctionsOneComplexVariableFoundationCanonicalLaneLean
end HautevilleHouse