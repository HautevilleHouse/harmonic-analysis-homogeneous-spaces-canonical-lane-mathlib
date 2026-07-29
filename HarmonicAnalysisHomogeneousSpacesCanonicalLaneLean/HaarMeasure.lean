import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisHomogeneousSpacesCanonicalLaneLean

structure HomogeneousSpace (G : Type u) [Group G] [TopologicalSpace G] [TopologicalGroup G] (H : Set G) [Subgroup H] where
  quotientSpace : Type v
  quotientTopology : TopologicalSpace quotientSpace
  quotientTopologicalGroup : TopologicalGroup quotientSpace
  continuousAction : MulAction G quotientSpace
  continuousActionContinuous : ContinuousSMul G quotientSpace
  homogeneous : Prop

structure HaarMeasurePackage (G : Type u) [Group G] [TopologicalSpace G] [TopologicalGroup G] [LocallyCompactGroup G] where
  haarMeasure : MeasureTheory.Measure G
  leftInvariant : MeasureTheory.IsMulLeftInvariant haarMeasure
  nonzeroOnOpens : ∀ (U : Set G), IsOpen U → U.Nonempty → haarMeasure U ≠ 0
  finiteOnCompacts : IsFiniteMeasureOnCompacts haarMeasure

structure HaarMeasureEvidence (G : Type u) [Group G] [TopologicalSpace G] [TopologicalGroup G] [LocallyCompactGroup G] (H : HaarMeasurePackage G) where
  leftInvariantClosed : H.leftInvariant
  nonzeroOnOpensClosed : H.nonzeroOnOpens
  finiteOnCompactsClosed : H.finiteOnCompacts

def HaarMeasureClosed (G : Type u) [Group G] [TopologicalSpace G] [TopologicalGroup G] [LocallyCompactGroup G] (H : HaarMeasurePackage G) : Prop :=
  H.leftInvariant ∧ H.nonzeroOnOpens ∧ H.finiteOnCompacts

theorem haar_measure_closed_from_evidence (G : Type u) [Group G] [TopologicalSpace G] [TopologicalGroup G] [LocallyCompactGroup G] (H : HaarMeasurePackage G) (E : HaarMeasureEvidence G H) : HaarMeasureClosed G H := by
  exact And.intro E.leftInvariantClosed (And.intro E.nonzeroOnOpensClosed E.finiteOnCompactsClosed)

end HarmonicAnalysisHomogeneousSpacesCanonicalLaneLean
end HautevilleHouse