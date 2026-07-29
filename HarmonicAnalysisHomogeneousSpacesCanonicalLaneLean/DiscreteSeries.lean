import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisHomogeneousSpacesCanonicalLaneLean

structure DiscreteSeriesPackage where
  lattice : Type u
  dualLattice : Type v
  poissonSummationFormula : Prop
  convergenceCondition : Prop
  spectralDecomposition : Prop

structure DiscreteSeriesEvidence (D : DiscreteSeriesPackage) where
  poissonSummationFormulaClosed : D.poissonSummationFormula
  convergenceConditionClosed : D.convergenceCondition
  spectralDecompositionClosed : D.spectralDecomposition

def DiscreteSeriesClosed (D : DiscreteSeriesPackage) : Prop :=
  D.poissonSummationFormula ∧ D.convergenceCondition ∧ D.spectralDecomposition

theorem discrete_series_closed_from_evidence (D : DiscreteSeriesPackage) (E : DiscreteSeriesEvidence D) :
    DiscreteSeriesClosed D := by
  exact And.intro E.poissonSummationFormulaClosed
    (And.intro E.convergenceConditionClosed E.spectralDecompositionClosed)

end HarmonicAnalysisHomogeneousSpacesCanonicalLaneLean
end HautevilleHouse