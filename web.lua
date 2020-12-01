local StatCache = require(game.ReplicatedStorage.ClientStatCache)
local dailyhoney = StatCache:GetDailyTotal("Honey")
local username = game:GetService("Players").LocalPlayer.Name
local userid = game:GetService("Players").LocalPlayer.UserId
local honey = game.Players.LocalPlayer.CoreStats.Honey.value
local pollen = game.Players.LocalPlayer.CoreStats.Pollen.value
local capacity = game.Players.LocalPlayer.CoreStats.Capacity.value
local OSTime = os.time();
local Time = os.date('!*t', OSTime);
local icon = "https://www.roblox.com/headshot-thumbnail/image?userId="..userid.."&width=420&height=420&format=png";

while true do
msg = {
    ["embeds"] = {{
        ["color"] = 13708129,
        ["description"] = 'Has **'..honey..'** honey\nBackpack capacity: **'..pollen..'/'..capacity..'**\nDaily Honey: **'..dailyhoney..'**',
        ["author"] = {
                name = username;
                url = 'https://www.roblox.com/games/1537690962/Bee-Swarm-Simulator?refPageId=3306e380-e0e9-43c4-8693-8c420dbf7e9b';
                icon_url = icon;
            };
        timestamp = string.format('%d-%d-%dT%02d:%02d:%02dZ', Time.year, Time.month, Time.day, Time.hour, Time.min, Time.sec);
        }   
    }   
}
    local response = syn.request(
        {
        Url = "https://canary.discord.com/api/webhooks/783317565274980383/xe6fHFyV9iVPs6tT1j24cabPkMisKt-CEBLRVEmc0HonUMugAkujKXjMShxgas65J2mB",
        Method = "POST",
        Headers = {
        ["Content-Type"] = "application/json"
        },
        Body = game:GetService("HttpService"):JSONEncode(msg)
        }
    )
    wait(1)
end)
