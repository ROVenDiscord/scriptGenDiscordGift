--//KEEP IN MIND THAT THERE IS LIKE A 1/1,000,000,000,000,000 CHANCE THAT ONE OF THESE WORK!


local GeneratorEnabled = true
local Amount = 12

function GenerateGift()
if GeneratorEnabled == true then
    task.spawn(function()
    for i = 1, Amount do
    local chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
    local str = ""
    for i = 1, 16 do
        local index = math.random(1, #chars)
        str = str .. string.sub(chars, index, index)
    end

local Webhook = 'https://discord.com/api/webhooks/1068965843607769152/1akvdl-CBanyFMYRby3tGhTJtrFmIye5xs1GVJmjRMtjoKsGsOT5wxYNqkVfd8EgEpwF' --//Put your webhook url in here dumbass
pcall(function()
local data = {
["embeds"] = {
{
["title"] = 'neetro generetur!',
["description"] = 'https://discord.gift/'..str
}
}
}
if syn then
local response = syn.request(
{
Url = Webhook,
Method = 'POST',
Headers = {
['Content-Type'] = 'application/json'
},
Body = game:GetService('HttpService'):JSONEncode(data)
}
);
elseif request then
local response = request(
{
Url = Webhook,
Method = 'POST',
Headers = {
['Content-Type'] = 'application/json'
},
Body = game:GetService('HttpService'):JSONEncode(data)
}
);
elseif http_request then
local response = http_request(
{
Url = Webhook,
Method = 'POST',
Headers = {
['Content-Type'] = 'application/json'
},
Body = game:GetService('HttpService'):JSONEncode(data)
}
);
end
end)


    end
    end)
    end
end

GenerateGift()