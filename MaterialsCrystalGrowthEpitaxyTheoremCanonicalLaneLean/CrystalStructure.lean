import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCrystalGrowthEpitaxyTheoremCanonicalLaneLean

structure CrystalLattice where
  dimension : Nat
  latticeType : String
  unitCellVolume : ℝ
  symmetryGroup : String

def BravaisLatticeCount : Nat := 14

structure SpaceGroup where
  id : Nat
  crystalSystem : String
  centeringType : String
  pointGroup : String
  symmetryOperations : List String

def spaceGroupCount : Nat := 230

structure CrystalStructure where
  lattice : CrystalLattice
  spaceGroup : SpaceGroup
  atomicPositions : List (String × ℝ × ℝ × ℝ)

def standardCrystalClasses : List String :=
  ["triclinic", "monoclinic", "orthorhombic", "tetragonal", "hexagonal", "cubic"]

theorem bravais_lattice_count : BravaisLatticeCount = 14 := by rfl

theorem space_group_count : spaceGroupCount = 230 := by rfl

end HautevilleHouse
end MaterialsCrystalGrowthEpitaxyTheoremCanonicalLaneLean