import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCrystalGrowthEpitaxyTheoremCanonicalLaneLean

structure CrystalLatticePackage where
  bravaisLattice : Type u
  spaceGroup : Type v
  latticeParameter : Type w
  basisVectors : Prop
  translationalSymmetry : Prop
  pointGroupAction : Prop
  latticeParameterTerm : latticeParameter
  basisVectorsTerm : basisVectors
  translationalSymmetryTerm : translationalSymmetry
  pointGroupActionTerm : pointGroupAction

structure CrystalLatticeEvidence (C : CrystalLatticePackage) where
  latticeParameterClosed : C.latticeParameter
  basisVectorsClosed : C.basisVectors
  translationalSymmetryClosed : C.translationalSymmetry
  pointGroupActionClosed : C.pointGroupAction

def CrystalLatticeClosed (C : CrystalLatticePackage) : Prop :=
  C.latticeParameter ∧ C.basisVectors ∧ C.translationalSymmetry ∧ C.pointGroupAction

theorem crystal_lattice_closed_from_evidence (C : CrystalLatticePackage) (E : CrystalLatticeEvidence C) :
    CrystalLatticeClosed C := by
  exact And.intro E.latticeParameterClosed (And.intro E.basisVectorsClosed (And.intro E.translationalSymmetryClosed E.pointGroupActionClosed))

end MaterialsCrystalGrowthEpitaxyTheoremCanonicalLaneLean
end HautevilleHouse