# bt-polyzone

Dependencies: https://github.com/mkafrin/PolyZone

Example For MRPD:

exports:

```
exports["bt-polyzone"]:AddBoxZone("PoliceTrashMRPD", vector3(472.88, -996.92, 26.27), 1.6, 1.2, {
    name="PoliceTrashMRPD",
    heading=0,
    --debugPoly=true,
    minZ=24.92,
    maxZ=27.72
})

exports["bt-polyzone"]:AddBoxZone("PoliceArmoryMRPD", vector3(481.52, -995.45, 30.69), 1.0, 3.0, {
    name="PoliceArmoryMRPD",
    heading=0,
    --debugPoly=true,
    minZ=29.69,
    maxZ=31.89
})

exports["bt-polyzone"]:AddBoxZone("PoliceLockerMRPD", vector3(461.76, -997.77, 30.69), 4.2, 4.4, {
    name="PoliceLockerMRPD",
    heading=359,
    --debugPoly=true,
    minZ=29.69,
    maxZ=31.89
}) 

exports["bt-polyzone"]:AddBoxZone("PoliceFingerprintMRPD", vector3(474.04, -1013.2, 26.27), 1.0, 2.0, {
    name="PoliceFingerprintMRPD",
    heading=0,
    --debugPoly=true,
    minZ=25.17,
    maxZ=27.17
})
```

Listens to when player enters zone

```
RegisterNetEvent('bt-polyzone:enter')
AddEventHandler('bt-polyzone:enter', function(name)
    if name == "PoliceTrashMRPD" then

    elseif name == "PoliceArmoryMRPD" then

    elseif name == "PoliceLockerMRPD" then

    elseif name == "PoliceFingerprintMRPD" then

    end
end)
```

Listens to when player leaves zone

```
RegisterNetEvent('bt-polyzone:exit')
AddEventHandler('bt-polyzone:exit', function(name)
    if name == "PoliceTrashMRPD" then

    elseif name == "PoliceArmoryMRPD" then

    elseif name == "PoliceLockerMRPD" then

    elseif name == "PoliceFingerprintMRPD" then

    end
end)
```

You can add a key listener. If you want something to happen in PoliceArmoryMRPD you can create a function that listens when the player presses E. And then the listener deactivates when leaving the polyzone.

---

You can also use other polyzone types. Circle, Box and of course the polyzone. Read mkafrin's polyzone resource to how to make them. Very simple code but helps with the optimisation!
