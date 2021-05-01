local Zones = {}
local insideZones = {}

Citizen.CreateThread(function()
    while true do
        local plyPed = PlayerPedId()
        local coord = GetEntityCoords(plyPed)

        Citizen.Wait(500)

        for _, zone in pairs(Zones) do
            if Zones[_]:isPointInside(coord) then
                if (not insideZones[_]) then
                    insideZones[_] = true
                    local insideZone = true
                    Citizen.CreateThread(function()
                        TriggerEvent("bt-polyzone:enter", _)
                        while insideZone do
                            local plyPed = PlayerPedId()
                            local InZoneCoordS = GetEntityCoords(plyPed)
        
                            if not Zones[_]:isPointInside(InZoneCoordS) then 
                                insideZone = false
                                insideZones[_] = false
                                TriggerEvent("bt-polyzone:exit", _)
                            end
                            Citizen.Wait(250)
                        end
                    end)
                end
            end
        end
    end
end)

function AddCircleZone(name, center, radius, options)
    center = vector3(center.x, center.y, center.z)
    Zones[name] = CircleZone:Create(center, radius, options)
end

function AddBoxZone(name, center, length, width, options)
    center = vector3(center.x, center.y, center.z)
    Zones[name] = BoxZone:Create(center, length, width, options)
end

function AddPolyZone(name, points, options)
    Zones[name] = PolyZone:Create(points, options)
end
