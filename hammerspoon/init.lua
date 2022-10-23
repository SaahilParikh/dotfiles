hs.alert.show("Config loaded")
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "R", function()
    hs.reload()
  end)

if not hs.spoons.use("Strawberry") then
    print("Strawberry Spoon Started")
end

spoon.Strawberry:setWorkDuration(50)

caffeine = hs.menubar.new()
function setCaffeineDisplay(state)
    if state then
        caffeine:setTitle("☕")
    else
        caffeine:setTitle("🥛")
    end
end

function caffeineClicked()
    setCaffeineDisplay(hs.caffeinate.toggle("displayIdle"))
end

if caffeine then
    caffeine:setClickCallback(caffeineClicked)
    setCaffeineDisplay(hs.caffeinate.get("displayIdle"))
end
