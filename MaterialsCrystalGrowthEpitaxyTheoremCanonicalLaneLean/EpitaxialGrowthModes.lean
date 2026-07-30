import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCrystalGrowthEpitaxyTheoremCanonicalLaneLean

structure EpitaxialGrowthPackage where
  frankVanDerMerweMode : Prop
  stranskiKrastanovMode : Prop
  vollmerWeberMode : Prop
  latticeMismatchTolerance : Prop
  layerByLayerGrowth : Prop
  islandGrowth : Prop

structure EpitaxialGrowthEvidence (E : EpitaxialGrowthPackage) where
  frankVanDerMerweModeClosed : E.frankVanDerMerweMode
  stranskiKrastanovModeClosed : E.stranskiKrastanovMode
  vollmerWeberModeClosed : E.vollmerWeberMode
  latticeMismatchToleranceClosed : E.latticeMismatchTolerance
  layerByLayerGrowthClosed : E.layerByLayerGrowth
  islandGrowthClosed : E.islandGrowth

def EpitaxialGrowthClosed (E : EpitaxialGrowthPackage) : Prop :=
  E.frankVanDerMerweMode ∧ E.stranskiKrastanovMode ∧ E.vollmerWeberMode ∧
  E.latticeMismatchTolerance ∧ E.layerByLayerGrowth ∧ E.islandGrowth

theorem epitaxial_growth_closed_from_evidence (E : EpitaxialGrowthPackage)
    (Ev : EpitaxialGrowthEvidence E) : EpitaxialGrowthClosed E := by
  exact And.intro Ev.frankVanDerMerweModeClosed
    (And.intro Ev.stranskiKrastanovModeClosed
      (And.intro Ev.vollmerWeberModeClosed
        (And.intro Ev.latticeMismatchToleranceClosed
          (And.intro Ev.layerByLayerGrowthClosed Ev.islandGrowthClosed))))

end MaterialsCrystalGrowthEpitaxyTheoremCanonicalLaneLean
end HautevilleHouse