import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCrystalGrowthEpitaxyTheoremCanonicalLaneLean

structure DefectFormationPackage where
  pointDefects : Prop
  dislocations : Prop
  stackingFaults : Prop
  twinBoundaries : Prop
  defectDensity : Prop
  pointDefectsTerm : pointDefects
  dislocationsTerm : dislocations
  stackingFaultsTerm : stackingFaults
  twinBoundariesTerm : twinBoundaries
  defectDensityTerm : defectDensity

structure DefectFormationEvidence (D : DefectFormationPackage) where
  pointDefectsClosed : D.pointDefects
  dislocationsClosed : D.dislocations
  stackingFaultsClosed : D.stackingFaults
  twinBoundariesClosed : D.twinBoundaries
  defectDensityClosed : D.defectDensity

def DefectFormationClosed (D : DefectFormationPackage) : Prop :=
  D.pointDefects ∧ D.dislocations ∧ D.stackingFaults ∧ D.twinBoundaries ∧ D.defectDensity

theorem defect_formation_closed_from_evidence (D : DefectFormationPackage) (E : DefectFormationEvidence D) :
    DefectFormationClosed D := by
  exact And.intro E.pointDefectsClosed (And.intro E.dislocationsClosed (And.intro E.stackingFaultsClosed (And.intro E.twinBoundariesClosed E.defectDensityClosed)))

end MaterialsCrystalGrowthEpitaxyTheoremCanonicalLaneLean
end HautevilleHouse