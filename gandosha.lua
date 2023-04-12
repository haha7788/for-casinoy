require "lib.moonloader"
local sampev = require 'lib.samp.events'

function main()
  if not isSampLoaded() or not isSampfuncsLoaded() then return end
  while not isSampAvailable() do wait(100) end
end

function sampev.onSendPickedUpPickup(pid)
  pX, pY, pZ = getCharCoordinates(playerPed)
  if getDistanceBetweenCoords3d(pX, pY, pZ, 2195.0, 1677.5, 12.5) < 25 or getDistanceBetweenCoords3d(pX, pY, pZ, 2020.8, 1010.8, 10.8) < 10 then
    sampAddChatMessage("Пошел нахуй пидорасина ебаная блять, лудоман ебучий.", 0xFF0000)
    sound = true
    return false
  end
end