import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCrystalGrowthEpitaxyTheoremCanonicalLaneLean

structure BravaisLatticePackage where
  centeringTypes : Type u
  latticeSystems : Type v
  crystalFamilies : Type w
  latticeParameters : Prop
  centeringCompatibility : Prop
  systematicAbsences : Prop

structure BravaisLatticeEvidence (B : BravaisLatticePackage) where
  latticeParametersClosed : B.latticeParameters
  centeringCompatibilityClosed : B.centeringCompatibility
  systematicAbsencesClosed : B.systematicAbsences

def BravaisLatticeClosed (B : BravaisLatticePackage) : Prop :=
  B.latticeParameters ∧ B.centeringCompatibility ∧ B.systematicAbsences

theorem bravais_lattice_closed_from_evidence (B : BravaisLatticePackage)
    (E : BravaisLatticeEvidence B) : BravaisLatticeClosed B := by
  exact And.intro E.latticeParametersClosed
    (And.intro E.centeringCompatibilityClosed E.systematicAbsencesClosed)

end MaterialsCrystalGrowthEpitaxyTheoremCanonicalLaneLean
end HautevilleHouse