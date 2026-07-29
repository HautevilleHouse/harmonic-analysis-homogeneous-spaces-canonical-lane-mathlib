import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisHomogeneousSpacesCanonicalLaneLean

structure WeightClass where
  weightFunction : Type u
  muckenhouptCondition : Prop
  doublingProperty : Prop
  reverseHolderCondition : Prop

structure WeightedNormPackage where
  weight : WeightClass
  weightedBoundedness : Prop
  factorizationTheorem : Prop
  extrapolationTheorem : Prop

structure WeightedNormEvidence (W : WeightedNormPackage) where
  weightedBoundednessClosed : W.weightedBoundedness
  factorizationTheoremClosed : W.factorizationTheorem
  extrapolationTheoremClosed : W.extrapolationTheorem

def WeightedNormClosed (W : WeightedNormPackage) : Prop :=
  W.weightedBoundedness ∧ W.factorizationTheorem ∧ W.extrapolationTheorem

theorem weighted_norm_closed_from_evidence (W : WeightedNormPackage)
    (E : WeightedNormEvidence W) : WeightedNormClosed W := by
  exact And.intro E.weightedBoundednessClosed
    (And.intro E.factorizationTheoremClosed E.extrapolationTheoremClosed)

end HarmonicAnalysisHomogeneousSpacesCanonicalLaneLean
end HautevilleHouse
