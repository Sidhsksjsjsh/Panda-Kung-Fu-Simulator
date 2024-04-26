local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/Sidhsksjsjsh/VAPE-UI-MODDED/main/.lua"))()
local wndw = lib:Window("VIP Turtle Hub V4")
local T1 = wndw:Tab("Main")
local T2 = wndw:Tab("Egg")
local T3 = wndw:Tab("Fight")

local workspace = game:GetService("Workspace")

local var = {
  train = false,
  on = false,
  daily = false,
  spin = false,
  reb = false,
  egg = {
    table = {},
    s = "egg_1",
    toggle = false,
    d = {}
  },
  f = {
    table = {},
    s = "10001",
    toggle = false,
    c = false
  }
}

lib:AddTable(workspace.Area.PetLottery,var.egg.table)
lib:AddTable(workspace["StageBoss"],var.f.table)

T1:Toggle("Auto train",false,function(value)
    var.train = value
    while wait() do
      if var.train == false then break end
      game:GetService("ReplicatedStorage")["Train"]["Remote"]["TrainSelf"]:InvokeServer()
    end
end)

T1:Toggle("Auto claim online rewards",false,function(value)
    var.on = value
    while wait() do
      if var.on == false then break end
      game:GetService("ReplicatedStorage")["OnlineRewardFolder"]["Remote"]["ApplyActiveReward"]:InvokeServer(1)
      game:GetService("ReplicatedStorage")["OnlineRewardFolder"]["Remote"]["ApplyActiveReward"]:InvokeServer(2)
      game:GetService("ReplicatedStorage")["OnlineRewardFolder"]["Remote"]["ApplyActiveReward"]:InvokeServer(3)
      game:GetService("ReplicatedStorage")["OnlineRewardFolder"]["Remote"]["ApplyActiveReward"]:InvokeServer(4)
      game:GetService("ReplicatedStorage")["OnlineRewardFolder"]["Remote"]["ApplyActiveReward"]:InvokeServer(5)
      game:GetService("ReplicatedStorage")["OnlineRewardFolder"]["Remote"]["ApplyActiveReward"]:InvokeServer(6)
      game:GetService("ReplicatedStorage")["OnlineRewardFolder"]["Remote"]["ApplyActiveReward"]:InvokeServer(7)
      game:GetService("ReplicatedStorage")["OnlineRewardFolder"]["Remote"]["ApplyActiveReward"]:InvokeServer(8)
      game:GetService("ReplicatedStorage")["OnlineRewardFolder"]["Remote"]["ApplyActiveReward"]:InvokeServer(9)
      game:GetService("ReplicatedStorage")["OnlineRewardFolder"]["Remote"]["ApplyActiveReward"]:InvokeServer(10)
      game:GetService("ReplicatedStorage")["OnlineRewardFolder"]["Remote"]["ApplyActiveReward"]:InvokeServer(11)
      game:GetService("ReplicatedStorage")["OnlineRewardFolder"]["Remote"]["ApplyActiveReward"]:InvokeServer(12)
      game:GetService("ReplicatedStorage")["OnlineRewardFolder"]["Remote"]["ApplyActiveReward"]:InvokeServer(13)
    end
end)

T1:Toggle("Auto claim daily rewards",false,function(value)
    var.daily = value
    while wait() do
      if var.daily == false then break end
      game:GetService("ReplicatedStorage")["LoginRewardFolder"]["Remote"]["ApplyClaimRewards"]:InvokeServer("LoginReward_beginer",1)
      game:GetService("ReplicatedStorage")["LoginRewardFolder"]["Remote"]["ApplyClaimRewards"]:InvokeServer("LoginReward_beginer",2)
      game:GetService("ReplicatedStorage")["LoginRewardFolder"]["Remote"]["ApplyClaimRewards"]:InvokeServer("LoginReward_beginer",3)
      game:GetService("ReplicatedStorage")["LoginRewardFolder"]["Remote"]["ApplyClaimRewards"]:InvokeServer("LoginReward_beginer",4)
      game:GetService("ReplicatedStorage")["LoginRewardFolder"]["Remote"]["ApplyClaimRewards"]:InvokeServer("LoginReward_beginer",5)
      game:GetService("ReplicatedStorage")["LoginRewardFolder"]["Remote"]["ApplyClaimRewards"]:InvokeServer("LoginReward_beginer",6)
      game:GetService("ReplicatedStorage")["LoginRewardFolder"]["Remote"]["ApplyClaimRewards"]:InvokeServer("LoginReward_beginer",7)
      game:GetService("ReplicatedStorage")["LoginRewardFolder"]["Remote"]["ApplyClaimRewards"]:InvokeServer("LoginReward_beginer",8)
      game:GetService("ReplicatedStorage")["LoginRewardFolder"]["Remote"]["ApplyClaimRewards"]:InvokeServer("LoginReward_beginer",9)
      game:GetService("ReplicatedStorage")["LoginRewardFolder"]["Remote"]["ApplyClaimRewards"]:InvokeServer("LoginReward_beginer",10)
      game:GetService("ReplicatedStorage")["LoginRewardFolder"]["Remote"]["ApplyClaimRewards"]:InvokeServer("LoginReward_beginer",11)
      game:GetService("ReplicatedStorage")["LoginRewardFolder"]["Remote"]["ApplyClaimRewards"]:InvokeServer("LoginReward_beginer",12)
      game:GetService("ReplicatedStorage")["LoginRewardFolder"]["Remote"]["ApplyClaimRewards"]:InvokeServer("LoginReward_beginer",13)
      game:GetService("ReplicatedStorage")["LoginRewardFolder"]["Remote"]["ApplyClaimRewards"]:InvokeServer("LoginReward_beginer",14)
      game:GetService("ReplicatedStorage")["LoginRewardFolder"]["Remote"]["ApplyClaimRewards"]:InvokeServer("LoginReward_beginer",15)
    end
end)

T1:Toggle("Auto spin",false,function(value)
    var.spin = value
    while wait() do
      if var.spin == false then break end
      game:GetService("ReplicatedStorage")["RouletteFolder"]["Remote"]["ApplyDraw"]:InvokeServer("Roulette_1")
    end
end)

T1:Toggle("Auto rebirth",false,function(value)
    var.reb = value
    while wait() do
      if var.reb == false then break end
      game:GetService("ReplicatedStorage")["Rebirth"]["Remote"]["TryRebirth"]:InvokeServer()
    end
end)

T2:Dropdown("Choose egg",var.egg.table,function(value)
    var.egg.s = value
end)

T2:Toggle("Auto hatch",false,function(value)
    var.egg.toggle = value
    while wait() do
      if var.egg.toggle == false then break end
      game:GetService("ReplicatedStorage")["LotteryFolder"]["Remote"]["ApplyLottery"]:InvokeServer(workspace["Area"]["PetLottery"][var.egg.s]:GetAttribute("OriginName"),1,var.egg.d)
    end
end)

T3:Dropdown("Choose enemies",var.f.table,function(value)
    var.f.s = value
end)

T3:Toggle("Auto fight",false,function(value)
    var.f.toggle = value
    while wait() do
      if var.f.toggle == false then break end
      game:GetService("ReplicatedStorage")["Fight"]["Remote"]["ApplyFight"]:InvokeServer(var.f.s)
    end
end)

T3:Toggle("Auto click [ High Damage ]",false,function(value)
    var.f.c = value
    while wait() do
      if var.f.c == false then break end
      game:GetService("ReplicatedStorage")["Fight"]["Remote"]["SubmitPlayerOperation"]:InvokeServer({["DamageEnegry"] = 9e9})
    end
end)
