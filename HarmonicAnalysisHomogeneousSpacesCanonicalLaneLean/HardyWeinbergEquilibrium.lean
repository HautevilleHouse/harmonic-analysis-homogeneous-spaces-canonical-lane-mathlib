import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisHomogeneousSpacesCanonicalLaneLean

structure HardyWeinbergPackage where
  populationSize : Nat
  alleleFrequencies : Type u
  hardyWeinbergEquilibrium : Prop
  chiSquaredTest : Prop
  pValueTreshold : ℝ

structure HardyWeinbergEvidence (P : HardyWeinbergPackage) where
  equilibriumClosed : P.hardyWeinbergEquilibrium
  chiSquaredTestClosed : P.chiSquaredTest

def HardyWeinbergClosed (P : HardyWeinbergPackage) : Prop :=
  P.hardyWeinbergEquilibrium ∧ P.chiSquaredTest

theorem hardy_weinberg_closed_from_evidence (P : HardyWeinbergPackage) (E : HardyWeinbergEvidence P) :
    HardyWeinbergClosed P := by
  exact And.intro E.equilibriumClosed E.chiSquaredTestClosed

end HarmonicAnalysisHomogeneousSpacesCanonicalLaneLean
end HautevilleHouse