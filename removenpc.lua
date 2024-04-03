Citizen.CreateThread(function()
    while true do
        local peds = GetGamePool('CPed')
        for _, ped in ipairs(peds) do
            if not IsPedAPlayer(ped) then
                DeleteEntity(ped)
            end
        end

        local vehicles = GetGamePool('CVehicle')
        for _, vehicle in ipairs(vehicles) do
            DeleteEntity(vehicle)
        end

        Citizen.Wait(0)
    end
end)
