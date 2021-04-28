local inzone = false
local Zones = {}

Citizen.CreateThread(function()
    while true do
        local plyPed = PlayerPedId()
        local coord = GetEntityCoords(plyPed)

        Citizen.Wait(500)

        for _, zone in pairs(Zones) do
            if Zones[_]:isPointInside(coord) then

                inzone = true

                TriggerEvent("bt-polyzone:enter", _)

                while inzone do
                    local plyPed = PlayerPedId()
                    local InZoneCoordS = GetEntityCoords(plyPed)

                    if not Zones[_]:isPointInside(InZoneCoordS) then 
                        inzone = false
                    end

                    Citizen.Wait(250)
                end

                TriggerEvent("bt-polyzone:exit", _)
            end
        end
    end
end)

function AddCircleZone(name, center, radius, options)
    Zones[name] = CircleZone:Create(center, radius, options)
end

function AddBoxZone(name, center, length, width, options)
    Zones[name] = BoxZone:Create(center, length, width, options)
end

function AddPolyZone(name, points, options)
    Zones[name] = PolyZone:Create(points, options)
end
