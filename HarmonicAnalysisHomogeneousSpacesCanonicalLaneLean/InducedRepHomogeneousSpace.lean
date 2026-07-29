import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisHomogeneousSpacesCanonicalLaneLean

structure InducedRepHomogeneousSpacePackage where
  homogeneousSpace : Type u
  subgroup : Type v
  representation : Type w
  inductionFunctor : Type x
  frobeniusReciprocity : Prop
  irreducibilityCriterion : Prop

structure InducedRepHomogeneousSpaceEvidence (I : InducedRepHomogeneousSpacePackage) where
  frobeniusReciprocityClosed : I.frobeniusReciprocity
  irreducibilityCriterionClosed : I.irreducibilityCriterion

def InducedRepHomogeneousSpaceClosed (I : InducedRepHomogeneousSpacePackage) : Prop :=
  I.frobeniusReciprocity ∧ I.irreducibilityCriterion

theorem induced_rep_homogeneous_space_closed_from_evidence (I : InducedRepHomogeneousSpacePackage) (E : InducedRepHomogeneousSpaceEvidence I) :
    InducedRepHomogeneousSpaceClosed I := by
  exact And.intro E.frobeniusReciprocityClosed E.irreducibilityCriterionClosed

end HarmonicAnalysisHomogeneousSpacesCanonicalLaneLean
end HautevilleHouse