import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCrystalGrowthEpitaxyTheoremCanonicalLaneLean

structure AdmittedCrystal (M : Type u) [TopologicalSpace M] where
  bravaisLattice : Prop
  spaceGroupClassification : Prop
  diffractionPattern : Prop
  quasicrystalAdmissible : Prop

structure AdmissibleClass where
  crystal : AdmittedCrystal
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CrystalWitnessClosed A.crystal ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MaterialsCrystalGrowthEpitaxyTheoremCanonicalLaneLean
end HautevilleHouse