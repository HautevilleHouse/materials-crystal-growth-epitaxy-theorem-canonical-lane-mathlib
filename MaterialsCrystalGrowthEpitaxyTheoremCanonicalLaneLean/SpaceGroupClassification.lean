import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCrystalGrowthEpitaxyTheoremCanonicalLaneLean

structure SpaceGroupPackage where
  symmorphicGroups : Prop
  nonSymmorphicGroups : Prop
  screwAxes : Prop
  glidePlanes : Prop
  wyckoffPositions : Prop
  siteSymmetry : Prop

structure SpaceGroupEvidence (S : SpaceGroupPackage) where
  symmorphicGroupsClosed : S.symmorphicGroups
  nonSymmorphicGroupsClosed : S.nonSymmorphicGroups
  screwAxesClosed : S.screwAxes
  glidePlanesClosed : S.glidePlanes
  wyckoffPositionsClosed : S.wyckoffPositions
  siteSymmetryClosed : S.siteSymmetry

def SpaceGroupClosed (S : SpaceGroupPackage) : Prop :=
  S.symmorphicGroups ∧ S.nonSymmorphicGroups ∧ S.screwAxes ∧
  S.glidePlanes ∧ S.wyckoffPositions ∧ S.siteSymmetry

theorem space_group_closed_from_evidence (S : SpaceGroupPackage)
    (E : SpaceGroupEvidence S) : SpaceGroupClosed S := by
  exact And.intro E.symmorphicGroupsClosed
    (And.intro E.nonSymmorphicGroupsClosed
      (And.intro E.screwAxesClosed
        (And.intro E.glidePlanesClosed
          (And.intro E.wyckoffPositionsClosed E.siteSymmetryClosed))))

end MaterialsCrystalGrowthEpitaxyTheoremCanonicalLaneLean
end HautevilleHouse