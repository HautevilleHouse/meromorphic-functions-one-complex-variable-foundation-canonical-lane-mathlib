import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicFunctionsOneComplexVariableFoundationCanonicalLaneLean

structure ResidueTheoremPackage where
  residue : Type u
  residueFormula : Prop
  simplePoleResidue : Prop
  sumOfResidues : ℂ → Prop
  argumentPrinciple : Prop

def ResidueTheoremClosed (R : ResidueTheoremPackage) : Prop :=
  R.residueFormula ∧ R.simplePoleResidue ∧ R.sumOfResidues 0 ∧ R.argumentPrinciple

structure ResidueTheoremEvidence (R : ResidueTheoremPackage) where
  residueFormulaClosed : R.residueFormula
  simplePoleResidueClosed : R.simplePoleResidue
  sumOfResiduesClosed : R.sumOfResidues 0
  argumentPrincipleClosed : R.argumentPrinciple

theorem residue_theorem_closed_from_evidence (R : ResidueTheoremPackage) (E : ResidueTheoremEvidence R) : ResidueTheoremClosed R := by
  exact And.intro E.residueFormulaClosed (And.intro E.simplePoleResidueClosed (And.intro E.sumOfResiduesClosed E.argumentPrincipleClosed))

end MeromorphicFunctionsOneComplexVariableFoundationCanonicalLaneLean
end HautevilleHouse