-- T2 cruiser

local AddNavalLights = import('/lua/nomadsutils.lua').AddNavalLights
local NSeaUnit = import('/lua/nomadsunits.lua').NSeaUnit
local RocketWeapon1 = import('/lua/nomadsweapons.lua').RocketWeapon1
local EMPGun = import('/lua/nomadsweapons.lua').EMPGun

NSeaUnit = AddNavalLights(NSeaUnit)

INS2002 = Class(NSeaUnit) {
    Weapons = {
        AATurret = Class(RocketWeapon1) {},
        CruiseMissile = Class(RocketWeapon1) {},
        GunTurret = Class(EMPGun) {},
    },

    LightBone_Left = 'Light2',
    LightBone_Right = 'Light1',
    DestructionTicks = 200,
}

TypeClass = INS2002
