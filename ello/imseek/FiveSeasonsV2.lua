local tool = Instance.new("Tool")

-- Set the tool's properties
tool.Name = "Five Seasons"
tool.RequiresHandle = false  -- Set to true if you have a handle part
tool.CanBeDropped = true     -- Change as needed

-- Add a description or other properties
tool.ToolTip = "KJ Final Ride Five Seasons"

tool.Activated:Connect(function()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:WaitForChild("Humanoid")
 local l_Folder_7 = Instance.new("Folder");
                l_Folder_7.Name = "NoRotate";
                l_Folder_7.Parent = game.Players.LocalPlayer.Character;
        local Players = game:GetService("Players")
        local LocalPlayer = Players.LocalPlayer
        local RunService = game:GetService("RunService")
        local Emit = {}

        function Emit.Emit(Any)
            task.wait(0.001)
            for _,Particles in pairs(Any:GetDescendants()) do
                --if Particles:IsA("ParticleEmitter") then
                --	Particles:Emit(Particles:GetAttribute("EmitCount"))
                --end
                task.delay(Particles:GetAttribute("EmitDelay"), function()
                    if Particles:IsA('ParticleEmitter') then
                        Particles:Emit(Particles:GetAttribute("EmitCount"))
                    end
                    if Particles:GetAttribute("EmitDuration") then
                        if Particles:GetAttribute("EmitDuration") > 0 then
                            task.defer(function()
                                Particles.Enabled = true
                                task.wait(Particles:GetAttribute("EmitDuration"))
                                Particles.Enabled = false
                            end)
                        end
                    else
                        if Particles:IsA("ParticleEmitter") then
                            Particles:Emit(Particles:GetAttribute("EmitCount"))
                        end
                    end
                end)
            end
        end
        function Emit.Enabled(Any)
            task.wait(.001)
            for _,Particles in pairs(Any:GetDescendants()) do
                if Particles:IsA('ParticleEmitter') then
                    Particles.Enabled = true
                end
            end
        end
        function Emit.Disabled(Any)
            task.wait(.001)
            for _,Particles in pairs(Any:GetDescendants()) do
                if Particles:IsA('ParticleEmitter') then
                    Particles.EmissionDirection = "Right"
                    Particles.Enabled = false
                end
            end
        end
        function Emit.BeamTransparency(Beam)
            wait()
            for _,Particles in pairs(Beam:GetDescendants()) do
                if Particles:IsA("Beam") then
                    spawn(function()
                        Particles.Enabled = false
                    end)
                end
            end
        end
            local RS = game.ReplicatedStorage
        local v_u_1 = game:GetService("RunService")
        local v2 = game.Players.LocalPlayer
        local v_u_3 = v2.Character or v2.CharacterAdded:Wait()
        local v_u_4 = workspace.CurrentCamera
        local RunService = game:GetService("RunService")
        local Players = game:GetService("Players")
        local TweenService = game:GetService("TweenService")
        local localPlayer = Players.LocalPlayer
        local character = localPlayer.Character or localPlayer.CharacterAdded:Wait()
        local Camera = workspace.CurrentCamera
        local FiveEffects = RS.Resources.FiveSeasonsFX
        local EYE = FiveEffects.CharFX.EyeEmit:Clone()
        local KJEffects = RS.Resources.KJEffects
        local player = game.Players.LocalPlayer
        local character = player.Character
        local humanoid = character:WaitForChild("Humanoid")
        local Hand = FiveEffects.CharFX.ArmFX:Clone()
        local NOIMTELEPORTINGHELPPPPP = FiveEffects.CharFX.TP:Clone()
        local animator = humanoid:WaitForChild("Animator")
        local Animation = Instance.new("Animation")
        Animation.AnimationId = "rbxassetid://18462892217"
            
        local playAnim = humanoid:LoadAnimation(Animation)
        Animation.AnimationId = "rbxassetid://0"
        playAnim:Play()
        spawn(function()
            local l_char_32 = game.Players.LocalPlayer.Character;
            local _ = game.Players.LocalPlayer.UserId;
            local l_TweenService_18 = game:GetService("TweenService");
            local l_FiveSeasonsFX_1 = game:GetService("ReplicatedStorage").Resources.FiveSeasonsFX;
            local l_Thrown_18 = workspace.Thrown;
    local v3 = game:GetService("TweenService")
    local v2 = game:service("CollectionService");
            if l_char_32 == game.Players.LocalPlayer.Character then
               
                task.delay(0.9, function()
                    
                  
                    local l_Character_18 = game.Players.LocalPlayer.Character;
                    local l_PrimaryPart_52 = l_char_32.PrimaryPart;
                    local v10728 = tick();
                    local v10729 = nil;
                    local v10730 = nil;
                    v10722 = game:GetService("RunService").RenderStepped:Connect(function(v10731)
                        local v10732 = v10731 * 60;
                        v10721 = v10721 + v10732;
                        local v10733 = tonumber((math.ceil(v10721)));
                        if v10733 >= 340 and not v10729 then
                            v10729 = l_PrimaryPart_52.CFrame;
                        end;
                       
                        if l_Character_18.Parent and not l_Character_18:FindFirstChild("locatingtarg") then
                            if l_CurrentCamera_12.CameraType ~= Enum.CameraType.Scriptable then
                                l_CurrentCamera_12.CameraType = Enum.CameraType.Scriptable;
                            end;
                            v10723 = v10723 + v10732;
                            if v10734 and not v10729 then
                                if tick() - v10728 > 1 then
                                    local l_l_CurrentCamera_12_0 = l_CurrentCamera_12;
                                    local l_FieldOfView_4 = l_CurrentCamera_12.FieldOfView;
                                    l_l_CurrentCamera_12_0.FieldOfView = l_FieldOfView_4 + (v10734.fov - l_FieldOfView_4) * (1 - 9.0E-25 ^ v10731);
                                else
                                    local l_l_CurrentCamera_12_1 = l_CurrentCamera_12;
                                    local l_FieldOfView_5 = l_CurrentCamera_12.FieldOfView;
                                    l_l_CurrentCamera_12_1.FieldOfView = l_FieldOfView_5 + (v10734.fov - l_FieldOfView_5) * (1 - 9.0E-7 ^ v10731);
                                end;
                            end;
                            if v10734 then
                                local v10739 = (v10729 or l_PrimaryPart_52.CFrame) * v10734.cframe;
                                local v10740 = nil;
                                if v10730 and (v10730.Position - v10739.Position).magnitude >= 10 then
                                    v10740 = true;
                                end;
                                v10730 = v10739;
                                if v10740 then
                                    l_CurrentCamera_12.CFrame = v10739;
                                    return ;
                                elseif tick() - v10728 > 1 then
                                    l_CurrentCamera_12.CFrame = l_CurrentCamera_12.CFrame:lerp(v10739, 1 - 9.0E-25 ^ v10731);
                                    return ;
                                else
                                    l_CurrentCamera_12.CFrame = l_CurrentCamera_12.CFrame:lerp(v10739, 1 - 9.0E-7 ^ v10731);
                                    return ;
                                end;
                            end;
                        else
                            l_Folder_7:Destroy();
                            v10722:Disconnect();
                            shared.SetCore(true, nil, true);
                            l_CurrentCamera_12.CameraType = Enum.CameraType.Custom;
                        end;
                    end);
                end);
            end;
            task.spawn(function()
                local v10741 = l_FiveSeasonsFX_1.CharFX.HeatUp:Clone();
                v10741.Parent = l_char_32.HumanoidRootPart;
                for _, v10743 in pairs(v10741:GetDescendants()) do
                    if v10743:IsA("ParticleEmitter") then
                        v10743:Emit(v10743:GetAttribute("EmitCount"));
                    end;
                end;
                v10741.Wisps.Enabled = true;
                task.wait(1);
                v10741.Wisps.Enabled = false;
            end);
            task.delay(1.15, function()
                task.spawn(function()
                    local v10744 = l_FiveSeasonsFX_1.JumpMeshes:Clone();
                    v10744:SetPrimaryPartCFrame(l_char_32.HumanoidRootPart.CFrame);
                    v10744.Parent = l_Thrown_18;
                    task.delay(0.075, function()
                        for _, v10746 in pairs(v10744.Lines:GetDescendants()) do
                            if v10746:IsA("ParticleEmitter") then
                                v10746:Emit(v10746.Name);
                            end;
                        end;
                        local a = Instance.new("Attachment")
                        a.Name = "wo"
                        a.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
                        a.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 40, 0)
local vfx = game.ReplicatedStorage.Resources.FiveSeasonsFX.JumpMeshes.Lines["4"]
local Amount = 100

local o = vfx:Clone()
o.Parent = a
o:Emit(Amount)
o.Enabled = true
local vf = game.ReplicatedStorage.Resources.FiveSeasonsFX.JumpMeshes.Lines["3"]
local Amoun = 100
local e = vf:Clone()
e.Parent = a
e:Emit(Amoun)
e.Enabled = true
wait(0.1)
o.Enabled = false
e.Enabled = false
wait(8)
o:Destroy()
e:Destroy()
task.spawn(function()
local d = a:Clone()
d.Parent = a
d.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 80, 0)
local vfx = game.ReplicatedStorage.Resources.FiveSeasonsFX.JumpMeshes.Lines["4"]
local Amount = 100

local o = vfx:Clone()
o.Parent = d
o:Emit(Amount)
o.Enabled = true
local vf = game.ReplicatedStorage.Resources.FiveSeasonsFX.JumpMeshes.Lines["3"]
local Amoun = 100
local e = vf:Clone()
e.Parent = d
e:Emit(Amoun)
e.Enabled = true
wait(0.1)
o.Enabled = false
e.Enabled = false
wait(8)
o:Destroy()
e:Destroy()
end)
task.spawn(function()
local r = a:Clone()
r.Parent = a
r.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 120, 0)
local vfx = game.ReplicatedStorage.Resources.FiveSeasonsFX.JumpMeshes.Lines["4"]
local Amount = 100

local o = vfx:Clone()
o.Parent = r
o:Emit(Amount)
o.Enabled = true
local vf = game.ReplicatedStorage.Resources.FiveSeasonsFX.JumpMeshes.Lines["3"]
local Amoun = 100
local e = vf:Clone()
e.Parent = r
e:Emit(Amoun)
e.Enabled = true
wait(0.1)
o.Enabled = false
e.Enabled = false
wait(8)
o:Destroy()
e:Destroy()
end)
                    end);
                    task.spawn(function()
                        local v10747 = v10744.Main:Clone();
                        local l_Start_298 = v10747.Start;
                        local l_End_295 = v10747.End;
                        local v10750 = l_Start_298:Clone();
                        v10750.Transparency = 0.95;
                        v10750.Name = "ClonedMesh";
                        v10750.Parent = v10744.CurrentTweens;
                        l_TweenService_18:Create(v10750, TweenInfo.new(0.75, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                            CFrame = l_End_295.CFrame
                        }):Play();
                        l_TweenService_18:Create(v10750, TweenInfo.new(0.75, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                            Size = l_End_295.Size
                        }):Play();
                        task.wait(0.75);
                        v10750:Destroy();
                    end);
                    task.spawn(function()
                        local v10751 = v10744.Wind3:Clone();
                        local l_Start_299 = v10751.Start;
                        local l_End_296 = v10751.End;
                        local v10754 = l_Start_299:Clone();
                        v10754.Transparency = 0.75;
                        v10754.Name = "ClonedMesh";
                        v10754.Parent = v10744.CurrentTweens;
                        l_TweenService_18:Create(v10754, TweenInfo.new(0.8, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                            CFrame = l_End_296.CFrame, 
                            Size = l_End_296.Size
                        }):Play();
                        l_TweenService_18:Create(v10754, TweenInfo.new(0.8, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                            Transparency = 1
                        }):Play();
                        task.wait(0.8);
                        v10754:Destroy();
                    end);
                    task.spawn(function()
                        local v10755 = v10744.Wind2:Clone();
                        local l_Start_300 = v10755.Start;
                        local l_End_297 = v10755.End;
                        local v10758 = l_Start_300:Clone();
                        v10758.Transparency = 0.8;
                        v10758.Name = "ClonedMesh";
                        v10758.Parent = v10744.CurrentTweens;
                        l_TweenService_18:Create(v10758, TweenInfo.new(0.55, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {
                            CFrame = l_End_297.CFrame
                        }):Play();
                        l_TweenService_18:Create(v10758, TweenInfo.new(0.55, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
                            Size = l_End_297.Size, 
                            Transparency = 1
                        }):Play();
                        task.wait(0.55);
                        v10758:Destroy();
                    end);
                    local function v10765()
                        task.spawn(function()
                            local v10759 = v10744.WindDecal2:Clone();
                            v10759:ScaleTo(Random.new():NextNumber(0.95, 2.35));
                            local v10760 = Random.new():NextNumber(1, 2.75);
                            local v10761 = math.random(0, 360);
                            v10759:SetPrimaryPartCFrame(v10759.PrimaryPart.CFrame * CFrame.Angles(0, math.rad(v10761), 0));
                            v10759.End.CFrame = v10759.End.CFrame * CFrame.Angles(0, math.rad(v10761), 0);
                            local l_Start_301 = v10759.Start;
                            local l_End_298 = v10759.End;
                            local v10764 = l_Start_301:Clone();
                            v10764.Decal.Transparency = Random.new():NextNumber(0.8, 0.93);
                            v10764.Name = "ClonedMesh";
                            v10764.Parent = v10744.CurrentTweens;
                            l_TweenService_18:Create(v10764, TweenInfo.new(v10760, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {
                                Size = l_End_298.Size, 
                                CFrame = l_End_298.CFrame
                            }):Play();
                            l_TweenService_18:Create(v10764.Mesh, TweenInfo.new(v10760, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {
                                Scale = l_End_298.Mesh.Scale
                            }):Play();
                            l_TweenService_18:Create(v10764.Decal, TweenInfo.new(v10760, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                                Transparency = 1
                            }):Play();
                            task.wait(4);
                            v10764:Destroy();
                        end);
                    end;
                    for _ = 1, 5 do
                        spawn(v10765);
                        task.wait(0.035);
                    end;
                    task.wait(5);
                    v10744:Destroy();
                end);
                local v10767 = l_FiveSeasonsFX_1.JumpFX:Clone();
                v10767:SetPrimaryPartCFrame(l_char_32.HumanoidRootPart.CFrame);
                v10767.Parent = l_Thrown_18;
                for _, v10769 in pairs(v10767.JumpFX:GetDescendants()) do
                    if v10769:IsA("ParticleEmitter") then
                        v10769:Emit(v10769:GetAttribute("EmitCount"));
                    end;
                end;
                v10767.JumpFX.EnabledP.Enabled = true;
                local l_Highlight_1 = Instance.new("Highlight");
                l_Highlight_1.FillColor = Color3.fromRGB(255, 66, 28);
                l_Highlight_1.OutlineColor = Color3.fromRGB(255, 44, 2);
                l_Highlight_1.FillTransparency = 0.5;
                l_Highlight_1.OutlineTransparency = 0.6;
                l_Highlight_1.DepthMode = "Occluded";
                l_Highlight_1.Parent = l_char_32;
                l_TweenService_18:Create(l_Highlight_1, TweenInfo.new(0.75, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut), {
                    FillTransparency = 1, 
                    OutlineTransparency = 1
                }):Play();
                local v10771 = l_FiveSeasonsFX_1.CharFX.BeamFX:Clone();
                v10771.Parent = l_char_32.Torso;
                for _, v10773 in pairs(v10771.Beams:GetDescendants()) do
                    if v10773:IsA("Beam") then
                        v10773.Enabled = true;
                        v10773.TextureLength = v10773.TextureLength + Random.new():NextNumber(0.25, -0.25);
                    end;
                end;
                task.wait(1.275);
                l_TweenService_18:Create(v10771, TweenInfo.new(0.85, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
                    Position = Vector3.new(0, 0, 1, 0)
                }):Play();
                for _, v10775 in pairs(v10771.Beams:GetDescendants()) do
                    if v10775:IsA("Beam") then
                        l_TweenService_18:Create(v10775, TweenInfo.new(0.9, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut), {
                            Brightness = 0, 
                            Width0 = 0, 
                            Width1 = 0, 
                            CurveSize1 = 0, 
                            CurveSize0 = 0, 
                            TextureSpeed = v10775.TextureSpeed / 3
                        }):Play();
                        l_TweenService_18:Create(v10775, TweenInfo.new(0.8, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
                            Brightness = 0
                        }):Play();
                    end;
                end;
                for _, v10777 in pairs(v10771:GetDescendants()) do
                    if v10777:IsA("Attachment") and v10777.Name == "tipat2" then
                        l_TweenService_18:Create(v10777, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
                            Position = Vector3.new(0, 0, -1.5, 0)
                        }):Play();
                    end;
                end;
                task.wait(0.5);
                v10767.JumpFX.EnabledP.Enabled = false;
                task.wait(4);
                v10771:Destroy();
                v10767:Destroy();
                l_Highlight_1:Destroy();
            end);
            local v10778 = l_FiveSeasonsFX_1.FXUi:Clone();
            local l_Vignette_1 = v10778.Vignette;
            local v10780 = l_FiveSeasonsFX_1.HandFire:Clone();
            task.delay(1.95, function()
                v10778.Parent = game.Players.LocalPlayer.PlayerGui;
                l_TweenService_18:Create(l_Vignette_1, TweenInfo.new(1.65, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
                    ImageTransparency = 0
                }):Play();
                v10780:SetPrimaryPartCFrame(l_char_32["Left Arm"].CFrame);
                v10780.Parent = l_Thrown_18;
                v10780.ArmWeld.Part0 = l_char_32["Left Arm"];
                v10780.ArmWeld.Part1 = v10780.Primary;
            end);
            local v10781 = l_FiveSeasonsFX_1.ShadowDecal:Clone();
            local v10782 = l_FiveSeasonsFX_1.ShadowDecal2:Clone();
            v10781.Face = "Bottom";
            v10782.Face = "Bottom";
            task.delay(3.25, function()
                local v10783 = l_FiveSeasonsFX_1.CharFX.WindupGlow:Clone();
                v10783.Parent = l_char_32["Left Arm"];
                for _, v10785 in pairs(v10783:GetDescendants()) do
                    if v10785:IsA("ParticleEmitter") then
                        v10785:Emit(v10785:GetAttribute("EmitCount"));
                    end;
                end;
                v10781.Parent = l_char_32["Left Arm"];
                v10782.Parent = l_char_32["Left Arm"];
                l_TweenService_18:Create(v10782, TweenInfo.new(0.9, Enum.EasingStyle.Sine, Enum.EasingDirection.In), {
                    Transparency = 0.7
                }):Play();
                task.wait(0.2);
                l_TweenService_18:Create(v10781, TweenInfo.new(0.9, Enum.EasingStyle.Sine, Enum.EasingDirection.In), {
                    Transparency = 0.75
                }):Play();
                task.wait(8);
                v10781:Destroy();
                v10782:Destroy();
                v10783:Destroy();
            end);
            task.delay(3.545, function()
                for _, v10787 in pairs(v10780.FX:GetChildren()) do
                    if v10787:IsA("ParticleEmitter") then
                        v10787.Enabled = false;
                    end;
                end;
                for _, v10789 in pairs(v10780.Emit:GetChildren()) do
                    if v10789:IsA("ParticleEmitter") then
                        v10789:Emit(v10789:GetAttribute("EmitCount"));
                    end;
                end;
                task.wait(1);
                v10780:Destroy();
            end);
            local v10790 = l_FiveSeasonsFX_1.CharFX.ArmFX:Clone();
            local v10791 = l_FiveSeasonsFX_1.CharFX.ArmBurst:Clone();
            task.delay(4.3, function()
                v10790.Parent = l_char_32["Left Arm"];
                v10791.Parent = l_char_32["Left Arm"];
                for _, v10793 in pairs(v10791:GetDescendants()) do
                    if v10793:IsA("ParticleEmitter") then
                        v10793:Emit(v10793:GetAttribute("EmitCount"));
                    end;
                end;
                local v10794 = l_FiveSeasonsFX_1.FSRed:Clone();
                v10794.Parent = game.Lighting;
                local v10795 = l_FiveSeasonsFX_1.FSWhite:Clone();
                v10795.Parent = game.Lighting;
                local v10796 = l_FiveSeasonsFX_1.FSBlack:Clone();
                v10796.Parent = game.Lighting;
                v10794.Enabled = true;
                task.wait(0.035);
                v10794.Enabled = false;
                v10795.Enabled = true;
                task.wait(0.035);
                v10795.Enabled = false;
                v10796.Enabled = true;
                task.wait(0.035);
                v10796.Enabled = false;
                v10794:Destroy();
                v10795:Destroy();
                v10796:Destroy();
                l_TweenService_18:Create(v10782, TweenInfo.new(0.35, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
                    Transparency = 1
                }):Play();
                l_TweenService_18:Create(v10781, TweenInfo.new(0.35, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
                    Transparency = 1
                }):Play();
                task.wait(6);
                v10790:Destroy();
            end);
            task.delay(5.7, function()
                for _, v10798 in pairs(v10790:GetDescendants()) do
                    if v10798:IsA("ParticleEmitter") then
                        v10798.Enabled = false;
                    end;
                end;
            end);
            task.delay(5.92, function()
                local v10799 = l_FiveSeasonsFX_1.CharFX.WindupSpark:Clone();
                v10799.Parent = l_char_32["Left Arm"];
                for _ = 1, 8 do
                    v10799.WindupSpark:Emit(5);
                    task.wait(0.035);
                end;
                task.wait(1);
                v10799:Destroy();
            end);
            local v10801 = l_FiveSeasonsFX_1.CharFX.ArmEnabled:Clone();
            task.delay(6.42, function()
                v10801.Parent = l_char_32["Left Arm"];
                local v10802 = l_FiveSeasonsFX_1.CharFX.EyeEmit:Clone();
                v10802.Parent = l_char_32.Head;
                for _, v10804 in pairs(v10802:GetDescendants()) do
                    if v10804:IsA("ParticleEmitter") then
                        v10804:Emit(v10804:GetAttribute("EmitCount"));
                    end;
                end;
                v10791.Parent = l_char_32["Left Arm"];
                for _, v10806 in pairs(v10791:GetDescendants()) do
                    if v10806:IsA("ParticleEmitter") then
                        v10806:Emit(v10806:GetAttribute("EmitCount"));
                    end;
                end;
                local v10807 = l_FiveSeasonsFX_1.FSRed:Clone();
                v10807.Parent = game.Lighting;
                local v10808 = l_FiveSeasonsFX_1.FSWhite:Clone();
                v10808.Parent = game.Lighting;
                local v10809 = l_FiveSeasonsFX_1.FSBlack:Clone();
                v10809.Parent = game.Lighting;
                v10778.Vignette.Visible = false;
                for _, v10811 in pairs(game.Players.LocalPlayer.PlayerGui:GetChildren()) do
                    if v10811.Name == "FXUi" and v10811 ~= v10778 then
                        v10811:Destroy();
                    end;
                end;
                v10807.Enabled = true;
                task.wait(0.035);
                v10807.Enabled = false;
                v10808.Enabled = true;
                task.wait(0.035);
                v10808.Enabled = false;
                v10809.Enabled = true;
                task.wait(0.035);
                v10809.Enabled = false;
                v10807:Destroy();
                v10808:Destroy();
                v10809:Destroy();
                local l_Highlight_2 = Instance.new("Highlight");
                l_Highlight_2.FillColor = Color3.fromRGB(0, 0, 0);
                l_Highlight_2.OutlineColor = Color3.fromRGB(167, 0, 0);
                l_Highlight_2.FillTransparency = 0;
                l_Highlight_2.OutlineTransparency = 0;
                l_Highlight_2.DepthMode = "Occluded";
                l_Highlight_2.Parent = l_char_32;
                l_TweenService_18:Create(l_Highlight_2, TweenInfo.new(0.65, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut), {
                    FillTransparency = 1, 
                    OutlineTransparency = 1
                }):Play();
                local v10813 = l_FiveSeasonsFX_1.FinalCC:Clone();
                v10813.Parent = game.Lighting;
                l_TweenService_18:Create(v10813, TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
                    TintColor = Color3.fromRGB(255, 255, 255), 
                    Brightness = 0, 
                    Contrast = 0
                }):Play();
                task.wait(4);
                v10778.Vignette.Visible = false;
                v10791:Destroy();
                v10801:Destroy();
                v10813:Destroy();
                v10802:Destroy();
                l_Highlight_2:Destroy();
            end);
            task.delay(8.25, function()
                if game.Players.LocalPlayer.Character ~= l_char_32 then
                    v10778:Destroy();
                end;
                v10801:Destroy();
            end);
        end)
        spawn(function()
            wait(7)
            local SoundTP = Instance.new("Sound", game:GetService("SoundService"))
            SoundTP.SoundId = "rbxassetid://18461671633"
            SoundTP.Playing = true 
            SoundTP.Volume = 2
        end)
        local tween = game:GetService("TweenService")
local Debris = game:GetService("Debris")
spawn(function()
local impact = {}
function impact.ImpactFrame(Char,TargetTwo,Time)
	local TimeWait = tonumber(Time)
	local ColorCorrection = Instance.new("ColorCorrectionEffect",game.Lighting)
	if Char.Parent == nil or Char.Humanoid.Health <=0 then
		return end


	ColorCorrection.Brightness = 250
	ColorCorrection.Contrast = 1400
	ColorCorrection.Saturation = -1
	wait(TimeWait)
	game.TweenService:Create(ColorCorrection, TweenInfo.new(0.3, Enum.EasingStyle.Cubic, Enum.EasingDirection.In, 0, false, 0), {
		Brightness = 0,
		Contrast = 0,
		Saturation = 0
	}):Play();
	wait(0.4)
	ColorCorrection:Destroy()
end
function impact.SeasonFist(Char,TargetTwo)
	local ColorCorrection = game.ReplicatedStorage.Resources.Season.GrayScale:Clone()
	ColorCorrection.Parent = game.Lighting
	game.TweenService:Create(ColorCorrection, TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.In, 0, false, 0), {
		Brightness = 0,
		Contrast = 0,
		Saturation = 0
	}):Play();
	
end
end)
        spawn(function()
            local sound = Instance.new("Sound", game:GetService("SoundService"))
            sound.Looped = false
            sound.SoundId = "rbxassetid://18460863844"
            sound.Playing = true
            sound.Volume = 2
            local sound2 = Instance.new("Sound", game:GetService("SoundService"))
            sound2.Looped = false
            sound2.SoundId = "rbxassetid://18460952794"
            sound2.Playing = true
            sound2.Volume = 1.5
            wait(3.4)
            local sound3 = Instance.new("Sound", game:GetService("SoundService"))
            sound3.Looped = false
            sound3.SoundId = "rbxassetid://18460893321"
            sound3.Playing = true
            sound3.Volume = 1.5
            wait(8.95)
            sound2.Playing = false
        end)
        
        spawn(function()
            character.HumanoidRootPart.Anchored = true
        local RunService = game:GetService("RunService")
        local Players = game:GetService("Players")
        local TweenService = game:GetService("TweenService")
        local localPlayer = Players.LocalPlayer
        local character = localPlayer.Character or localPlayer.CharacterAdded:Wait()
        local camera = workspace.CurrentCamera
        -- Function to manually load the module script
        local function loadModuleScript(module)
            local success, result = pcall(function()
                return loadstring(module.Source)()
            end)
            if success then
                print("Module loaded successfully")
                return result
            else
                warn("Failed to load the module script:", result)
                return nil
            end
        end
        local RunService = game:GetService("RunService")
        local player = game.Players.LocalPlayer
        local Character = player.Character or player.CharacterAdded:Wait()
        local Camera = workspace.CurrentCamera
        local TweenService = game:GetService("TweenService")
        
        local RunService = game:GetService("RunService")
        local player = game.Players.LocalPlayer
        local Camera = workspace.CurrentCamera
        local RS = game:GetService("ReplicatedStorage")
        local TweenService = game:GetService("TweenService")
        
        -- Wait for the character to load if not already
        local function getCharacter()
            local character = player.Character or player.CharacterAdded:Wait()
            return character
        end
        
        local Character = getCharacter()
        
        -- Listen for character respawn
        player.CharacterAdded:Connect(function()
            Character = getCharacter()
        end)    
        local RunService = game:GetService("RunService")
local player = game.Players.LocalPlayer
local Character = player.Character or player.CharacterAdded:Wait()
local Camera = workspace.CurrentCamera
local RS = game:GetService("ReplicatedStorage")
local TweenService = game:GetService("TweenService")

function Cinematic(CinematicsModule)
    local CinematicsModule = CinematicsModule
    local FrameTime = 0
    local Connection

    Character.Humanoid.AutoRotate = false
    game.Workspace.Camera.CameraType = Enum.CameraType.Scriptable

    Connection = RunService.RenderStepped:Connect(function(DT)
        FrameTime += DT * 60
        local NeededFrame = CinematicsModule[math.ceil(FrameTime)]
        
        if NeededFrame then
            local tween = TweenService:Create(
                Camera,
                TweenInfo.new(0.025, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut),
                {CFrame = Character.HumanoidRootPart.CFrame * NeededFrame.cframe, FieldOfView = NeededFrame.fov}
            )
            tween:Play()
        end
    end)
end
end)
-- First spawn function for initializing and animating the FiveSeasonsDots
-- First spawn function for initializing and animating the FiveSeasonsDots
-- First spawn function for initializing and animating the FiveSeasonsDots 
-- Second spawn function for handling the visibility of other UI elements
spawn(function()
    wait(11)

    local l_TweenService_15 = game:GetService("TweenService");
    local l_FiveSeasonsFX_0 = game:GetService("ReplicatedStorage").Resources.FiveSeasonsFX;
    local l_Thrown_17 = workspace.Thrown;
    local v10610 = nil;
    local v10611 = nil;
    local v10612 = nil;
    local v10613 = nil;
    local v10614 = nil;
    if game.Players.LocalPlayer.Character == game.Players.LocalPlayer.Character then
        v10610 = l_FiveSeasonsFX_0.FXUi:Clone();
        v10611 = v10610.Vignette;
        v10612 = v10610.Punches;
        v10613 = v10610.FiveSeasons;
        v10614 = v10610.FiveSeasonsDots;
        v10614.ImageTransparency = 1;
    end;
    task.delay(1.25, function()
        local v10615 = l_FiveSeasonsFX_0.CharFX.FinalArmFXMirrored:Clone();
        v10615.Parent = game.Players.LocalPlayer.Character["Left Arm"];
        task.wait(0.75);
        for _, v10617 in pairs(v10615:GetChildren()) do
            if v10617:IsA("ParticleEmitter") then
                v10617.Enabled = false;
            end;
        end;
        task.wait(1);
        v10615:Destroy();
    end);
    task.delay(1.35, function()
        if game.Players.LocalPlayer.Character ~= game.Players.LocalPlayer.Character then
            return ;
        else
            local l_Vignette_0 = v10610.Vignette;
            v10610.Parent = game.Players.LocalPlayer.PlayerGui;
            l_TweenService_15:Create(l_Vignette_0, TweenInfo.new(0.55, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
                ImageTransparency = 0
            }):Play();
            return ;
        end;
    end);
    task.delay(1.05, function()
        local v10619 = l_FiveSeasonsFX_0.CharFX.TP:Clone();
        v10619.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart;
        for _, v10621 in pairs(v10619:GetChildren()) do
            if v10621:IsA("ParticleEmitter") then
                v10621:Emit(v10621:GetAttribute("EmitCount"));
            end;
        end;
        task.wait(0.5);
        v10619:Destroy();
    end);
    task.delay(1.983, function()
        if v10610 then
            v10610.Vignette.Visible = false;
        end;

        
        if v10610 then
            v10613.Visible = true;
            v10613.ImageTransparency = 1;
            v10613.ImageColor3 = Color3.fromRGB(0, 0, 0);
            l_TweenService_15:Create(v10613, TweenInfo.new(0.005, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {
                ImageTransparency = 0
            }):Play();
            l_TweenService_15:Create(v10613, TweenInfo.new(0.25, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {
                ImageColor3 = Color3.fromRGB(255, 255, 255)
            }):Play();
            v10614.Visible = true;
            l_TweenService_15:Create(v10614, TweenInfo.new(1.4, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                ImageTransparency = 0
            }):Play();
        end;
        task.wait(1.7);
        local v10624 = nil;
        if v10610 then
            v10613.Visible = false;
            v10614.Visible = false;
            v10624 = l_FiveSeasonsFX_0.GrayScale:Clone();
            v10624.Parent = game.Lighting;
            l_TweenService_15:Create(v10624, TweenInfo.new(0.7, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
                Brightness = 0, 
                Contrast = 0, 
                Saturation = 0
            }):Play();
        end;
        local v10625 = l_FiveSeasonsFX_0.FistsModelMirrored:Clone();
        v10625:SetPrimaryPartCFrame(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame);
        task.delay(4.5, function()
            v10625:Destroy();
        end);
        if game.Players.LocalPlayer.Character ~= game.Players.LocalPlayer.Character then
            task.wait(1.45);
        end;
        v10625.Parent = l_Thrown_17;
       
        local l_Primary_0 = v10625.Primary;
        task.delay(0.065, function()
            v10625.Ring1.Start.Transparency = 0.6;
            l_TweenService_15:Create(v10625.Ring1.Start, TweenInfo.new(0.55, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                Size = v10625.Ring1.End.Size
            }):Play();
            l_TweenService_15:Create(v10625.Ring1.Start, TweenInfo.new(0.55, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                CFrame = v10625.Ring1.End.CFrame
            }):Play();
            l_TweenService_15:Create(v10625.Ring1.Start, TweenInfo.new(0.55, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {
                Transparency = 1
            }):Play();
            task.wait(0.15);
            v10625.Ring2.Start.Transparency = 0.6;
            l_TweenService_15:Create(v10625.Ring2.Start, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                Size = v10625.Ring2.End.Size
            }):Play();
            l_TweenService_15:Create(v10625.Ring2.Start, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                CFrame = v10625.Ring2.End.CFrame
            }):Play();
            l_TweenService_15:Create(v10625.Ring2.Start, TweenInfo.new(0.4, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {
                Transparency = 1
            }):Play();
        end);
        for _, v10628 in pairs(l_Primary_0:GetDescendants()) do
            if v10628:IsA("ParticleEmitter") then
                task.spawn(function()
                    l_TweenService_15:Create(v10628, TweenInfo.new(1.92, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {
                        TimeScale = 0.1
                    }):Play();
                    if game.Players.LocalPlayer.Character ~= game.Players.LocalPlayer.Character then

                    end;
                    task.wait(1.92);
                    v10628.TimeScale = 1;
                    v10628.Enabled = false;
                end);
            end;
        end;
        for _, v10630 in pairs(v10625.Fists:GetDescendants()) do
            if v10630:IsA("MeshPart") or v10630:IsA("BasePart") then
                task.spawn(function()
                    local v10631 = Random.new():NextNumber(1.92, 1.88);
                    l_TweenService_15:Create(v10630, TweenInfo.new(v10631, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Position = v10630.Position + l_Primary_0.CFrame.LookVector * 28
                    }):Play();
                    if game.Players.LocalPlayer.Character ~= game.Players.LocalPlayer.Character then

                    end;
                    task.wait(v10631);
                    l_TweenService_15:Create(v10630, TweenInfo.new(Random.new():NextNumber(0.23, 0.2), Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
                        Position = v10630.Position + l_Primary_0.CFrame.LookVector * 800
                    }):Play();
                end);
            end;
        end;
        for _, v10633 in pairs(v10625.Fists:GetDescendants()) do
            if v10633:IsA("MeshPart") and v10633.Name == "Main" then
                local v10634 = v10633:Clone();
                v10634.Parent = l_Thrown_17;
                v10634.Color = Color3.fromRGB(66, 4, 4);
                local v10635 = Random.new():NextNumber(0.45, 0.55);
                if game.Players.LocalPlayer.Character ~= game.Players.LocalPlayer.Character then

                end;
                l_TweenService_15:Create(v10634, TweenInfo.new(v10635, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut), {
                    Transparency = 1, 
                    Size = v10633.Size * 1.085
                }):Play();
                task.delay(1, function()
                    v10634:Destroy();
                end);
            end;
        end;
        task.wait(1.92);
        if v10624 then
            v10624:Destroy();
        end;
        local v10636 = nil;
        local v10637 = nil;
        local v10638 = nil;
        if v10610 then
            v10636 = l_FiveSeasonsFX_0.FistsCC.FSRed:Clone();
            v10636.Parent = game.Lighting;
            v10637 = l_FiveSeasonsFX_0.FistsCC.FSWhite:Clone();
            v10637.Parent = game.Lighting;
            v10638 = l_FiveSeasonsFX_0.FistsCC.FSBlack:Clone();
            v10638.Parent = game.Lighting;
        end;
        task.wait(0.008);
        if v10610 then
            v10637.Enabled = true;
        end;
        task.wait(0.02);
        if v10610 then
            v10637.Enabled = false;
            v10638.Enabled = true;
        end;
        task.wait(0.02);
        if v10610 then
            v10638.Enabled = false;
            v10636:Destroy();
            v10637:Destroy();
            v10638:Destroy();
        end;
        if v10610 then
            v10610.White.Visible = true;
            v10610.White.ImageTransparency = 0;
            l_TweenService_15:Create(v10610.White, TweenInfo.new(0.18, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
                ImageTransparency = 1
            }):Play();
        end;
        local v10639 = nil;
        local v10640 = 1;
        local v10641 = nil;
        if v10610 then
           
            v10641 = v10610.ImpactFrames:GetChildren();
            table.sort(v10641, function(v10642, v10643)
                local v10644 = tonumber(v10642.Name);
                local v10645 = tonumber(v10643.Name);
                if v10644 and v10645 then
                    return v10644 < v10645;
                else
                    return tostring(v10642.Name) < tostring(v10643.Name);
                end;
            end);
        else
            v10641 = {};
            for v10646 = 1, 40 do
                table.insert(v10641, v10646);
            end;
        end;
        if game.Players.LocalPlayer.Character == game.Players.LocalPlayer.Character then
            
            game.Players.LocalPlayer.CameraMinZoomDistance = 85;
            l_TweenService_15:Create(game.Players.LocalPlayer, TweenInfo.new(2, Enum.EasingStyle.Sine), {
                CameraMinZoomDistance = 0.05
            }):Play();
            local v10649 = tick();
            local l_CurrentCamera_10 = workspace.CurrentCamera;
            local v10651 = nil;
            local l_v10649_0 = v10649 --[[ copy: 9 -> 18 ]];
            local l_l_CurrentCamera_10_0 = game.Workspace.CurrentCamera --[[ copy: 10 -> 19 ]];
            do
                local l_v10651_0 = v10651;
                l_v10651_0 = game:GetService("RunService").Heartbeat:Connect(function()
                    if tick() - l_v10649_0 > 0.15 then
                        return l_v10651_0:Disconnect();
                    else
                        l_l_CurrentCamera_10_0.CFrame = CFrame.new(l_l_CurrentCamera_10_0.CFrame.Position, (l_PrimaryPart_49.CFrame * CFrame.new(0, -40, 0)).Position);
                        return ;
                    end;
                end);
            end;
        else
            task.wait(0.075);
        end;
        game:GetService("Debris"):AddItem(l_BodyVelocity_7, 2);
        local _ = game:GetService("TweenService");
        local v10656, v10657 = v556({
            orig = l_PrimaryPart_49.Position, 
            dir = Vector3.new(0, -1000, 0, 0)
        });
        v10657 = if not v10656 then (l_PrimaryPart_49.CFrame * CFrame.new(5.24520874E-5, -106.229225, -29.8572197, 0.906307757, 0, -0.42261833, 0, 1, 0, 0.42261833, 0, 0.906307757)).Position else v10657 + Vector3.new(0, 0.20000000298023224, 0, 0);
        local v10658 = l_FiveSeasonsFX_0.FinalExplosion:Clone();
        v10658:ScaleTo(1.25);
        v10658.Parent = workspace.Thrown;
        v10658:PivotTo(CFrame.new(v10657));
        v10658.Particles.Enabled.EnabledP.Enabled = true;
        
        task.delay(10, function()
            v10658.Particles.Enabled.EnabledP.Enabled = false;
            task.wait(10);
            v10658:Destroy();
        end);
        for _, v10660 in pairs(v10658.Particles:GetDescendants()) do
            if v10660:IsA("ParticleEmitter") then
                v10660:Emit(v10660:GetAttribute("EmitCount"));
                task.spawn(function()
                    local l_TimeScale_0 = v10660.TimeScale;
                    v10660.TimeScale = 0.1;
                    task.wait(0.11);
                    v10660.TimeScale = l_TimeScale_0;
                end);
            end;
        end;
        local l_TweenService_17 = game:GetService("TweenService");
        if v10610 then
            local v10663 = l_FiveSeasonsFX_0.ImpactFrameBlue:Clone();
            v10663.Parent = game.Lighting;
            v10663.Enabled = true;
            task.wait(0.03);
            v10663.Enabled = false;
        end;
        local function v10671()
            local v10664 = Random.new():NextNumber(0.5, 2.75);
            local v10665 = l_FiveSeasonsFX_0.FinalExplosion.SmokeMesh:Clone();
            local l_v10665_Scale_0 = v10665:GetScale();
            v10665:ScaleTo(Random.new():NextNumber(l_v10665_Scale_0 - 0.2, l_v10665_Scale_0 + 1));
            local v10667 = Vector3.new(math.random(0, 360), math.random(0, 360), math.random(0, 360));
            v10665:SetPrimaryPartCFrame(CFrame.new(v10665.PrimaryPart.Position) * CFrame.Angles(math.rad(v10667.x), math.rad(v10667.y), (math.rad(v10667.z))));
            local l_Start_295 = v10665.Start;
            local l_End_292 = v10665.End;
            local v10670 = l_Start_295:Clone();
            v10670.Transparency = 0;
            v10670.Name = "ClonedMesh";
            v10670.Transparency = 0.92;
            v10670.Parent = workspace.Thrown;
            l_TweenService_17:Create(v10670, TweenInfo.new(v10664, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {
                Size = l_End_292.Size, 
                CFrame = l_End_292.CFrame
            }):Play();
            l_TweenService_17:Create(v10670, TweenInfo.new(v10664, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
                Transparency = 1
            }):Play();
            l_TweenService_17:Create(v10670, TweenInfo.new(v10664 / 4, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {
                Color = Color3.fromRGB(149, 149, 149)
            }):Play();
            task.wait(3);
            v10670:Destroy();
            v10665:Destroy();
        end;
        local _ = function()
            task.spawn(function()
                local v10672 = Random.new():NextNumber(0.3, 1.75);
                local v10673 = l_FiveSeasonsFX_0.FinalExplosion.WindRing:Clone();
                local l_v10673_Scale_0 = v10673:GetScale();
                v10673:ScaleTo(Random.new():NextNumber(l_v10673_Scale_0 - 0.65, l_v10673_Scale_0 + 0.65));
                local v10675 = math.random(0, 360);
                v10673:SetPrimaryPartCFrame(v10673.PrimaryPart.CFrame * CFrame.Angles(0, math.rad(v10675), 0));
                local l_Start_296 = v10673.Start;
                local l_End_293 = v10673.End;
                local v10678 = l_Start_296:Clone();
                v10678.Decal.Transparency = 0.85;
                v10678.Name = "ClonedMesh";
                v10678.Parent = workspace.Thrown;
                l_TweenService_17:Create(v10678, TweenInfo.new(v10672, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
                    Size = l_End_293.Size, 
                    CFrame = l_End_293.CFrame
                }):Play();
                l_TweenService_17:Create(v10678.Mesh, TweenInfo.new(v10672, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {
                    Scale = l_End_293.Mesh.Scale
                }):Play();
                local _ = l_TweenService_17:Create(v10678.Decal, TweenInfo.new(v10672, Enum.EasingStyle.Exponential, Enum.EasingDirection.InOut), {
                    Transparency = 1
                }):Play();
                task.wait(v10672);
                v10678:Destroy();
                v10673:Destroy();
            end);
        end;
        task.spawn(function()
            spawn(v10671);
            spawn(v10671);
            spawn(v10671);
            spawn(v10671);
            spawn(v10671);
            for _ = 1, 5 do
                task.spawn(function()
                    local v10682 = Random.new():NextNumber(0.3, 1.75);
                    local v10683 = l_FiveSeasonsFX_0.FinalExplosion.WindRing:Clone();
                    local l_v10683_Scale_0 = v10683:GetScale();
                    v10683:ScaleTo(Random.new():NextNumber(l_v10683_Scale_0 - 0.65, l_v10683_Scale_0 + 0.65));
                    local v10685 = math.random(0, 360);
                    v10683:SetPrimaryPartCFrame(v10683.PrimaryPart.CFrame * CFrame.Angles(0, math.rad(v10685), 0));
                    local l_Start_297 = v10683.Start;
                    local l_End_294 = v10683.End;
                    local v10688 = l_Start_297:Clone();
                    v10688.Decal.Transparency = 0.85;
                    v10688.Name = "ClonedMesh";
                    v10688.Parent = workspace.Thrown;
                    l_TweenService_17:Create(v10688, TweenInfo.new(v10682, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
                        Size = l_End_294.Size, 
                        CFrame = l_End_294.CFrame
                    }):Play();
                    l_TweenService_17:Create(v10688.Mesh, TweenInfo.new(v10682, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {
                        Scale = l_End_294.Mesh.Scale
                    }):Play();
                    local _ = l_TweenService_17:Create(v10688.Decal, TweenInfo.new(v10682, Enum.EasingStyle.Exponential, Enum.EasingDirection.InOut), {
                        Transparency = 1
                    }):Play();
                    task.wait(v10682);
                    v10688:Destroy();
                    v10683:Destroy();
                end);
                task.wait(0.04);
            end;
        end);
    end);

    end)



        spawn(function()
            wait(8)
            local UserInputService = game:GetService("UserInputService")

            humanoid.AutoRotate = false
            
            local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")

local player = game.Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local root = char:WaitForChild("HumanoidRootPart")
local hum = char:WaitForChild("Humanoid")
local camera = workspace.CurrentCamera

local Connection
local isActive = false

-- Function to make character invisible
local function makeInvisible()
    for _, part in pairs(char:GetDescendants()) do
        if part:IsA("BasePart") then
            part.Transparency = 1
            if part:FindFirstChild("face") then
                part.face.Transparency = 1
            end
        elseif part:IsA("Decal") or part:IsA("Texture") then
            part.Transparency = 1
        end
    end
end
local function makeVisible()
for _, part in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
    if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" and part.Name ~= "Hitbox_LeftArm" and part.Name ~= "Hitbox_RightArm" and part.Name ~= "Hitbox_LeftLeg" and part.Name ~= "Hitbox_RightLeg" then
        part.Transparency = 0
        if part:FindFirstChild("face") then
            part.face.Transparency = 0
        end
    elseif part:IsA("Decal") or part:IsA("Texture") then
        part.Transparency = 0
    end
end
end
-- Function to start the RenderStepped connection
local function startRenderStepped()
    if not isActive then
        isActive = true
        camera.CameraType = Enum.CameraType.Scriptable -- Set to scriptable mode
        
        Connection = RunService.RenderStepped:Connect(function()
_G.HackedWalkSpeed = 100

local Plrs = game:GetService("Players")

local MyPlr = Plrs.LocalPlayer
local MyChar = MyPlr.Character

if MyChar then
local Hum = MyChar.Humanoid
Hum.Changed:connect(function()
Hum.WalkSpeed = _G.HackedWalkSpeed
end)
Hum.WalkSpeed = _G.HackedWalkSpeed
end


MyPlr.CharacterAdded:connect(function(Char)
MyChar = Char
repeat wait() until Char:FindFirstChild("Humanoid")
local Hum = Char.Humanoid
Hum.Changed:connect(function()
Hum.WalkSpeed = _G.HackedWalkSpeed
end)
Hum.WalkSpeed = _G.HackedWalkSpeed
end)
            hum.JumpPower = 0
            hum.JumpHeight = 0

            TweenService:Create(
                camera,
                TweenInfo.new(1),
                {CFrame = root.CFrame * CFrame.new(-2.21576214, 133.82489, -5.41413069, -0.786192596, -0.192678198, -0.5871768, 5.42402267e-06, 0.950150132, -0.311792791, 0.617981791, -0.245132327, -0.746999919) * CFrame.Angles(math.rad(-105), math.rad(0), math.rad(0))}
            ):Play()
        end)
    end
end

-- Function to stop the RenderStepped connection and reset camera
local function stopRenderStepped()
    if isActive then
        isActive = false
        if Connection then
            Connection:Disconnect()
            Connection = nil
        end
        makeVisible()
        -- Reset the camera to follow the player
        camera.CameraType = Enum.CameraType.Custom
        camera.CFrame = char:WaitForChild("HumanoidRootPart").CFrame -- Reset to the character's current position

        -- Reset character properties
_G.HackedWalkSpeed = 20

local Plrs = game:GetService("Players")

local MyPlr = Plrs.LocalPlayer
local MyChar = MyPlr.Character

if MyChar then
local Hum = MyChar.Humanoid
Hum.Changed:connect(function()
Hum.WalkSpeed = _G.HackedWalkSpeed
end)
Hum.WalkSpeed = _G.HackedWalkSpeed
end


MyPlr.CharacterAdded:connect(function(Char)
MyChar = Char
repeat wait() until Char:FindFirstChild("Humanoid")
local Hum = Char.Humanoid
Hum.Changed:connect(function()
Hum.WalkSpeed = _G.HackedWalkSpeed
end)
Hum.WalkSpeed = _G.HackedWalkSpeed
end)
        hum.JumpPower = 50
        hum.JumpHeight = 10
    end
end
makeInvisible()
startRenderStepped()      
        wait(3)
        stopRenderStepped()
        makeVisible()
        camera.CameraType = Enum.CameraType.Scriptable
        end)
        spawn(function()
            wait(16.45)
            local fxUi = localPlayer:WaitForChild("PlayerGui"):WaitForChild("FXUi")
            local impactFrames = fxUi:WaitForChild("ImpactFrames")
            spawn(function()
            wait(0.1)
            local impactsound = Instance.new("Sound", game:GetService("SoundService"))
            impactsound.SoundId = "rbxassetid://18462312002"
            impactsound.Looped = false
            impactsound.Volume = 2
            impactsound:Play()
            end)
            humanoid.WalkSpeed = 16
            for i = 1, 40 do
                local imageLabel = impactFrames:FindFirstChild(tostring(i))
                if imageLabel then
                    imageLabel.Size = UDim2.new(1, 0, 1, 0)
                    imageLabel.Visible = true
                    wait(0.02)
                end
            end
        
            local lastImageLabel = impactFrames:FindFirstChild("40")
            if lastImageLabel then
                lastImageLabel.Visible = true
                fxUi:Destroy()
                local screenGuiName = "FXUi"
                local playerGui = game.Players.LocalPlayer.PlayerGui
                
                local destroyedCount = 0
                
                for _, gui in pairs(playerGui:GetChildren()) do
                    if gui:IsA("ScreenGui") and gui.Name == screenGuiName then
                        gui:Destroy()
                        end
                    end
                    wait(0.4)
                local sound = Instance.new("Sound")
                sound.Parent = game:GetService("SoundService")
                sound.SoundId = "rbxassetid://18462330981"
                sound.Volume = 100
                sound.Playing = true
                local Explosion = FiveEffects.FinalExplosion:Clone()
                Explosion.Parent = workspace.Thrown
                Explosion:SetPrimaryPartCFrame(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, -167, 0))
                Emit.Emit(Explosion)
                wait(3)
                game.Workspace.Camera.CameraType = Enum.CameraType.Custom
                game.Players.LocalPlayer.Character.NoRotate:Destroy()
                wait(7)
                Explosion:Destroy()
                wait(1)
            end
        end)
        
        
        
        
        spawn(function()
            wait(14.6)
            local soundhand = Instance.new("Sound", game:GetService("SoundService"))
            soundhand.SoundId = "rbxassetid://18462018744"
            soundhand.Playing = true
            soundhand.Volume = 2
        end)
        
        
        
        spawn(function()
        wait(5)
        -- Karakteri al
        local character = game.Players.LocalPlayer.Character["Left Arm"].ArmFX  -- Bu script karakterin iÃ§ine yerleÅŸtirilmeli
        
        -- PartikÃ¼l efektlerini devre dÄ±ÅŸÄ± bÄ±rakmak iÃ§in bir fonksiyon tanÄ±mla
        local function disableParticles(object)
            -- EÄŸer object bir ParticleEmitter iase, onu devre dÄ±ÅŸÄ± bÄ±rak
            if object:IsA("ParticleEmitter") then
                object.Enabled = false
            end
        end
        
        -- Karakterin iÃ§indeki tÃ¼m Ã§ocuklarÄ± tarayarak partikÃ¼l efektlerini devre dÄ±ÅŸÄ± bÄ±rak
        local function disableAllParticlesInCharacter(character)
            for _, child in ipairs(character:GetDescendants()) do
                disableParticles(child)
            end
        end
        
        -- Script Ã§alÄ±ÅŸtÄ±ÄŸÄ±nda tÃ¼m partikÃ¼l efektlerini devre dÄ±ÅŸÄ± bÄ±rak
        disableAllParticlesInCharacter(character)
        wait(0.5)
        local ArmSpark = game.ReplicatedStorage.Resources.FiveSeasonsFX.CharFX.WindupSpark:Clone()
        ArmSpark.Parent  = game.Players.LocalPlayer.Character["Left Arm"]

        spawn(function()
            Emit.Enabled(ArmSpark)
            wait(1.5)
            Emit.Disabled(ArmSpark)
        end)
        local ArmGlow = FiveEffects.CharFX.WindupGlow:Clone()
			ArmGlow.Parent  = game.Players.LocalPlayer.Character["Left Arm"]

			spawn(function()

				Emit.Enabled(ArmGlow)
				wait(1.5)
				Emit.Disabled(ArmGlow)
			end)		
        wait(2)
        ArmGlow:Destroy()
        ArmSpark:Destroy()
            
        end)
        spawn(function()
            wait(2.55)
            local Gui = game.ReplicatedStorage.Resources.FiveSeasonsFX.FXUi:Clone()
            Gui.Parent = game.Players.LocalPlayer.PlayerGui
            wait()
            game.TweenService:Create(Gui.Vignette, TweenInfo.new(2, Enum.EasingStyle.Cubic, Enum.EasingDirection.In, 0, false, 0), {
                ImageTransparency = 0
            }):Play();
            wait(3.66)
            game.TweenService:Create(Gui.Vignette, TweenInfo.new(0.2, Enum.EasingStyle.Cubic, Enum.EasingDirection.In, 0, false, 0), {
                ImageTransparency = 1
            }):Play();
            wait(0.03)
            local CC = game.ReplicatedStorage.Resources.FiveSeasonsFX.FistsCC
            for _,Particles in pairs(CC:GetDescendants()) do
                if Particles:IsA("ColorCorrectionEffect") then
                    spawn(function()
                        local Clone = Particles:Clone()
                        Clone.Parent = game.Lighting
                        Clone.Enabled = true
                        wait()
                        game.TweenService:Create(Clone, TweenInfo.new(0.07, Enum.EasingStyle.Cubic, Enum.EasingDirection.In, 0, false, 0), {
                            Brightness = 0,
                            Contrast = 0,
                            Saturation = 0
                        }):Play();
                        wait(0.2)
                        Clone:Destroy()
                    end)
                end
            end
            wait(5)
            Gui:Destroy()
        end)
        spawn(function()
            wait(3.5)
            spawn(function()
                wait(2.7)
                local Camera = game.Workspace.CurrentCamera
                local RunService = game:GetService("RunService")
                
                local shakeDuration = 0.5 -- seconds
                local shakeMagnitude = 0.5
                
                local function ShakeCamera()
                    local startTime = tick()
                    local endTime = startTime + shakeDuration
                
                    RunService:BindToRenderStep("CameraShake", Enum.RenderPriority.Camera.Value, function()
                        if tick() >= endTime then
                            RunService:UnbindFromRenderStep("CameraShake")
                            Camera.CFrame = Camera.CFrame
                            return
                        end
                        
                        local offsetX = (math.random() - 0.5) * shakeMagnitude
                        local offsetY = (math.random() - 0.5) * shakeMagnitude
                        local offsetZ = (math.random() - 0.5) * shakeMagnitude
                
                        Camera.CFrame = Camera.CFrame * CFrame.new(offsetX, offsetY, offsetZ)
                    end)
                end
                
                ShakeCamera()
                
            end)
        end)

        spawn(function()
        -- Fetch the module script and load it
        local moduleScript = game.ReplicatedStorage.Cutscenes["Five Season Startup"]
        local cutsceneData = {
            [1] = {
                ["fov"] = 70,
                ["cframe"] = CFrame.new(-4.70363712, 5.42986774, -11.7448311, -0.942453682, 0.0661853105, -0.327719718, -3.9793551e-05, 0.980187833, 0.198070288, 0.334336191, 0.186685145, -0.923779011)
            },
        
            [2] = {
                ["fov"] = 70,
                ["cframe"] = CFrame.new(-4.72102928, 5.27999878, -11.6807947, -0.941673636, 0.0657819659, -0.330036521, -7.39134848e-05, 0.980668783, 0.19567512, 0.33652842, 0.18428643, -0.923465133)
            },
        
            [3] = {
                ["fov"] = 70,
                ["cframe"] = CFrame.new(-4.73842144, 5.13013077, -11.6167583, -0.940887928, 0.0653725937, -0.332350582, -0.000102348626, 0.981143951, 0.193278521, 0.338718861, 0.181887388, -0.923139811)
            },
        
            [4] = {
                ["fov"] = 70,
                ["cframe"] = CFrame.new(-4.7558136, 4.98026228, -11.552722, -0.940096796, 0.0649572164, -0.334661782, -0.000125095248, 0.981613278, 0.190880671, 0.340907514, 0.179488167, -0.922803342)
            },
        
            [5] = {
                ["fov"] = 70,
                ["cframe"] = CFrame.new(-4.77320576, 4.83039427, -11.4886856, -0.939301252, 0.0645358711, -0.336970329, -0.000142149627, 0.982076705, 0.188481614, 0.343094528, 0.177088842, -0.922456682)
            },
        
            [6] = {
                ["fov"] = 70,
                ["cframe"] = CFrame.new(-4.79059792, 4.68052578, -11.4246483, -0.938499987, 0.0641085356, -0.339275956, -0.000153526664, 0.982534349, 0.18608135, 0.345279694, 0.174689412, -0.922098637)
            },
        
            [7] = {
                ["fov"] = 70,
                ["cframe"] = CFrame.new(-4.80799007, 4.53065729, -11.3606119, -0.937693954, 0.0636752248, -0.341578722, -0.000159207731, 0.982986093, 0.183679923, 0.347463012, 0.172289893, -0.921730042)
            },
        
            [8] = {
                ["fov"] = 70,
                ["cframe"] = CFrame.new(-4.82538128, 4.3807888, -11.2965755, -0.936882675, 0.063235946, -0.343878627, -0.000159211457, 0.983431995, 0.181277394, 0.349644482, 0.169890374, -0.92135036)
            },
        
            [9] = {
                ["fov"] = 70,
                ["cframe"] = CFrame.new(-4.84277344, 4.23092079, -11.2325392, -0.936066389, 0.0627907068, -0.346175551, -0.000153522938, 0.983871996, 0.178873807, 0.351824045, 0.16749087, -0.92095989)
            },
        
            [10] = {
                ["fov"] = 70,
                ["cframe"] = CFrame.new(-4.8601656, 4.0810523, -11.1685028, -0.935244918, 0.0623395108, -0.348469436, -0.000142145902, 0.984306157, 0.176469147, 0.354001641, 0.165091395, -0.920558512)
            },
        
            [11] = {
                ["fov"] = 70,
                ["cframe"] = CFrame.new(-4.87755775, 3.93118382, -11.1044664, -0.93441838, 0.0618823692, -0.350760311, -0.00012508966, 0.984734416, 0.174063548, 0.356177241, 0.162692055, -0.920146167)
            },
        
            [12] = {
                ["fov"] = 70,
                ["cframe"] = CFrame.new(-4.89494991, 3.7813158, -11.0404301, -0.933587253, 0.0614193119, -0.353048235, -0.000102341175, 0.985156775, 0.171657011, 0.358350903, 0.160292879, -0.91972357)
            },
        
            [13] = {
                ["fov"] = 70,
                ["cframe"] = CFrame.new(-4.91234207, 3.63144732, -10.9763927, -0.932750583, 0.0609503016, -0.355332941, -7.39078969e-05, 0.985573232, 0.16924952, 0.360522419, 0.157893851, -0.919289529)
            },
        
            [14] = {
                ["fov"] = 70,
                ["cframe"] = CFrame.new(-4.92973423, 3.48157883, -10.9123564, -0.931909323, 0.0604753904, -0.357614517, -3.97898257e-05, 0.985983729, 0.166841224, 0.362691879, 0.155495092, -0.918845057)
            },
        
            [15] = {
                ["fov"] = 70,
                ["cframe"] = CFrame.new(-4.94712639, 3.33171082, -10.84832, -0.931062698, 0.0599945709, -0.359892935, 3.72528985e-09, 0.986388564, 0.164432094, 0.364859223, 0.153096586, -0.918389559)
            },
        
            [16] = {
                ["fov"] = 70.11394185240844,
                ["cframe"] = CFrame.new(-5.01551628, 3.35255861, -10.8628683, -0.924848199, 0.0650433451, -0.374733597, 5.45866787e-05, 0.985291064, 0.170884475, 0.380336553, 0.158021733, -0.911248267)
            },
        
            [17] = {
                ["fov"] = 70.45230534410568,
                ["cframe"] = CFrame.new(-5.08390713, 3.37340641, -10.8774157, -0.918376386, 0.0701707453, -0.389436781, 0, 0.984151661, 0.177329555, 0.395708114, 0.162855282, -0.903821588)
            },
        
            [18] = {
                ["fov"] = 71.00480947161671,
                ["cframe"] = CFrame.new(-4.99613285, 3.32573748, -10.8895464, -0.939301312, 0.0538971201, -0.338834167, 0.000630296767, 0.987853467, 0.155387014, 0.343093395, 0.145741612, -0.927926064)
            },
        
            [19] = {
                ["fov"] = 71.75466667660767,
                ["cframe"] = CFrame.new(-4.90835857, 3.27806854, -10.9016762, -0.957214713, 0.0385937318, -0.286793679, 0, 0.991066754, 0.133367524, 0.289378792, 0.127661362, -0.948663592)
            },
        
            [20] = {
                ["fov"] = 72.67909292735095,
                ["cframe"] = CFrame.new(-5.17520809, 3.28817987, -11.089489, -0.932212889, 0.0443435013, -0.359184176, -0.000381886959, 0.99234426, 0.123502158, 0.36191085, 0.115267433, -0.92505914)
            },
        
            [21] = {
                ["fov"] = 73.75,
                ["cframe"] = CFrame.new(-5.44205761, 3.29829121, -11.2773018, -0.901723742, 0.0491213389, -0.429512978, -3.72528985e-09, 0.993523836, 0.113624573, 0.432312667, 0.102457978, -0.895884037)
            },
        
            [22] = {
                ["fov"] = 74.93484892505748,
                ["cframe"] = CFrame.new(-5.494277, 3.21267128, -11.6045856, -0.918616831, 0.0257947296, -0.394307077, 0.00104072411, 0.998021543, 0.0628638789, 0.395148516, 0.0573374406, -0.916826248)
            },
        
            [23] = {
                ["fov"] = 76.19763866749803,
                ["cframe"] = CFrame.new(-5.54649639, 3.12705183, -11.9318705, -0.93397969, 0.00426647533, -0.357300729, 0, 0.999928772, 0.0119400006, 0.35732621, 0.011151718, -0.933913112)
            },
        
            [24] = {
                ["fov"] = 77.5,
                ["cframe"] = CFrame.new(-5.36701965, 3.10486174, -11.8054037, -0.960298479, 0.000799616857, -0.278973639, 5.82076609e-11, 0.999995947, 0.00286626886, 0.278974801, 0.00275247358, -0.960294485)
            },
        
            [25] = {
                ["fov"] = 78.80236133250197,
                ["cframe"] = CFrame.new(-5.53647804, 2.83977795, -11.8156767, -0.936631501, -0.0429654829, -0.347672224, -0.00430270657, 0.993786395, -0.111221053, 0.350290596, -0.102677174, -0.930996537)
            },
        
            [26] = {
                ["fov"] = 80.06515107494252,
                ["cframe"] = CFrame.new(-5.70593548, 2.57469368, -11.8259506, -0.907693028, -0.0939388275, -0.408985287, 0, 0.974621713, -0.223858431, 0.419634968, -0.203194737, -0.884657204)
            },
        
            [27] = {
                ["fov"] = 81.25,
                ["cframe"] = CFrame.new(-5.4554348, 2.32814646, -11.8520212, -0.951385796, -0.105020761, -0.289544165, 7.4505806e-09, 0.940072775, -0.34097442, 0.308001906, -0.32439822, -0.894371748)
            },
        
            [28] = {
                ["fov"] = 82.32090707264905,
                ["cframe"] = CFrame.new(-5.54324913, 1.95004368, -11.8329992, -0.940385997, -0.130752906, -0.313971609, -0.000756382942, 0.923950195, -0.382511944, 0.340108663, -0.359471351, -0.868968785)
            },
        
            [29] = {
                ["fov"] = 83.24533332339233,
                ["cframe"] = CFrame.new(-5.63106346, 1.57194042, -11.8139772, -0.928303361, -0.157389432, -0.336870223, 0, 0.905994177, -0.423290312, 0.371823847, -0.392941833, -0.841037393)
            },
        
            [30] = {
                ["fov"] = 83.99519052838329,
                ["cframe"] = CFrame.new(-5.60979652, 1.13214016, -11.675725, -0.92919004, -0.176239416, -0.324877769, -0.000787526369, 0.879934788, -0.475093842, 0.369601518, -0.44119662, -0.817765415)
            },
        
            [31] = {
                ["fov"] = 84.54769465589432,
                ["cframe"] = CFrame.new(-5.58853054, 0.692340136, -11.5374727, -0.9300524, -0.194362164, -0.311810642, -0.00171243399, 0.850916862, -0.525297582, 0.367422909, -0.488020331, -0.791730046)
            },
        
            [32] = {
                ["fov"] = 84.88605814759156,
                ["cframe"] = CFrame.new(-5.62067032, 0.306453705, -11.5237427, -0.928885937, -0.205109164, -0.308384955, -0.00173065066, 0.835043669, -0.550181031, 0.370362043, -0.51052165, -0.776015282)
            },
        
            [33] = {
                ["fov"] = 85,
                ["cframe"] = CFrame.new(-5.65280914, -0.0794329643, -11.5100126, -0.927710593, -0.21574834, -0.304640561, -0.00165556371, 0.818443239, -0.574585021, 0.373296767, -0.532544196, -0.759635687)
            },
        
            [34] = {
                ["fov"] = 84.82962913144534,
                ["cframe"] = CFrame.new(-5.6734314, -0.328520536, -11.5008373, -0.926993251, -0.222159714, -0.302206516, -0.00161704421, 0.808075488, -0.589076757, 0.375074804, -0.54558146, -0.749439776)
            },
        
            [35] = {
                ["fov"] = 84.3301270189222,
                ["cframe"] = CFrame.new(-5.69405365, -0.577608347, -11.491662, -0.926272869, -0.228526443, -0.299657345, -0.00154432654, 0.797450304, -0.603382707, 0.376850724, -0.558434129, -0.739009559)
            },
        
            [36] = {
                ["fov"] = 83.53553390593274,
                ["cframe"] = CFrame.new(-5.7146759, -0.826695919, -11.4824867, -0.925549805, -0.2348454, -0.29699415, -0.00143754482, 0.786573052, -0.617495596, 0.378623605, -0.571095884, -0.728350222)
            },
        
            [37] = {
                ["fov"] = 82.5,
                ["cframe"] = CFrame.new(-5.72925568, -1.00319815, -11.4758997, -0.92504853, -0.23918888, -0.295084625, -0.00135894865, 0.778923392, -0.627117693, 0.379847854, -0.579712927, -0.720867097)
            },
        
            [38] = {
                ["fov"] = 81.2940952255126,
                ["cframe"] = CFrame.new(-5.7438345, -1.17970026, -11.4693136, -0.924545288, -0.243508101, -0.293121219, -0.00126411766, 0.771156251, -0.636644781, 0.381070435, -0.588236272, -0.713276684)
            },
        
            [39] = {
                ["fov"] = 80,
                ["cframe"] = CFrame.new(-5.7630682, -1.41267788, -11.4605923, -0.923883677, -0.249138251, -0.290463507, -0.00112001598, 0.760794878, -0.648991406, 0.382671773, -0.599267304, -0.703165054)
            },
        
            [40] = {
                ["fov"] = 78.7059047744874,
                ["cframe"] = CFrame.new(-5.78230286, -1.64565539, -11.4518719, -0.923220336, -0.254724562, -0.287714362, -0.000947996974, 0.750235319, -0.661170185, 0.384269774, -0.610132992, -0.692874014)
            },
        
            [41] = {
                ["fov"] = 77.5,
                ["cframe"] = CFrame.new(-5.80153656, -1.87863302, -11.4431515, -0.922555566, -0.260264844, -0.284874827, -0.000748127699, 0.739481807, -0.673176169, 0.385863811, -0.620829225, -0.682407856)
            },
        
            [42] = {
                ["fov"] = 76.46446609406726,
                ["cframe"] = CFrame.new(-5.81348038, -2.02335954, -11.4377232, -0.922143459, -0.263670683, -0.283072084, -0.00061237812, 0.732732177, -0.680516899, 0.38684836, -0.627360642, -0.675845742)
            },
        
            [43] = {
                ["fov"] = 75.6698729810778,
                ["cframe"] = CFrame.new(-5.82542419, -2.16808605, -11.4322958, -0.921730161, -0.267058074, -0.281235039, -0.000466004014, 0.725909948, -0.687789619, 0.387831092, -0.633825481, -0.669217467)
            },
        
            [44] = {
                ["fov"] = 75.17037086855466,
                ["cframe"] = CFrame.new(-5.84329796, -2.38501453, -11.4240885, -0.921121418, -0.272016376, -0.278465807, -0.000244498253, 0.715746224, -0.698360562, 0.389276326, -0.643206477, -0.65935576)
            },
        
            [45] = {
                ["fov"] = 75,
                ["cframe"] = CFrame.new(-5.86117363, -2.60194325, -11.4158812, -0.920510709, -0.276932895, -0.275623292, 0, 0.705428898, -0.708780706, 0.390717328, -0.65244025, -0.649354875)
            },
        
            [46] = {
                ["fov"] = 75,
                ["cframe"] = CFrame.new(-10.5371914, 114.25798, 5.37669849, 0.920499444, 0.355744362, -0.161637813, 0, 0.413666874, 0.910428405, 0.390743911, -0.838048816, 0.380780131)
            },
        
            [47] = {
                ["fov"] = 75.0111111111111,
                ["cframe"] = CFrame.new(-10.3233242, 114.29129, 5.42046928, 0.924416482, 0.34764719, -0.156829983, 0.000564366579, 0.40996471, 0.912101328, 0.381384164, -0.843249977, 0.378781945)
            },
        
            [48] = {
                ["fov"] = 75.04444444444445,
                ["cframe"] = CFrame.new(-10.109457, 114.324593, 5.46423912, 0.928238988, 0.339493781, -0.152040929, 0.00108748674, 0.406250745, 0.91376102, 0.371982902, -0.848353863, 0.376728565)
            },
        
            [49] = {
                ["fov"] = 75.1,
                ["cframe"] = CFrame.new(-9.89558983, 114.357903, 5.50800991, 0.931966364, 0.331285238, -0.147271335, 0.00156928599, 0.402525425, 0.915407538, 0.362541437, -0.853360176, 0.374620259)
            },
        
            [50] = {
                ["fov"] = 75.17777777777778,
                ["cframe"] = CFrame.new(-9.68172264, 114.391212, 5.5517807, 0.935598254, 0.323022455, -0.14252162, 0.00200971961, 0.398788869, 0.917040646, 0.353060722, -0.858268082, 0.372456968)
            },
        
            [51] = {
                ["fov"] = 75.27777777777777,
                ["cframe"] = CFrame.new(-9.46785545, 114.424522, 5.59555054, 0.93913424, 0.314706475, -0.137792438, 0.0024087429, 0.395041943, 0.918659925, 0.34354201, -0.863076925, 0.370239347)
            },
        
            [52] = {
                ["fov"] = 75.4,
                ["cframe"] = CFrame.new(-9.25398827, 114.457825, 5.63932133, 0.942573845, 0.30633834, -0.133084327, 0.00276631117, 0.391284585, 0.920265675, 0.333986491, -0.867786527, 0.367967159)
            },
        
            [53] = {
                ["fov"] = 75.54444444444445,
                ["cframe"] = CFrame.new(-9.04012108, 114.491135, 5.68309116, 0.945916653, 0.297918886, -0.128397942, 0.003082335, 0.387517869, 0.921857059, 0.32439512, -0.872395694, 0.365641296)
            },
        
            [54] = {
                ["fov"] = 75.71111111111111,
                ["cframe"] = CFrame.new(-8.82625389, 114.524445, 5.72686195, 0.949162304, 0.289449275, -0.123733684, 0.00335679948, 0.383741766, 0.923434317, 0.314769149, -0.876904428, 0.36326161)
            },
        
            [55] = {
                ["fov"] = 75.9,
                ["cframe"] = CFrame.new(-8.6123867, 114.557755, 5.77063274, 0.952310443, 0.280930459, -0.119092256, 0.00358965993, 0.37995702, 0.924997211, 0.305109829, -0.881312013, 0.360828549)
            },
        
            [56] = {
                ["fov"] = 76.11111111111111,
                ["cframe"] = CFrame.new(-8.39851952, 114.591057, 5.81440258, 0.955360591, 0.272363514, -0.114474103, 0.00378093123, 0.376163721, 0.92654562, 0.295418203, -0.885617971, 0.358342201)
            },
        
            [57] = {
                ["fov"] = 76.34444444444445,
                ["cframe"] = CFrame.new(-8.18465233, 114.624367, 5.85817337, 0.958312392, 0.263749361, -0.109879822, 0.00393055379, 0.372362792, 0.92807889, 0.285695374, -0.88982141, 0.355803221)
            },
        
            [58] = {
                ["fov"] = 76.6,
                ["cframe"] = CFrame.new(-8.09106827, 114.599846, 5.85798264, 0.958373189, 0.263672948, -0.109532453, 0.00412604213, 0.37079668, 0.928704858, 0.285488635, -0.890497804, 0.354273677)
            },
        
            [59] = {
                ["fov"] = 76.87777777777778,
                ["cframe"] = CFrame.new(-7.9974823, 114.575333, 5.8577919, 0.958433986, 0.263595968, -0.109185264, 0.00432118773, 0.369229347, 0.929328322, 0.285281599, -0.891171694, 0.35274291)
            },
        
            [60] = {
                ["fov"] = 77.17777777777778,
                ["cframe"] = CFrame.new(-7.90389824, 114.550812, 5.85760021, 0.958494842, 0.263518274, -0.108838141, 0.00451594591, 0.367661059, 0.929948866, 0.285074085, -0.891842663, 0.35121119)
            },
        
            [61] = {
                ["fov"] = 77.5,
                ["cframe"] = CFrame.new(-7.81031418, 114.526299, 5.85740948, 0.958555698, 0.263440132, -0.108491205, 0.00471033156, 0.36609152, 0.930566907, 0.284866363, -0.892511249, 0.349678218)
            },
        
            [62] = {
                ["fov"] = 77.82222222222222,
                ["cframe"] = CFrame.new(-7.71673012, 114.501778, 5.85721874, 0.958616555, 0.263361275, -0.108144403, 0.00490438938, 0.364520997, 0.931182384, 0.284658253, -0.893177152, 0.348144233)
            },
        
            [63] = {
                ["fov"] = 78.12222222222222,
                ["cframe"] = CFrame.new(-7.62314415, 114.477264, 5.85702801, 0.958677411, 0.263281822, -0.107797749, 0.00509805977, 0.362949342, 0.931795001, 0.284449816, -0.893840313, 0.346609116)
            },
        
            [64] = {
                ["fov"] = 78.4,
                ["cframe"] = CFrame.new(-7.52956009, 114.452744, 5.85683727, 0.958738267, 0.263201803, -0.107451178, 0.00529137254, 0.361376643, 0.932404876, 0.284240991, -0.894500732, 0.345072925)
            },
        
            [65] = {
                ["fov"] = 78.65555555555555,
                ["cframe"] = CFrame.new(-7.43597603, 114.428223, 5.85664558, 0.958799124, 0.263121247, -0.107104816, 0.00548432767, 0.359802634, 0.933012426, 0.284031957, -0.895158947, 0.343535423)
            },
        
            [66] = {
                ["fov"] = 78.88888888888889,
                ["cframe"] = CFrame.new(-7.34239006, 114.403709, 5.85645485, 0.95886004, 0.263039947, -0.106758565, 0.00567689538, 0.358227938, 0.933616936, 0.283822447, -0.895814002, 0.341997206)
            },
        
            [67] = {
                ["fov"] = 79.1,
                ["cframe"] = CFrame.new(-7.248806, 114.379189, 5.85626411, 0.958920956, 0.262958109, -0.106412448, 0.00586907566, 0.356651902, 0.934218943, 0.283612669, -0.896466672, 0.340457678)
            },
        
            [68] = {
                ["fov"] = 79.28888888888889,
                ["cframe"] = CFrame.new(-7.15522194, 114.354675, 5.85607338, 0.958981872, 0.262875676, -0.106066495, 0.00606094301, 0.355074853, 0.934818268, 0.283402532, -0.897116661, 0.338917077)
            },
        
            [69] = {
                ["fov"] = 79.45555555555555,
                ["cframe"] = CFrame.new(-7.06163788, 114.330154, 5.85588169, 0.959042847, 0.262792677, -0.105720684, 0.00625237823, 0.353496879, 0.935414791, 0.283192098, -0.897763848, 0.337375581)
            },
        
            [70] = {
                ["fov"] = 79.6,
                ["cframe"] = CFrame.new(-6.96805191, 114.305641, 5.85569096, 0.959103763, 0.262709051, -0.105375014, 0.00644350052, 0.351917595, 0.936008871, 0.282981306, -0.898408592, 0.335832715)
            },
        
            [71] = {
                ["fov"] = 79.72222222222223,
                ["cframe"] = CFrame.new(-6.87446785, 114.28112, 5.85550022, 0.959164739, 0.2626248, -0.105029523, 0.00663419068, 0.350337684, 0.936600029, 0.282770157, -0.899050534, 0.334289253)
            },
        
            [72] = {
                ["fov"] = 79.82222222222222,
                ["cframe"] = CFrame.new(-6.85040474, 114.145241, 5.7913332, 0.955119491, 0.274927557, -0.110279508, 0.00730885565, 0.350302577, 0.936608136, 0.296130598, -0.895378768, 0.332571417)
            },
        
            [73] = {
                ["fov"] = 79.9,
                ["cframe"] = CFrame.new(-6.82634354, 114.009361, 5.72716713, 0.95088774, 0.287177831, -0.11550495, 0.00798395276, 0.350276232, 0.936612308, 0.309432954, -0.891535342, 0.330780566)
            },
        
            [74] = {
                ["fov"] = 79.95555555555555,
                ["cframe"] = CFrame.new(-6.80228233, 113.873489, 5.66300011, 0.946470201, 0.299373329, -0.120705001, 0.00865928829, 0.350258619, 0.936613083, 0.32267493, -0.887521625, 0.328916997)
            },
        
            [75] = {
                ["fov"] = 79.9888888888889,
                ["cframe"] = CFrame.new(-6.77821922, 113.73761, 5.59883404, 0.941867888, 0.311511576, -0.125878468, 0.00933486223, 0.350249618, 0.936609864, 0.335853696, -0.883337855, 0.326980948)
            },
        
            [76] = {
                ["fov"] = 80,
                ["cframe"] = CFrame.new(-6.75415611, 113.60173, 5.53466702, 0.937081575, 0.323590308, -0.13102442, 0.0100104213, 0.350249231, 0.936603129, 0.348966867, -0.878985226, 0.324972838)
            },
        
            [77] = {
                ["fov"] = 79.95555555555555,
                ["cframe"] = CFrame.new(-6.73009491, 113.465851, 5.47050095, 0.932112277, 0.335607052, -0.136141837, 0.0106858909, 0.350257605, 0.936592579, 0.362011731, -0.874464273, 0.322893143)
            },
        
            [78] = {
                ["fov"] = 79.82222222222222,
                ["cframe"] = CFrame.new(-6.70603371, 113.329979, 5.40633392, 0.926960945, 0.347559452, -0.141229689, 0.0113611221, 0.350274742, 0.936578155, 0.374985754, -0.869775891, 0.320742339)
            },
        
            [79] = {
                ["fov"] = 79.6,
                ["cframe"] = CFrame.new(-6.6819706, 113.194099, 5.34216785, 0.921628535, 0.359445244, -0.146287024, 0.0120359957, 0.350300521, 0.936560035, 0.387886465, -0.864921212, 0.318520665)
            },
        
            [80] = {
                ["fov"] = 79.28888888888889,
                ["cframe"] = CFrame.new(-6.65790749, 113.05822, 5.27800083, 0.916116178, 0.371262074, -0.151312768, 0.0127104372, 0.350334704, 0.936538219, 0.400711298, -0.859901071, 0.31622839)
            },
        
            [81] = {
                ["fov"] = 78.88888888888889,
                ["cframe"] = CFrame.new(-6.63384628, 112.92234, 5.21383381, 0.910424888, 0.383007735, -0.156306073, 0.0133841634, 0.350377738, 0.936512828, 0.413457811, -0.854716659, 0.313866377)
            },
        
            [82] = {
                ["fov"] = 78.4,
                ["cframe"] = CFrame.new(-6.60978508, 112.786461, 5.14966774, 0.904555798, 0.394679844, -0.161265984, 0.0140571445, 0.350429505, 0.936483622, 0.426123559, -0.849368572, 0.311434984)
            },
        
            [83] = {
                ["fov"] = 77.82222222222222,
                ["cframe"] = CFrame.new(-6.58572197, 112.650589, 5.08550072, 0.898509979, 0.406276107, -0.166191354, 0.0147292763, 0.350489706, 0.936450779, 0.438705921, -0.843858302, 0.308934361)
            },
        
            [84] = {
                ["fov"] = 77.15555555555555,
                ["cframe"] = CFrame.new(-6.56165886, 112.514709, 5.02133465, 0.892288744, 0.417794168, -0.171081334, 0.0154003501, 0.350558817, 0.936414063, 0.451202422, -0.838186443, 0.30636549)
            },
        
            [85] = {
                ["fov"] = 76.4,
                ["cframe"] = CFrame.new(-6.53759766, 112.37883, 4.95716763, 0.885893226, 0.429232001, -0.175934881, 0.0160702616, 0.350636274, 0.93637377, 0.463610739, -0.832354486, 0.303728431)
            },
        
            [86] = {
                ["fov"] = 75.55555555555556,
                ["cframe"] = CFrame.new(-6.51353645, 112.24295, 4.89300156, 0.879324675, 0.440587193, -0.180751234, 0.0167389214, 0.350722462, 0.936329782, 0.475928456, -0.826363504, 0.30102396)
            },
        
            [87] = {
                ["fov"] = 74.62222222222222,
                ["cframe"] = CFrame.new(-6.48947334, 112.107079, 4.82883453, 0.872584403, 0.451857716, -0.185529321, 0.0174061656, 0.350817084, 0.936282337, 0.488153189, -0.820214689, 0.298252404)
            },
        
            [88] = {
                ["fov"] = 73.6,
                ["cframe"] = CFrame.new(-6.46541023, 111.971199, 4.76466846, 0.865673721, 0.463041067, -0.190268144, 0.0180718452, 0.350920588, 0.936230779, 0.500282288, -0.813908815, 0.295414746)
            },
        
            [89] = {
                ["fov"] = 72.4888888888889,
                ["cframe"] = CFrame.new(-6.44134903, 111.83532, 4.70050144, 0.858594, 0.47413528, -0.194967002, 0.0187357813, 0.351032466, 0.936175942, 0.512313724, -0.80744791, 0.292511046)
            },
        
            [90] = {
                ["fov"] = 71.28888888888889,
                ["cframe"] = CFrame.new(-6.39634705, 111.429817, 4.53112793, 0.83847636, 0.501328707, -0.213604599, 0.0192993581, 0.364414841, 0.93103683, 0.544596076, -0.784774899, 0.295877904)
            },
        
            [91] = {
                ["fov"] = 70,
                ["cframe"] = CFrame.new(-6.35134697, 111.024315, 4.36175442, 0.817151725, 0.527535677, -0.232312694, 0.0193172395, 0.37773639, 0.925711691, 0.576098919, -0.760934532, 0.298477411)
            },
        
            [92] = {
                ["fov"] = 68.62222222222222,
                ["cframe"] = CFrame.new(-6.30634499, 110.618813, 4.19237995, 0.794654548, 0.552713871, -0.251060843, 0.0187894404, 0.390975237, 0.920209467, 0.606771052, -0.735965908, 0.300305068)
            },
        
            [93] = {
                ["fov"] = 67.15555555555555,
                ["cframe"] = CFrame.new(-6.26134491, 110.21331, 4.02300644, 0.771021783, 0.576821923, -0.269818395, 0.0177167952, 0.404109716, 0.914539099, 0.636562347, -0.709909916, 0.301357925)
            },
        
            [94] = {
                ["fov"] = 65.6,
                ["cframe"] = CFrame.new(-6.21634293, 109.807816, 3.85363269, 0.746291995, 0.599820375, -0.288554728, 0.0161010921, 0.417118609, 0.908709526, 0.665423989, -0.682808638, 0.30163449)
            },
        
            [95] = {
                ["fov"] = 63.955555555555556,
                ["cframe"] = CFrame.new(-6.17134094, 109.402313, 3.68425918, 0.720505357, 0.621672034, -0.307239264, 0.0139450133, 0.429980248, 0.902730703, 0.693309188, -0.654706836, 0.301133811)
            },
        
            [96] = {
                ["fov"] = 62.22222222222222,
                ["cframe"] = CFrame.new(-6.12634087, 108.996811, 3.51488519, 0.693704188, 0.642340958, -0.325841367, 0.011251986, 0.442674011, 0.896612048, 0.720172107, -0.625650048, 0.299857169)
            },
        
            [97] = {
                ["fov"] = 60.4,
                ["cframe"] = CFrame.new(-6.08133888, 108.591309, 3.34551167, 0.665932298, 0.661793351, -0.344330847, 0.00802648067, 0.455179244, 0.890363574, 0.745968997, -0.595685601, 0.29780668)
            },
        
            [98] = {
                ["fov"] = 58.488888888888894,
                ["cframe"] = CFrame.new(-6.03633881, 108.185806, 3.17613769, 0.637234628, 0.679997921, -0.362677515, 0.00427377224, 0.467474997, 0.883996129, 0.770658076, -0.564862967, 0.294985056)
            },
        
            [99] = {
                ["fov"] = 56.51111111111111,
                ["cframe"] = CFrame.new(-5.99133682, 107.780304, 3.00676417, 0.607658327, 0.696924329, -0.380851388, 0, 0.479541749, 0.877519071, 0.794198513, -0.533231795, 0.291397542)
            },
        
            [100] = {
                ["fov"] = 54.6,
                ["cframe"] = CFrame.new(-5.8163681, 107.142563, 2.8078177, 0.584547579, 0.699030399, -0.411898822, 0.00568792224, 0.504121959, 0.863613725, 0.811339498, -0.507166147, 0.290707201)
            },
        
            [101] = {
                ["fov"] = 52.77777777777778,
                ["cframe"] = CFrame.new(-5.64140129, 106.504829, 2.60887122, 0.56081593, 0.699746609, -0.44253841, 0.010558486, 0.528416991, 0.848919332, 0.82787323, -0.480760038, 0.288956374)
            },
        
            [102] = {
                ["fov"] = 51.04444444444445,
                ["cframe"] = CFrame.new(-5.46643353, 105.867088, 2.40992475, 0.536502838, 0.699071527, -0.47271961, 0.0146039724, 0.552386761, 0.833460093, 0.843772233, -0.454057246, 0.286147803)
            },
        
            [103] = {
                ["fov"] = 49.400000000000006,
                ["cframe"] = CFrame.new(-5.29146576, 105.229347, 2.21097827, 0.511648059, 0.697006583, -0.502392411, 0.0178174675, 0.575991273, 0.817261577, 0.859010339, -0.427101731, 0.282285959)
            },
        
            [104] = {
                ["fov"] = 47.84444444444444,
                ["cframe"] = CFrame.new(-5.11649799, 104.591606, 2.01203179, 0.486293197, 0.693554938, -0.53150785, 0.0201936364, 0.599192023, 0.800350666, 0.873562336, -0.399938226, 0.277377635)
            },
        
            [105] = {
                ["fov"] = 46.37777777777777,
                ["cframe"] = CFrame.new(-4.94153023, 103.953873, 1.81308532, 0.460480094, 0.688722253, -0.560017586, 0.0217285454, 0.621950388, 0.782755136, 0.887404084, -0.372611523, 0.27143082)
            },
        
            [106] = {
                ["fov"] = 45.00000000000001,
                ["cframe"] = CFrame.new(-4.76656246, 103.316132, 1.61413884, 0.43425107, 0.682516873, -0.58787477, 0.0224198699, 0.644228637, 0.764504254, 0.900512815, -0.345166862, 0.26445505)
            },
        
            [107] = {
                ["fov"] = 43.711111111111116,
                ["cframe"] = CFrame.new(-4.6677494, 103.236237, 1.46813655, 0.415287912, 0.674982607, -0.609864235, 0.0277398825, 0.660700798, 0.750136614, 0.909266949, -0.328440189, 0.255657136)
            },
        
            [108] = {
                ["fov"] = 42.511111111111106,
                ["cframe"] = CFrame.new(-4.56893539, 103.156334, 1.32213426, 0.396037728, 0.666748703, -0.631348133, 0.0326003432, 0.676924348, 0.735330462, 0.917655468, -0.311800867, 0.246351302)
            },
        
            [109] = {
                ["fov"] = 41.4,
                ["cframe"] = CFrame.new(-4.47012234, 103.076431, 1.17613196, 0.376519024, 0.657822251, -0.652306318, 0.0369966328, 0.692884624, 0.720098734, 0.925669909, -0.295264095, 0.236546993)
            },
        
            [110] = {
                ["fov"] = 40.37777777777778,
                ["cframe"] = CFrame.new(-4.37130928, 102.996536, 1.03012919, 0.356749117, 0.648211718, -0.672719717, 0.0409249067, 0.708566904, 0.704455972, 0.933303475, -0.278845102, 0.226252615)
            },
        
            [111] = {
                ["fov"] = 39.44444444444444,
                ["cframe"] = CFrame.new(-4.27249527, 102.916641, 0.884126902, 0.336746573, 0.637925923, -0.692569315, 0.0443813205, 0.723956704, 0.688416362, 0.940548837, -0.262559026, 0.215477943)
            },
        
            [112] = {
                ["fov"] = 38.6,
                ["cframe"] = CFrame.new(-4.17368221, 102.836739, 0.738124609, 0.31652981, 0.626974344, -0.711837053, 0.0473628938, 0.739039838, 0.671994627, 0.947399378, -0.246420965, 0.204232812)
            },
        
            [113] = {
                ["fov"] = 37.84444444444444,
                ["cframe"] = CFrame.new(-4.0748682, 102.756836, 0.592122316, 0.296116918, 0.615367115, -0.730505466, 0.0498667955, 0.753802419, 0.655206203, 0.953849196, -0.230445653, 0.192527235)
            },
        
            [114] = {
                ["fov"] = 37.17777777777778,
                ["cframe"] = CFrame.new(-3.97605515, 102.676941, 0.446120024, 0.275527239, 0.603114724, -0.748556912, 0.0518906713, 0.768231094, 0.638066113, 0.959891737, -0.214647755, 0.180372536)
            },
        
            [115] = {
                ["fov"] = 36.6,
                ["cframe"] = CFrame.new(-3.88977146, 102.922981, 0.280717611, 0.252047539, 0.58674264, -0.769548774, 0.0581951439, 0.784593165, 0.617273748, 0.965963483, -0.200366333, 0.163609207)
            },
        
            [116] = {
                ["fov"] = 36.111111111111114,
                ["cframe"] = CFrame.new(-3.80348778, 103.169014, 0.115315199, 0.228273034, 0.569610059, -0.789579511, 0.0638518333, 0.800487161, 0.595938981, 0.971501112, -0.186452881, 0.146358967)
            },
        
            [117] = {
                ["fov"] = 35.711111111111116,
                ["cframe"] = CFrame.new(-3.71720314, 103.415054, -0.0500869751, 0.204233095, 0.551738858, -0.808624268, 0.0688538849, 0.815892935, 0.574088812, 0.976497889, -0.172924876, 0.128642976)
            },
        
            [118] = {
                ["fov"] = 35.400000000000006,
                ["cframe"] = CFrame.new(-3.63091946, 103.661087, -0.215489149, 0.179958433, 0.533151567, -0.826658666, 0.0731948763, 0.830790877, 0.551750839, 0.980947316, -0.159799457, 0.110483825)
            },
        
            [119] = {
                ["fov"] = 35.17777777777778,
                ["cframe"] = CFrame.new(-3.54463577, 103.907127, -0.380891562, 0.155479491, 0.513871312, -0.843660235, 0.0768693686, 0.84516269, 0.528952897, 0.98484385, -0.147092983, 0.091904521)
            },
        
            [120] = {
                ["fov"] = 35.044444444444444,
                ["cframe"] = CFrame.new(-3.45835114, 104.153168, -0.546293974, 0.130827367, 0.493922651, -0.85960722, 0.0798726082, 0.858989835, 0.505724072, 0.988182425, -0.134821594, 0.0729284883)
            },
        
            [121] = {
                ["fov"] = 35,
                ["cframe"] = CFrame.new(-3.37206745, 104.3992, -0.711696386, 0.106032625, 0.473330826, -0.874479949, 0.0822010338, 0.872254968, 0.482093632, 0.990959227, -0.123000816, 0.0535792112)
            },
        
            [122] = {
                ["fov"] = 35.00256,
                ["cframe"] = CFrame.new(-3.28578377, 104.645241, -0.87709856, 0.0811270922, 0.452121496, -0.888259292, 0.0838514715, 0.884941518, 0.45809114, 0.993170381, -0.111645475, 0.0338816643)
            },
        
            [123] = {
                ["fov"] = 35.02048,
                ["cframe"] = CFrame.new(-3.20149326, 105.29892, -1.08830118, 0.0487451032, 0.422630399, -0.904990315, 0.089463383, 0.900578082, 0.425388634, 0.994796634, -0.101699129, 0.00608885288)
            },
        
            [124] = {
                ["fov"] = 35.06912,
                ["cframe"] = CFrame.new(-3.11720276, 105.952606, -1.29950404, 0.0161460768, 0.392308593, -0.91969198, 0.0938916057, 0.91515255, 0.392020583, 0.99545151, -0.0926809609, -0.0220583677)
            },
        
            [125] = {
                ["fov"] = 35.16384,
                ["cframe"] = CFrame.new(-3.03291225, 106.606285, -1.51070666, -0.0165977832, 0.361223042, -0.932331741, 0.0971263796, 0.928632796, 0.358060837, 0.995133698, -0.0846109986, -0.0504975319)
            },
        
            [126] = {
                ["fov"] = 35.32,
                ["cframe"] = CFrame.new(-2.94862175, 107.259972, -1.72190952, -0.0494142808, 0.329442322, -0.942881882, 0.0991605967, 0.940989077, 0.323584229, 0.993843853, -0.0775070563, -0.0791659951)
            },
        
            [127] = {
                ["fov"] = 35.55296,
                ["cframe"] = CFrame.new(-2.86433125, 107.913651, -1.93311214, -0.0822309032, 0.297036648, -0.951318741, 0.0999896899, 0.952193975, 0.288666964, 0.991584659, -0.0713847354, -0.108000398)
            },
        
            [128] = {
                ["fov"] = 35.87808,
                ["cframe"] = CFrame.new(-2.77845383, 108.881851, -2.18457222, -0.121682897, 0.256998301, -0.958720565, 0.101797409, 0.964036167, 0.24550283, 0.987335086, -0.0677217469, -0.14346844)
            },
        
            [129] = {
                ["fov"] = 36.31072,
                ["cframe"] = CFrame.new(-2.69257736, 109.85006, -2.43603253, -0.161000937, 0.216370955, -0.962944746, 0.101826593, 0.974107921, 0.201854289, 0.981687546, -0.0655546784, -0.178864598)
            },
        
            [130] = {
                ["fov"] = 36.86624,
                ["cframe"] = CFrame.new(-2.60669994, 110.818268, -2.68749285, -0.200056359, 0.17528677, -0.963977396, 0.100077055, 0.982376575, 0.157863259, 0.974660218, -0.0648904815, -0.214072883)
            },
        
            [131] = {
                ["fov"] = 37.56,
                ["cframe"] = CFrame.new(-2.52082253, 111.786469, -2.93895292, -0.238722637, 0.133879513, -0.961814702, 0.0965545774, 0.988815308, 0.113672957, 0.966275513, -0.065731287, -0.24897927)
            },
        
            [132] = {
                ["fov"] = 38.40736,
                ["cframe"] = CFrame.new(-2.43335915, 113.069191, -3.23067069, -0.283477277, 0.0851382166, -0.955192387, 0.0921422988, 0.9938609, 0.0612393096, 0.95454222, -0.0706536695, -0.289581835)
            },
        
            [133] = {
                ["fov"] = 39.42368,
                ["cframe"] = CFrame.new(-2.34589577, 114.351921, -3.52238846, -0.32741496, 0.0364487208, -0.94417727, 0.0853025019, 0.996315479, 0.00888085738, 0.941022158, -0.0776329637, -0.329317808)
            },
        
            [134] = {
                ["fov"] = 40.57632,
                ["cframe"] = CFrame.new(-2.25843143, 115.634644, -3.81410623, -0.370338172, -0.0119691975, -0.928819835, 0.0760660768, 0.996168017, -0.0431660712, 0.925777256, -0.0866377354, -0.368008554)
            },
        
            [135] = {
                ["fov"] = 41.59264,
                ["cframe"] = CFrame.new(-2.17096806, 116.917374, -4.10582399, -0.412052929, -0.0598969869, -0.909189284, 0.0644747317, 0.993418932, -0.0946665481, 0.908876121, -0.0976273343, -0.405479372)
            },
        
            [136] = {
                ["fov"] = 42.44,
                ["cframe"] = CFrame.new(-2.08350468, 118.200096, -4.39754152, -0.452370226, -0.107118323, -0.885374069, 0.0505807698, 0.988080919, -0.145388052, 0.890394926, -0.110552087, -0.441560268)
            },
        
            [137] = {
                ["fov"] = 43.13376,
                ["cframe"] = CFrame.new(-2.15565491, 118.663963, -4.61776495, -0.470899671, -0.141957313, -0.870690525, 0.0441133678, 0.981944442, -0.183954209, 0.88108331, -0.125033021, -0.456135094)
            },
        
            [138] = {
                ["fov"] = 43.68928,
                ["cframe"] = CFrame.new(-2.22780514, 119.127831, -4.8379879, -0.488991439, -0.176258296, -0.854295194, 0.0368407294, 0.974325299, -0.222110257, 0.871510208, -0.140082881, -0.469943225)
            },
        
            [139] = {
                ["fov"] = 44.12192,
                ["cframe"] = CFrame.new(-2.29995537, 119.591698, -5.05821133, -0.506611705, -0.209955335, -0.836219728, 0.0287768394, 0.965238154, -0.25978291, 0.861694038, -0.155672789, -0.482959092)
            },
        
            [140] = {
                ["fov"] = 44.44704,
                ["cframe"] = CFrame.new(-2.3721056, 120.055565, -5.27843475, -0.523726285, -0.24298355, -0.816498756, 0.0199371502, 0.95470053, -0.296899617, 0.851653576, -0.171772733, -0.495157361)
            },
        
            [141] = {
                ["fov"] = 44.68,
                ["cframe"] = CFrame.new(-2.44425583, 120.519432, -5.49865818, -0.540301919, -0.275279343, -0.795170128, 0.0103387386, 0.942732751, -0.333388895, 0.841407955, -0.188351661, -0.506514251)
            },
        
            [142] = {
                ["fov"] = 44.83616,
                ["cframe"] = CFrame.new(-2.51640606, 120.983299, -5.71888161, -0.556306899, -0.306780636, -0.772274911, 4.47034836e-08, 0.929357708, -0.369180679, 0.830977023, -0.205377758, -0.517008066)
            },
        
            [143] = {
                ["fov"] = 44.93088,
                ["cframe"] = CFrame.new(-3.02475548, 120.376984, -6.09727859, -0.556306899, -0.359825194, -0.749031603, 1.49011612e-08, 0.901386857, -0.433014721, 0.830976903, -0.240889102, -0.501447737)
            },
        
            [144] = {
                ["fov"] = 44.97952,
                ["cframe"] = CFrame.new(-3.53310585, 119.77066, -6.47567654, -0.556307197, -0.411122143, -0.722150266, 1.49011612e-08, 0.869037807, -0.494745642, 0.830976784, -0.275230557, -0.483452022)
            },
        
            [145] = {
                ["fov"] = 44.99744,
                ["cframe"] = CFrame.new(-4.04145622, 119.164337, -6.85407448, -0.556307197, -0.460422158, -0.691761255, 1.49011612e-08, 0.832467735, -0.554073513, 0.830976605, -0.308235109, -0.463107765)
            },
        
            [146] = {
                ["fov"] = 45,
                ["cframe"] = CFrame.new(-4.54980564, 118.558022, -7.23247147, -0.556307316, -0.507485867, -0.65801239, 0, 0.791854262, -0.610710144, 0.830976605, -0.339742512, -0.440514326)
            },
        
            [147] = {
                ["fov"] = 25,
                ["cframe"] = CFrame.new(-2.37459564, 151.733673, 5.90876865, 0.900312364, 0.411429256, -0.141999379, 0, 0.326251984, 0.945282876, 0.43524459, -0.85104984, 0.29372862)
            },
        
            [148] = {
                ["fov"] = 25.001009602194788,
                ["cframe"] = CFrame.new(-2.27813339, 150.861481, 5.77612782, 0.901142418, 0.407469988, -0.148022383, -4.64320183e-05, 0.341531068, 0.939870477, 0.433523268, -0.846950293, 0.307787061)
            },
        
            [149] = {
                ["fov"] = 25.008076817558297,
                ["cframe"] = CFrame.new(-2.18167114, 149.989288, 5.64348602, 0.901969552, 0.403411597, -0.153980657, -6.19590282e-05, 0.356722921, 0.93421036, 0.43179965, -0.842619717, 0.321778208)
            },
        
            [150] = {
                ["fov"] = 25.02725925925926,
                ["cframe"] = CFrame.new(-2.08520985, 149.117111, 5.51084423, 0.902793467, 0.399255633, -0.159871772, -4.64767218e-05, 0.371820927, 0.928304553, 0.430074453, -0.838059783, 0.335696012)
            },
        
            [151] = {
                ["fov"] = 25.064614540466394,
                ["cframe"] = CFrame.new(-1.9887476, 148.244919, 5.37820339, 0.903613806, 0.395003796, -0.165693402, -1.49011612e-08, 0.386819422, 0.922155619, 0.428348303, -0.833272576, 0.349535316)
            },
        
            [152] = {
                ["fov"] = 25.126200274348424,
                ["cframe"] = CFrame.new(-1.95439529, 147.811676, 5.34758377, 0.904955387, 0.388607144, -0.173321411, -0.00021533668, 0.407747746, 0.913094699, 0.425506473, -0.826272666, 0.369077176)
            },
        
            [153] = {
                ["fov"] = 25.218074074074075,
                ["cframe"] = CFrame.new(-1.92004204, 147.378433, 5.31696415, 0.906289816, 0.382034421, -0.180799633, -0.000358983874, 0.428464949, 0.903558433, 0.422656685, -0.818820894, 0.388450563)
            },
        
            [154] = {
                ["fov"] = 25.34629355281207,
                ["cframe"] = CFrame.new(-1.88568974, 146.94519, 5.28634453, 0.907616377, 0.375289142, -0.188123986, -0.000430881977, 0.448959559, 0.893552005, 0.419800401, -0.810921371, 0.407644749)
            },
        
            [155] = {
                ["fov"] = 25.516916323731138,
                ["cframe"] = CFrame.new(-1.85133648, 146.511948, 5.25572491, 0.908934176, 0.368375063, -0.195290759, -0.000430852175, 0.4692204, 0.883081079, 0.416939437, -0.802578449, 0.426649183)
            },
        
            [156] = {
                ["fov"] = 25.736,
                ["cframe"] = CFrame.new(-1.81698418, 146.078705, 5.22510529, 0.910242736, 0.361295521, -0.202295959, -0.000359043479, 0.489237577, 0.87215054, 0.414074838, -0.793796062, 0.445454687)
            },
        
            [157] = {
                ["fov"] = 26.00960219478738,
                ["cframe"] = CFrame.new(-1.78263092, 145.645462, 5.19448566, 0.911541283, 0.354054511, -0.209136009, -0.000215396285, 0.508999705, 0.860766649, 0.41120851, -0.784579277, 0.464050502)
            },
        
            [158] = {
                ["fov"] = 26.343780521262,
                ["cframe"] = CFrame.new(-1.74827862, 145.212219, 5.16386604, 0.912829161, 0.346655905, -0.215807274, 0, 0.528496683, 0.848935485, 0.408341855, -0.77493304, 0.48242712)
            },
        
            [159] = {
                ["fov"] = 26.744592592592593,
                ["cframe"] = CFrame.new(-1.69334316, 144.910889, 5.07749462, 0.912632227, 0.344083011, -0.220701963, -0.000131860375, 0.54014945, 0.841569245, 0.408781677, -0.768014133, 0.49300313)
            },
        
            [160] = {
                ["fov"] = 27.218096021947872,
                ["cframe"] = CFrame.new(-1.63840675, 144.609543, 4.9911232, 0.912435889, 0.341442764, -0.225560695, -0.000270292163, 0.551699698, 0.834042847, 0.409219652, -0.760949671, 0.503482878)
            },
        
            [161] = {
                ["fov"] = 27.77034842249657,
                ["cframe"] = CFrame.new(-1.5834713, 144.308212, 4.90475178, 0.912240088, 0.338735789, -0.230382517, -0.000415354967, 0.563144803, 0.826358199, 0.409655809, -0.753741384, 0.513863981)
            },
        
            [162] = {
                ["fov"] = 28.40740740740741,
                ["cframe"] = CFrame.new(-1.52853584, 144.006882, 4.81838036, 0.912044942, 0.335962415, -0.23516652, -0.000566974282, 0.574483097, 0.818516314, 0.41008988, -0.746390283, 0.524144888)
            },
        
            [163] = {
                ["fov"] = 29.135330589849108,
                ["cframe"] = CFrame.new(-1.47360039, 143.705551, 4.73200893, 0.911850393, 0.333123326, -0.239911795, -0.000725135207, 0.585711896, 0.81051898, 0.410521984, -0.738898158, 0.534323215)
            },
        
            [164] = {
                ["fov"] = 29.9601755829904,
                ["cframe"] = CFrame.new(-1.41866398, 143.404205, 4.64563751, 0.911656559, 0.33021903, -0.244617611, -0.000889822841, 0.596829355, 0.802367806, 0.410952061, -0.73126626, 0.544397235)
            },
        
            [165] = {
                ["fov"] = 30.888,
                ["cframe"] = CFrame.new(-1.36372852, 143.102875, 4.55926609, 0.911463439, 0.327249944, -0.249282703, -0.00106097758, 0.607833385, 0.794063926, 0.411379695, -0.723495722, 0.554365098)
            },
        
            [166] = {
                ["fov"] = 31.92486145404664,
                ["cframe"] = CFrame.new(-1.34644508, 143.008942, 4.53533459, 0.911569893, 0.32523936, -0.251514763, -0.000977754593, 0.613455117, 0.789728999, 0.411143988, -0.719647288, 0.559525251)
            },
        
            [167] = {
                ["fov"] = 33.07681755829904,
                ["cframe"] = CFrame.new(-1.32916164, 142.915024, 4.51140213, 0.911676049, 0.323212743, -0.253732771, -0.000892654061, 0.619046688, 0.785353661, 0.410908729, -0.715761662, 0.564658523)
            },
        
            [168] = {
                ["fov"] = 34.34992592592593,
                ["cframe"] = CFrame.new(-1.31187725, 142.821091, 4.48746967, 0.911781907, 0.321170241, -0.255936414, -0.000805735588, 0.624607265, 0.780938685, 0.410674006, -0.711839497, 0.569764376)
            },
        
            [169] = {
                ["fov"] = 35.750244170096025,
                ["cframe"] = CFrame.new(-1.29459381, 142.727158, 4.46353817, 0.911887467, 0.319111943, -0.258125573, -0.000717014074, 0.630136788, 0.776483774, 0.4104397, -0.707880735, 0.574842691)
            },
        
            [170] = {
                ["fov"] = 37.249755829903975,
                ["cframe"] = CFrame.new(-1.27731037, 142.63324, 4.43960667, 0.911992669, 0.317038208, -0.260300249, -0.000626415014, 0.635634482, 0.771989942, 0.410206109, -0.703886151, 0.579892576)
            },
        
            [171] = {
                ["fov"] = 38.65007407407408,
                ["cframe"] = CFrame.new(-1.26002693, 142.539307, 4.41567421, 0.912097514, 0.314949095, -0.262460113, -0.000534012914, 0.641100109, 0.767457247, 0.409973085, -0.699855685, 0.584913969)
            },
        
            [172] = {
                ["fov"] = 39.92318244170096,
                ["cframe"] = CFrame.new(-1.24274349, 142.445374, 4.39174175, 0.91220206, 0.312844515, -0.264604867, -0.000439867377, 0.64653343, 0.762885511, 0.409740448, -0.695789397, 0.589906693)
            },
        
            [173] = {
                ["fov"] = 41.07513854595336,
                ["cframe"] = CFrame.new(-1.2254591, 142.35144, 4.36781025, 0.91230619, 0.310725003, -0.2667346, -0.000343829393, 0.65193367, 0.758276045, 0.409508586, -0.69168824, 0.594869971)
            },
        
            [174] = {
                ["fov"] = 42.111999999999995,
                ["cframe"] = CFrame.new(-1.20817566, 142.257523, 4.34387875, 0.912410021, 0.308590472, -0.268849075, -0.000246033072, 0.657300711, 0.753628373, 0.40927726, -0.687551975, 0.599803686)
            },
        
            [175] = {
                ["fov"] = 43.0398244170096,
                ["cframe"] = CFrame.new(-1.19089222, 142.163589, 4.31994629, 0.912513494, 0.306441188, -0.270948052, -0.000146448612, 0.662634075, 0.748943269, 0.409046471, -0.68338114, 0.604707479)
            },
        
            [176] = {
                ["fov"] = 43.864669410150896,
                ["cframe"] = CFrame.new(-1.18949986, 142.157791, 4.31614304, 0.91239655, 0.306479126, -0.271298856, -0.000138014555, 0.663054585, 0.748571098, 0.409307331, -0.682956278, 0.605010986)
            },
        
            [177] = {
                ["fov"] = 44.592592592592595,
                ["cframe"] = CFrame.new(-1.18810749, 142.152008, 4.31233883, 0.912279606, 0.306516767, -0.271649569, -0.000129744411, 0.663474858, 0.748198628, 0.409568101, -0.682531118, 0.605314255)
            },
        
            [178] = {
                ["fov"] = 45.22965157750343,
                ["cframe"] = CFrame.new(-1.18671513, 142.14621, 4.30853558, 0.912162423, 0.306554258, -0.272000283, -0.000121623278, 0.663894832, 0.74782598, 0.409828812, -0.68210566, 0.605617225)
            },
        
            [179] = {
                ["fov"] = 45.78190397805213,
                ["cframe"] = CFrame.new(-1.18532276, 142.140411, 4.30473232, 0.91204524, 0.306591481, -0.272351056, -0.000113636255, 0.664314687, 0.747453034, 0.410089523, -0.681680024, 0.605919898)
            },
        
            [180] = {
                ["fov"] = 46.255407407407404,
                ["cframe"] = CFrame.new(-1.1839304, 142.134628, 4.30092812, 0.911927998, 0.306628525, -0.2727018, -0.000105813146, 0.664734304, 0.747079909, 0.410350204, -0.681254208, 0.606222272)
            },
        
            [181] = {
                ["fov"] = 46.656219478737995,
                ["cframe"] = CFrame.new(-1.18253708, 142.12883, 4.29712486, 0.911810696, 0.306665301, -0.273052514, -9.81688499e-05, 0.665153682, 0.746706486, 0.410610855, -0.680828094, 0.606524348)
            },
        
            [182] = {
                ["fov"] = 46.99039780521262,
                ["cframe"] = CFrame.new(-1.18114471, 142.123047, 4.29332066, 0.911693275, 0.306701869, -0.273403257, -9.0688467e-05, 0.665572941, 0.746332824, 0.410871476, -0.680401862, 0.606826186)
            },
        
            [183] = {
                ["fov"] = 47.263999999999996,
                ["cframe"] = CFrame.new(-1.17975235, 142.117249, 4.2895174, 0.911575794, 0.306738228, -0.273753971, -8.33570957e-05, 0.665991962, 0.745958984, 0.411132067, -0.679975331, 0.607127726)
            },
        
            [184] = {
                ["fov"] = 47.48308367626886,
                ["cframe"] = CFrame.new(-1.17835999, 142.11145, 4.28571415, 0.911458194, 0.306774378, -0.274104685, -7.6174736e-05, 0.666410744, 0.745584846, 0.411392599, -0.679548621, 0.607428908)
            },
        
            [185] = {
                ["fov"] = 47.65370644718793,
                ["cframe"] = CFrame.new(-1.17696762, 142.105667, 4.28190994, 0.911340535, 0.306810319, -0.274455488, -6.91860914e-05, 0.666829288, 0.745210588, 0.411653221, -0.679121673, 0.607729793)
            },
        
            [186] = {
                ["fov"] = 47.781925925925925,
                ["cframe"] = CFrame.new(-1.17557526, 142.099869, 4.27810669, 0.911222935, 0.306845903, -0.274806201, -6.23315573e-05, 0.667247832, 0.744835854, 0.411913633, -0.678694367, 0.608030617)
            },
        
            [187] = {
                ["fov"] = 47.87379972565158,
                ["cframe"] = CFrame.new(-1.17408276, 142.094009, 4.27453899, 0.911137283, 0.306838334, -0.275098324, -5.69969416e-05, 0.667641342, 0.744483113, 0.412102938, -0.678310633, 0.608330369)
            },
        
            [188] = {
                ["fov"] = 47.935385459533606,
                ["cframe"] = CFrame.new(-1.17259026, 142.088165, 4.27097225, 0.911051631, 0.306830645, -0.275390506, -5.1766634e-05, 0.668034673, 0.744130254, 0.412292361, -0.677926898, 0.608629942)
            },
        
            [189] = {
                ["fov"] = 47.97274074074074,
                ["cframe"] = CFrame.new(-1.17109871, 142.082306, 4.26740551, 0.910965979, 0.306822598, -0.275682539, -4.66406345e-05, 0.668427944, 0.743776917, 0.412481457, -0.677542567, 0.608929455)
            },
        
            [190] = {
                ["fov"] = 47.991923182441695,
                ["cframe"] = CFrame.new(-1.16960621, 142.076447, 4.26383781, 0.910880327, 0.306814492, -0.275974602, -4.16785479e-05, 0.668820977, 0.743423522, 0.412670702, -0.677158296, 0.609228671)
            },
        
            [191] = {
                ["fov"] = 47.998990397805215,
                ["cframe"] = CFrame.new(-1.16811371, 142.070587, 4.26027012, 0.910794556, 0.306806266, -0.276266694, -3.67611647e-05, 0.669213772, 0.743070006, 0.412859976, -0.676773906, 0.609527469)
            },
        
            [192] = {
                ["fov"] = 48,
                ["cframe"] = CFrame.new(-1.16662216, 142.064728, 4.25670338, 0.910708725, 0.306797773, -0.276558757, -3.19778919e-05, 0.669606447, 0.742716074, 0.413049161, -0.676389098, 0.609826267)
            },
        
            [193] = {
                ["fov"] = 47.998951057182595,
                ["cframe"] = CFrame.new(-1.16512966, 142.058884, 4.25313663, 0.910622835, 0.30678919, -0.27685082, -2.73287296e-05, 0.669999003, 0.742362022, 0.413238406, -0.676004291, 0.610124767)
            },
        
            [194] = {
                ["fov"] = 47.99580569577177,
                ["cframe"] = CFrame.new(-1.16363716, 142.053024, 4.24956894, 0.910537004, 0.306780398, -0.277142823, -2.27838755e-05, 0.670391321, 0.742007792, 0.413427591, -0.675619185, 0.610423088)
            },
        
            [195] = {
                ["fov"] = 47.99056831483986,
                ["cframe"] = CFrame.new(-1.16214466, 142.047165, 4.24600124, 0.910451055, 0.306771487, -0.277434826, -1.83582306e-05, 0.670783281, 0.741653502, 0.413616776, -0.675234139, 0.610720992)
            },
        
            [196] = {
                ["fov"] = 47.983246239337696,
                ["cframe"] = CFrame.new(-1.16065216, 142.041321, 4.2424345, 0.910365164, 0.306762338, -0.277726829, -1.39921904e-05, 0.671175182, 0.741298854, 0.413805902, -0.674848735, 0.611018777)
            },
        
            [197] = {
                ["fov"] = 47.97384970984993,
                ["cframe"] = CFrame.new(-1.15916061, 142.035461, 4.23886776, 0.910279155, 0.306753039, -0.278018773, -9.76026058e-06, 0.671566904, 0.740943968, 0.413995028, -0.674463093, 0.611316383)
            },
        
            [198] = {
                ["fov"] = 47.96239186827273,
                ["cframe"] = CFrame.new(-1.15766811, 142.029602, 4.23530006, 0.910193145, 0.306743562, -0.278310716, -5.64754009e-06, 0.671958506, 0.740588784, 0.414184093, -0.674077272, 0.61161375)
            },
        
            [199] = {
                ["fov"] = 47.9488887394336,
                ["cframe"] = CFrame.new(-1.15607548, 142.023682, 4.23196888, 0.910139382, 0.3066912, -0.278544009, -2.71201134e-06, 0.672325373, 0.740255713, 0.414302111, -0.673735142, 0.611910641)
            },
        
            [200] = {
                ["fov"] = 47.933359208679214,
                ["cframe"] = CFrame.new(-1.1544838, 142.017761, 4.22863865, 0.910085618, 0.306638777, -0.278777301, 1.63912773e-07, 0.672691941, 0.739922762, 0.414420247, -0.67339313, 0.612207234)
            },
        
            [201] = {
                ["fov"] = 47.91582499546255,
                ["cframe"] = CFrame.new(-1.15289116, 142.011856, 4.22530746, 0.910031915, 0.306586146, -0.279010534, 2.98023224e-06, 0.673058569, 0.739589274, 0.414538205, -0.673050702, 0.612503827)
            },
        
            [202] = {
                ["fov"] = 47.896310622966304,
                ["cframe"] = CFrame.new(-1.15129948, 142.005936, 4.22197628, 0.909978211, 0.306533337, -0.279243588, 5.69224358e-06, 0.673425019, 0.739255488, 0.414656103, -0.672707975, 0.61280036)
            },
        
            [203] = {
                ["fov"] = 47.874843383804965,
                ["cframe"] = CFrame.new(-1.14970684, 142.000015, 4.21864605, 0.909924388, 0.306480527, -0.279476821, 8.38935375e-06, 0.673791111, 0.738921821, 0.414774179, -0.672365367, 0.613096416)
            },
        
            [204] = {
                ["fov"] = 47.85145330185363,
                ["cframe"] = CFrame.new(-1.1481142, 141.994095, 4.21531487, 0.909870565, 0.306427658, -0.279709995, 1.10119581e-05, 0.674157083, 0.738588035, 0.414892256, -0.672022641, 0.613392353)
            },
        
            [205] = {
                ["fov"] = 47.826173090256916,
                ["cframe"] = CFrame.new(-1.14652252, 141.988174, 4.21198368, 0.909816802, 0.306374431, -0.279942989, 1.35451555e-05, 0.674523175, 0.738253713, 0.415010095, -0.671679378, 0.61368835)
            },
        
            [206] = {
                ["fov"] = 47.79903810567666,
                ["cframe"] = CFrame.new(-1.14492989, 141.982254, 4.20865345, 0.909762979, 0.306321263, -0.280176133, 1.60634518e-05, 0.67488879, 0.737919509, 0.415128142, -0.671336353, 0.61398387)
            },
        
            [207] = {
                ["fov"] = 47.77008629884243,
                ["cframe"] = CFrame.new(-1.1433382, 141.976349, 4.20532227, 0.909709096, 0.306267917, -0.280409157, 1.84774399e-05, 0.675254345, 0.737584949, 0.415246129, -0.67099297, 0.614279389)
            },
        
            [208] = {
                ["fov"] = 47.739358161473994,
                ["cframe"] = CFrame.new(-1.14174557, 141.970428, 4.20199203, 0.909655273, 0.306214422, -0.280642152, 2.08318233e-05, 0.6756199, 0.737250149, 0.415364027, -0.67064935, 0.61457479)
            },
        
            [209] = {
                ["fov"] = 47.70689666965,
                ["cframe"] = CFrame.new(-1.14015388, 141.964508, 4.19866085, 0.90960139, 0.306160867, -0.280875117, 2.3111701e-05, 0.675985038, 0.73691535, 0.415482014, -0.670305729, 0.614869833)
            },
        
            [210] = {
                ["fov"] = 47.672747223702046,
                ["cframe"] = CFrame.new(-1.13856125, 141.958588, 4.19532967, 0.909547508, 0.306107163, -0.281108052, 2.53468752e-05, 0.676350057, 0.736580372, 0.415599972, -0.669961929, 0.615164757)
            },
        
            [211] = {
                ["fov"] = 47.63695758471818,
                ["cframe"] = CFrame.new(-1.13696861, 141.952667, 4.19199944, 0.909493625, 0.30605334, -0.281340927, 2.74926424e-05, 0.676714957, 0.736245096, 0.41571787, -0.669617951, 0.615459561)
            },
        
            [212] = {
                ["fov"] = 47.59957780774474,
                ["cframe"] = CFrame.new(-1.13537693, 141.946747, 4.18866825, 0.909439683, 0.305999428, -0.281573862, 2.96235085e-05, 0.677079678, 0.7359097, 0.415835887, -0.669273853, 0.615754008)
            },
        
            [213] = {
                ["fov"] = 47.56066017177982,
                ["cframe"] = CFrame.new(-1.13378429, 141.940842, 4.18533707, 0.909385741, 0.305945396, -0.281806707, 3.16798687e-05, 0.67744416, 0.735574305, 0.415953875, -0.668929756, 0.616048336)
            },
        
            [214] = {
                ["fov"] = 47.520259106656376,
                ["cframe"] = CFrame.new(-1.13219261, 141.934921, 4.18200684, 0.909331799, 0.305891216, -0.282039523, 3.36170197e-05, 0.677808642, 0.735238492, 0.416071773, -0.668585241, 0.616342664)
            },
        
            [215] = {
                ["fov"] = 47.47843111691718,
                ["cframe"] = CFrame.new(-1.13059998, 141.929001, 4.17867565, 0.909277797, 0.305836856, -0.282272279, 3.55392694e-05, 0.678172886, 0.734902442, 0.416189611, -0.668240488, 0.616636753)
            },
        
            [216] = {
                ["fov"] = 47.4352347027881,
                ["cframe"] = CFrame.new(-1.12835407, 141.921585, 4.17532825, 0.909310699, 0.305641711, -0.282377869, 3.56286764e-05, 0.678543389, 0.73456043, 0.416117936, -0.66795367, 0.616995871)
            },
        
            [217] = {
                ["fov"] = 47.39073027836025,
                ["cframe"] = CFrame.new(-1.12610722, 141.914169, 4.17198181, 0.909343481, 0.305446506, -0.28248328, 3.57180834e-05, 0.678913772, 0.734218001, 0.416046083, -0.667666435, 0.617354929)
            },
        
            [218] = {
                ["fov"] = 47.344980087095436,
                ["cframe"] = CFrame.new(-1.12386131, 141.906769, 4.16863537, 0.909376383, 0.305251241, -0.282588661, 3.58968973e-05, 0.679283977, 0.733875632, 0.415974379, -0.66737926, 0.617713809)
            },
        
            [219] = {
                ["fov"] = 47.298048114773,
                ["cframe"] = CFrame.new(-1.12161541, 141.899353, 4.16528797, 0.909409165, 0.305055916, -0.282693923, 3.61055136e-05, 0.679654002, 0.733532846, 0.415902555, -0.667091668, 0.61807251)
            },
        
            [220] = {
                ["fov"] = 47.25,
                ["cframe"] = CFrame.new(-1.11936951, 141.891937, 4.16194057, 0.909441948, 0.304860622, -0.282799155, 3.63588333e-05, 0.68002373, 0.733190179, 0.41583094, -0.666804194, 0.618431032)
            },
        
            [221] = {
                ["fov"] = 47.20090294240959,
                ["cframe"] = CFrame.new(-1.11712265, 141.884521, 4.15859413, 0.90947479, 0.304665208, -0.282904238, 3.66717577e-05, 0.680393398, 0.732847154, 0.415759176, -0.666516364, 0.618789434)
            },
        
            [222] = {
                ["fov"] = 47.150825608676335,
                ["cframe"] = CFrame.new(-1.11487675, 141.877106, 4.15524769, 0.909507573, 0.304469734, -0.283009231, 3.70144844e-05, 0.680762887, 0.732503951, 0.415687442, -0.666228354, 0.619147718)
            },
        
            [223] = {
                ["fov"] = 47.09983803647961,
                ["cframe"] = CFrame.new(-1.11263084, 141.869705, 4.15190029, 0.909540415, 0.304274142, -0.283114046, 3.734231e-05, 0.681132257, 0.732160449, 0.415615588, -0.665940046, 0.619505942)
            },
        
            [224] = {
                ["fov"] = 47.048011536549595,
                ["cframe"] = CFrame.new(-1.11038399, 141.862289, 4.14855289, 0.909573197, 0.304078549, -0.283218861, 3.77893448e-05, 0.681501389, 0.731816888, 0.415543854, -0.665651679, 0.619863868)
            },
        
            [225] = {
                ["fov"] = 46.99541859293275,
                ["cframe"] = CFrame.new(-1.10813808, 141.854874, 4.14520645, 0.90960592, 0.303882957, -0.283323526, 3.82214785e-05, 0.681870341, 0.731473148, 0.41547209, -0.665363133, 0.620221674)
            },
        
            [226] = {
                ["fov"] = 46.94213276161636,
                ["cframe"] = CFrame.new(-1.10589218, 141.847458, 4.14186001, 0.909638703, 0.303687215, -0.283428073, 3.87132168e-05, 0.682239056, 0.731129169, 0.415400267, -0.665074348, 0.620579302)
            },
        
            [227] = {
                ["fov"] = 46.88822856765378,
                ["cframe"] = CFrame.new(-1.10364628, 141.840057, 4.13851261, 0.909671485, 0.303491503, -0.28353259, 3.92496586e-05, 0.682607651, 0.730785072, 0.415328592, -0.664785445, 0.620936811)
            },
        
            [228] = {
                ["fov"] = 46.83378140093447,
                ["cframe"] = CFrame.new(-1.10139942, 141.832642, 4.13516521, 0.909704268, 0.303295732, -0.283636987, 3.98308039e-05, 0.682976127, 0.730440795, 0.415256798, -0.664496362, 0.6212942)
            },
        
            [229] = {
                ["fov"] = 46.778867410744375,
                ["cframe"] = CFrame.new(-1.09915352, 141.825226, 4.13181877, 0.909736991, 0.303099781, -0.283741206, 4.04119492e-05, 0.683344483, 0.730096102, 0.415184945, -0.664206982, 0.62165153)
            },
        
            [230] = {
                ["fov"] = 46.723563399264265,
                ["cframe"] = CFrame.new(-1.09582329, 141.816788, 4.13053036, 0.910080731, 0.302489817, -0.283289731, 3.66717577e-05, 0.683504045, 0.729946733, 0.414431095, -0.664320827, 0.622032762)
            },
        
            [231] = {
                ["fov"] = 46.667946714154965,
                ["cframe"] = CFrame.new(-1.0924921, 141.808334, 4.12924194, 0.910423756, 0.301879644, -0.282837808, 3.30656767e-05, 0.683663607, 0.729797304, 0.413676858, -0.664434135, 0.622413635)
            },
        
            [232] = {
                ["fov"] = 46.61209514037964,
                ["cframe"] = CFrame.new(-1.08916187, 141.799896, 4.12795353, 0.910766244, 0.301269352, -0.282385617, 2.96682119e-05, 0.683823287, 0.729647636, 0.412922353, -0.664546728, 0.622794211)
            },
        
            [233] = {
                ["fov"] = 46.55608679141449,
                ["cframe"] = CFrame.new(-1.08583164, 141.791458, 4.12666512, 0.911108017, 0.30065906, -0.281933129, 2.64495611e-05, 0.68398279, 0.729498148, 0.412167668, -0.664659023, 0.62317425)
            },
        
            [234] = {
                ["fov"] = 46.5,
                ["cframe"] = CFrame.new(-1.08250141, 141.783005, 4.1253767, 0.911449194, 0.300048679, -0.281480372, 2.34246254e-05, 0.684142172, 0.729348719, 0.411412716, -0.664770901, 0.623553813)
            },
        
            [235] = {
                ["fov"] = 46.44391320858551,
                ["cframe"] = CFrame.new(-1.07917023, 141.774567, 4.12408829, 0.911789775, 0.299438059, -0.281027168, 2.05785036e-05, 0.684301615, 0.729199052, 0.410657316, -0.664882064, 0.623933077)
            },
        
            [236] = {
                ["fov"] = 46.38790485962036,
                ["cframe"] = CFrame.new(-1.07584, 141.766113, 4.12279987, 0.9121297, 0.298827469, -0.280573666, 1.78962946e-05, 0.684460998, 0.729049504, 0.409901738, -0.66499275, 0.624311864)
            },
        
            [237] = {
                ["fov"] = 46.332053285845035,
                ["cframe"] = CFrame.new(-1.07250977, 141.757675, 4.12151051, 0.91246897, 0.29821673, -0.280119956, 1.5437603e-05, 0.684620321, 0.728899896, 0.409145951, -0.665102899, 0.624690175)
            },
        
            [238] = {
                ["fov"] = 46.276436600735735,
                ["cframe"] = CFrame.new(-1.06917858, 141.749237, 4.12022209, 0.912807703, 0.297605753, -0.279665709, 1.31130219e-05, 0.684779882, 0.72874999, 0.408389628, -0.665212274, 0.625068426)
            },
        
            [239] = {
                ["fov"] = 46.22113258925563,
                ["cframe"] = CFrame.new(-1.06584835, 141.740784, 4.11893368, 0.913145721, 0.296994805, -0.279211253, 1.09523535e-05, 0.684939146, 0.728600264, 0.407633215, -0.66532135, 0.625446022)
            },
        
            [240] = {
                ["fov"] = 46.16621859906553,
                ["cframe"] = CFrame.new(-1.06251812, 141.732346, 4.11764526, 0.913483202, 0.296383768, -0.278756499, 9.03010368e-06, 0.68509841, 0.728450596, 0.406876564, -0.66542989, 0.62582314)
            },
        
            [241] = {
                ["fov"] = 46.11177143234622,
                ["cframe"] = CFrame.new(-1.05918789, 141.723907, 4.11635685, 0.913819969, 0.295772612, -0.278301388, 7.2568655e-06, 0.685257614, 0.72830081, 0.406119555, -0.665537834, 0.626199961)
            },
        
            [242] = {
                ["fov"] = 46.05786723838364,
                ["cframe"] = CFrame.new(-1.0558567, 141.715454, 4.11506844, 0.914156199, 0.295161307, -0.27784586, 5.67734241e-06, 0.685416937, 0.728150904, 0.405362189, -0.665645182, 0.626576424)
            },
        
            [243] = {
                ["fov"] = 46.00458140706725,
                ["cframe"] = CFrame.new(-1.05252647, 141.707016, 4.11378002, 0.914491713, 0.294549853, -0.277390122, 4.23192978e-06, 0.6855762, 0.728000939, 0.404604614, -0.665751994, 0.626952469)
            },
        
            [244] = {
                ["fov"] = 45.951988463450405,
                ["cframe"] = CFrame.new(-1.04823399, 141.701355, 4.11170673, 0.915120602, 0.293374419, -0.276560575, 2.01314688e-05, 0.685914457, 0.727682233, 0.403180212, -0.665922523, 0.627688587)
            },
        
            [245] = {
                ["fov"] = 45.90016196352039,
                ["cframe"] = CFrame.new(-1.04394245, 141.695694, 4.10963249, 0.915747225, 0.292198598, -0.275729835, 3.6790967e-05, 0.686252594, 0.727363348, 0.401754856, -0.666091084, 0.628423214)
            },
        
            [246] = {
                ["fov"] = 45.849174391323665,
                ["cframe"] = CFrame.new(-1.03964996, 141.690048, 4.1075592, 0.916371763, 0.29102245, -0.274897844, 5.41210175e-05, 0.686590612, 0.727044344, 0.400328487, -0.666257739, 0.62915647)
            },
        
            [247] = {
                ["fov"] = 45.79909705759041,
                ["cframe"] = CFrame.new(-1.03535748, 141.684387, 4.10548496, 0.916993976, 0.289845884, -0.2740646, 7.2196126e-05, 0.686928511, 0.726724923, 0.398901045, -0.666422188, 0.629888415)
            },
        
            [248] = {
                ["fov"] = 45.75,
                ["cframe"] = CFrame.new(-1.03106594, 141.678726, 4.10341167, 0.917613983, 0.28866908, -0.273230225, 9.09566879e-05, 0.687266231, 0.726405621, 0.397472769, -0.666584849, 0.630618811)
            },
        
            [249] = {
                ["fov"] = 45.701951885227,
                ["cframe"] = CFrame.new(-1.02677345, 141.673065, 4.10133743, 0.918231726, 0.287491977, -0.272394627, 0.000110477209, 0.687603652, 0.726086199, 0.396043509, -0.666745484, 0.631347716)
            },
        
            [250] = {
                ["fov"] = 45.655019912904564,
                ["cframe"] = CFrame.new(-1.02248096, 141.667419, 4.09926414, 0.918847263, 0.286314547, -0.271557838, 0.000130698085, 0.687941015, 0.725766599, 0.394613296, -0.666904151, 0.63207531)
            },
        
            [251] = {
                ["fov"] = 45.60926972163975,
                ["cframe"] = CFrame.new(-1.01818943, 141.661758, 4.0971899, 0.919460595, 0.285136759, -0.270719856, 0.000151664019, 0.688278139, 0.72544688, 0.393182129, -0.667060912, 0.632801414)
            },
        
            [252] = {
                ["fov"] = 45.5647652972119,
                ["cframe"] = CFrame.new(-1.01389694, 141.656097, 4.09511662, 0.920071661, 0.283958673, -0.269880712, 0.000173345208, 0.688615143, 0.725126982, 0.391750038, -0.667215586, 0.633526087)
            },
        
            [253] = {
                ["fov"] = 45.52156888308282,
                ["cframe"] = CFrame.new(-1.0033865, 141.628128, 4.07597256, 0.921039939, 0.282168895, -0.268451422, 0.000207334757, 0.688921511, 0.724835932, 0.389468104, -0.667658508, 0.634465754)
            },
        
            [254] = {
                ["fov"] = 45.47974089334362,
                ["cframe"] = CFrame.new(-0.992875099, 141.600159, 4.0568285, 0.922002554, 0.280377865, -0.267019689, 0.000242367387, 0.689227879, 0.724544585, 0.387183666, -0.668096721, 0.635401905)
            },
        
            [255] = {
                ["fov"] = 45.43933982822018,
                ["cframe"] = CFrame.new(-0.982364655, 141.572189, 4.03768444, 0.922959507, 0.278585792, -0.265585661, 0.000278457999, 0.68953377, 0.724253535, 0.384896994, -0.668530703, 0.636334181)
            },
        
            [256] = {
                ["fov"] = 45.40042219225526,
                ["cframe"] = CFrame.new(-0.971853256, 141.544205, 4.01853943, 0.923910797, 0.276792407, -0.264149219, 0.000315576792, 0.68983978, 0.723962069, 0.382607847, -0.668959737, 0.63726306)
            },
        
            [257] = {
                ["fov"] = 45.36304241528182,
                ["cframe"] = CFrame.new(-0.961342812, 141.516235, 3.99939561, 0.924856365, 0.274997979, -0.262710422, 0.000353723764, 0.690145552, 0.723670423, 0.380316347, -0.669384181, 0.638188243)
            },
        
            [258] = {
                ["fov"] = 45.327252776297954,
                ["cframe"] = CFrame.new(-0.950831413, 141.488266, 3.98025155, 0.92579627, 0.273202479, -0.261269271, 0.000392988324, 0.690450966, 0.723379135, 0.378022611, -0.669804335, 0.639109552)
            },
        
            [259] = {
                ["fov"] = 45.29310333035,
                ["cframe"] = CFrame.new(-0.940320969, 141.460297, 3.96110749, 0.926730454, 0.271405876, -0.259825855, 0.000433221459, 0.690756321, 0.723087549, 0.375726551, -0.670219779, 0.640027344)
            },
        
            [260] = {
                ["fov"] = 45.260641838526006,
                ["cframe"] = CFrame.new(-0.929821014, 141.425873, 3.93552184, 0.927428961, 0.27011466, -0.258676499, 0.000460878015, 0.690823734, 0.723022997, 0.37399897, -0.670671761, 0.640565455)
            },
        
            [261] = {
                ["fov"] = 45.22991370115757,
                ["cframe"] = CFrame.new(-0.91932106, 141.391449, 3.90993667, 0.928124309, 0.26882261, -0.257526219, 0.000488728285, 0.690891206, 0.722958624, 0.372270226, -0.671121299, 0.641101539)
            },
        
            [262] = {
                ["fov"] = 45.20096189432334,
                ["cframe"] = CFrame.new(-0.90882206, 141.357025, 3.88435102, 0.928816319, 0.267529666, -0.256374866, 0.000516727567, 0.690958619, 0.722894132, 0.370540053, -0.671568334, 0.641635418)
            },
        
            [263] = {
                ["fov"] = 45.173826909743084,
                ["cframe"] = CFrame.new(-0.898322105, 141.322601, 3.85876536, 0.929505169, 0.266235948, -0.255222499, 0.000544905663, 0.691025853, 0.722829759, 0.368808627, -0.672013104, 0.642167032)
            },
        
            [264] = {
                ["fov"] = 45.14854669814637,
                ["cframe"] = CFrame.new(-0.885900497, 141.235657, 3.79071069, 0.928920925, 0.266933084, -0.256617725, 0.000597462058, 0.691958904, 0.721936643, 0.370277703, -0.670775354, 0.642615616)
            },
        
            [265] = {
                ["fov"] = 45.125156616195035,
                ["cframe"] = CFrame.new(-0.873478889, 141.148712, 3.72265601, 0.928334296, 0.267627776, -0.258013219, 0.000647991896, 0.692890882, 0.721042097, 0.371745914, -0.669535339, 0.643060982)
            },
        
            [266] = {
                ["fov"] = 45.103689377033696,
                ["cframe"] = CFrame.new(-0.861057281, 141.061768, 3.65460181, 0.927745283, 0.268320054, -0.259408921, 0.000696510077, 0.693821669, 0.720146596, 0.373213261, -0.668293297, 0.643502891)
            },
        
            [267] = {
                ["fov"] = 45.08417500453745,
                ["cframe"] = CFrame.new(-0.848636627, 140.974823, 3.58654714, 0.927153945, 0.269009829, -0.260804862, 0.000742956996, 0.694751382, 0.719249547, 0.374679774, -0.667048872, 0.643941641)
            },
        
            [268] = {
                ["fov"] = 45.066640791320786,
                ["cframe"] = CFrame.new(-0.836215019, 140.887863, 3.51849246, 0.926560342, 0.269697249, -0.262201041, 0.000787377357, 0.695679903, 0.718351483, 0.376145393, -0.665802479, 0.644377053)
            },
        
            [269] = {
                ["fov"] = 45.0511112605664,
                ["cframe"] = CFrame.new(-0.823793411, 140.800919, 3.45043826, 0.925964296, 0.270382106, -0.263597399, 0.000829741359, 0.696607351, 0.717452049, 0.377610117, -0.664553761, 0.644809186)
            },
        
            [270] = {
                ["fov"] = 45.03760813172727,
                ["cframe"] = CFrame.new(-0.811371803, 140.713974, 3.38238358, 0.925365984, 0.27106455, -0.264993995, 0.000870049, 0.697533786, 0.716551423, 0.379073948, -0.663302898, 0.645238161)
            },
        
            [271] = {
                ["fov"] = 45.02615029015007,
                ["cframe"] = CFrame.new(-0.798950195, 140.627029, 3.31432891, 0.924765348, 0.27174446, -0.266390711, 0.000908344984, 0.698459029, 0.715649486, 0.380536765, -0.66204977, 0.645663857)
            },
        
            [272] = {
                ["fov"] = 45.016753760662304,
                ["cframe"] = CFrame.new(-0.784606934, 140.487564, 3.20380521, 0.922841012, 0.274375975, -0.270337373, 0.000939294696, 0.700239718, 0.713907182, 0.385179967, -0.65907675, 0.645952225)
            },
        
            [273] = {
                ["fov"] = 45.00943168516014,
                ["cframe"] = CFrame.new(-0.770263672, 140.348099, 3.09328151, 0.920893312, 0.276990831, -0.274283767, 0.000957757235, 0.702016175, 0.712160349, 0.389813542, -0.656086445, 0.646216691)
            },
        
            [274] = {
                ["fov"] = 45.00419430422823,
                ["cframe"] = CFrame.new(-0.75592041, 140.208633, 2.98275733, 0.918922365, 0.279588819, -0.278229684, 0.000963658094, 0.7037884, 0.710409045, 0.394437224, -0.653078914, 0.646457493)
            },
        
            [275] = {
                ["fov"] = 45.001048942817405,
                ["cframe"] = CFrame.new(-0.741577148, 140.069168, 2.87223363, 0.916928232, 0.282169878, -0.282175004, 0.000957027078, 0.705556154, 0.70865339, 0.399050951, -0.650054395, 0.646674335)
            },
        
            [276] = {
                ["fov"] = 45,
                ["cframe"] = CFrame.new(-0.785979271, 140.003754, 2.79974627, 0.902427554, 0.296528697, -0.312562495, 0.00711864233, 0.715108097, 0.698977709, 0.430782884, -0.633001804, 0.643222392)
            },
        
            [277] = {
                ["fov"] = 43.666666666666664,
                ["cframe"] = CFrame.new(-0.830381393, 139.938354, 2.7272594, 0.886762917, 0.310175717, -0.342699051, 0.0128014088, 0.724647582, 0.689000845, 0.462047338, -0.615367413, 0.6386199)
            },
        
            [278] = {
                ["fov"] = 42.333333333333336,
                ["cframe"] = CFrame.new(-0.87478447, 139.872955, 2.65477204, 0.869956732, 0.323091567, -0.372541457, 0.0179972053, 0.734160423, 0.678737402, 0.49279955, -0.597176909, 0.632873058)
            },
        
            [279] = {
                ["fov"] = 41,
                ["cframe"] = CFrame.new(-0.919186592, 139.807541, 2.58228469, 0.852033257, 0.33525762, -0.402046889, 0.022698462, 0.743633449, 0.668202162, 0.522995353, -0.578456283, 0.62599057)
            },
        
            [280] = {
                ["fov"] = 39.666666666666664,
                ["cframe"] = CFrame.new(-0.963588715, 139.742126, 2.50979781, 0.833018184, 0.346656442, -0.431172937, 0.026898548, 0.753052652, 0.657410264, 0.552591443, -0.559232593, 0.617981911)
            },
        
            [281] = {
                ["fov"] = 38.333333333333336,
                ["cframe"] = CFrame.new(-1.00799084, 139.676727, 2.43731046, 0.81293869, 0.357271671, -0.459877849, 0.030591324, 0.76240468, 0.646377027, 0.581545234, -0.539533198, 0.608858824)
            },
        
            [282] = {
                ["fov"] = 37,
                ["cframe"] = CFrame.new(-1.07914162, 139.653976, 2.38159347, 0.780082643, 0.369531333, -0.504893839, 0.0383040607, 0.777237177, 0.628040791, 0.624502957, -0.509263277, 0.592154682)
            },
        
            [283] = {
                ["fov"] = 35.666666666666664,
                ["cframe"] = CFrame.new(-1.15029144, 139.631226, 2.32587647, 0.744837701, 0.379854828, -0.548568308, 0.0447265208, 0.791866004, 0.609054863, 0.66574496, -0.478182614, 0.572822094)
            },
        
            [284] = {
                ["fov"] = 34.333333333333336,
                ["cframe"] = CFrame.new(-1.22144127, 139.608459, 2.27015948, 0.707325757, 0.388206482, -0.590750277, 0.0498366207, 0.806240439, 0.589485049, 0.705128729, -0.446398973, 0.550927758)
            },
        
            [285] = {
                ["fov"] = 33,
                ["cframe"] = CFrame.new(-1.29259205, 139.585709, 2.21444201, 0.66767627, 0.394557655, -0.631294489, 0.0536165535, 0.820310891, 0.569399118, 0.742518544, -0.414022148, 0.526547313)
            },
        
            [286] = {
                ["fov"] = 31.666666666666668,
                ["cframe"] = CFrame.new(-1.36374283, 139.562958, 2.15872502, 0.626026452, 0.398886204, -0.670060158, 0.0560533255, 0.834028721, 0.548866272, 0.777784586, -0.381163895, 0.499765128)
            },
        
            [287] = {
                ["fov"] = 30.333333333333336,
                ["cframe"] = CFrame.new(-1.43489265, 139.540207, 2.10300803, 0.582520068, 0.401177257, -0.706913829, 0.0571385622, 0.847346425, 0.527957559, 0.81080544, -0.347937942, 0.470673651)
            },
        
            [288] = {
                ["fov"] = 29,
                ["cframe"] = CFrame.new(-1.49675274, 139.274521, 1.77173114, 0.485579878, 0.399268091, -0.777687192, 0.0571385473, 0.873208344, 0.483985901, 0.872323036, -0.279449761, 0.401198804)
            },
        
            [289] = {
                ["fov"] = 27.666666666666664,
                ["cframe"] = CFrame.new(-1.55861282, 139.008835, 1.44045424, 0.382494688, 0.388602018, -0.83826381, 0.0512927622, 0.89692378, 0.439200103, 0.922532856, -0.210988566, 0.323136091)
            },
        
            [290] = {
                ["fov"] = 26.333333333333332,
                ["cframe"] = CFrame.new(-1.62047386, 138.743164, 1.10917735, 0.274826765, 0.369340956, -0.887726009, 0.0396896452, 0.918133199, 0.394279242, 0.960674226, -0.143592045, 0.237668574)
            },
        
            [291] = {
                ["fov"] = 25,
                ["cframe"] = CFrame.new(-1.68233395, 138.477478, 0.777900457, 0.16420804, 0.341776729, -0.925323963, 0.0225052834, 0.936515152, 0.34990409, 0.986168981, -0.0782817304, 0.146091521)
            },
        
            [292] = {
                ["fov"] = 25,
                ["cframe"] = CFrame.new(-1.74419403, 138.211792, 0.446623564, 0.0523152985, 0.306327254, -0.950487614, 0, 0.951791048, 0.306747288, 0.998630702, -0.0160475764, 0.0497932211)
            },
        
            [293] = {
                ["fov"] = 25,
                ["cframe"] = CFrame.new(-1.70793438, 138.101959, 0.309906721, 0.00146126281, 0.259243667, -0.965811014, 0.0117512718, 0.96574074, 0.259242624, 0.999930024, -0.0117283762, -0.00163525343)
            },
        
            [294] = {
                ["fov"] = 25,
                ["cframe"] = CFrame.new(-1.67167568, 137.992111, 0.173189878, -0.0499120802, 0.211368501, -0.97613126, 0.0209544525, 0.977355838, 0.210562229, 0.998533785, -0.00994471461, -0.0532109737)
            },
        
            [295] = {
                ["fov"] = 25,
                ["cframe"] = CFrame.new(-1.63541603, 137.882278, 0.0364727974, -0.10154099, 0.162948281, -0.981395543, 0.0275622308, 0.986576557, 0.16095677, 0.994449437, -0.0107057318, -0.104669154)
            },
        
            [296] = {
                ["fov"] = 25,
                ["cframe"] = CFrame.new(-1.59915638, 137.772446, -0.100244284, -0.153159797, 0.11423216, -0.98157692, 0.0315405354, 0.993355334, 0.110681489, 0.987698078, -0.0140075199, -0.155745029)
            },
        
            [297] = {
                ["fov"] = 25,
                ["cframe"] = CFrame.new(-1.56289768, 137.662598, -0.236961126, -0.204502121, 0.06547077, -0.97667408, 0.0328689069, 0.997657359, 0.0599950664, 0.978314042, -0.0198330842, -0.206175029)
            },
        
            [298] = {
                ["fov"] = 25,
                ["cframe"] = CFrame.new(-1.52663803, 137.552765, -0.373677969, -0.255304664, 0.0169150941, -0.966712713, 0.0315405279, 0.999460459, 0.00915838592, 0.966346145, -0.0281524491, -0.255700469)
            },
        
            [299] = {
                ["fov"] = 25,
                ["cframe"] = CFrame.new(-1.48503208, 137.489899, -0.45378685, -0.286430568, -0.00790001731, -0.958068371, 0.0306571983, 0.999378383, -0.0174061358, 0.957610369, -0.0343573429, -0.286010325)
            },
        
            [300] = {
                ["fov"] = 25,
                ["cframe"] = CFrame.new(-1.44342709, 137.427017, -0.533895731, -0.317232281, -0.0324964151, -0.94779104, 0.0289159827, 0.998616576, -0.0439174287, 0.947907031, -0.0413383283, -0.315853775)
            },
        
            [301] = {
                ["fov"] = 25,
                ["cframe"] = CFrame.new(-1.40182114, 137.364151, -0.61400485, -0.347656488, -0.0568322837, -0.935897827, 0.0263198316, 0.997176468, -0.0703304037, 0.937252283, -0.0490835123, -0.345179021)
            },
        
            [302] = {
                ["fov"] = 25,
                ["cframe"] = CFrame.new(-1.36021614, 137.30127, -0.694113731, -0.377652943, -0.0808662921, -0.922409356, 0.0228731688, 0.995060384, -0.096600242, 0.925664723, -0.0575797781, -0.373937845)
            },
        
            [303] = {
                ["fov"] = 25,
                ["cframe"] = CFrame.new(-1.31861019, 137.238403, -0.774222612, -0.407169253, -0.104557559, -0.907348216, 0.018581856, 0.992272079, -0.122682229, 0.913163602, -0.0668126494, -0.402079761)
            },
        
            [304] = {
                ["fov"] = 25,
                ["cframe"] = CFrame.new(-1.27700424, 137.175537, -0.854331732, -0.436156541, -0.127865851, -0.890740395, 0.0134531669, 0.988816082, -0.148532093, 0.899770617, -0.0767664686, -0.429558396)
            },
        
            [305] = {
                ["fov"] = 25,
                ["cframe"] = CFrame.new(-1.23539925, 137.112656, -0.934440613, -0.464564025, -0.150751472, -0.87261349, 0.00749583542, 0.984698415, -0.174105763, 0.885507882, -0.0874242485, -0.456325471)
            },
        
            [306] = {
                ["fov"] = 25,
                ["cframe"] = CFrame.new(-1.1937933, 137.049789, -1.01454949, -0.492344588, -0.173175633, -0.852998853, 0.000719986856, 0.979926109, -0.199359953, 0.870400071, -0.0987679362, -0.482336581)
            },
        
            [307] = {
                ["fov"] = 25,
                ["cframe"] = CFrame.new(-1.1520586, 137.03566, -1.03543925, -0.502043962, -0.173721641, -0.84721458, 0.000818036497, 0.979521871, -0.201336056, 0.8648417, -0.101772606, -0.491620898)
            },
        
            [308] = {
                ["fov"] = 25,
                ["cframe"] = CFrame.new(-1.11032295, 137.021515, -1.05632901, -0.511681676, -0.174233407, -0.841323137, 0.00089354068, 0.97911346, -0.203312486, 0.859174609, -0.104783028, -0.500838757)
            },
        
            [309] = {
                ["fov"] = 25,
                ["cframe"] = CFrame.new(-1.06858826, 137.007385, -1.07721853, -0.52125603, -0.17471081, -0.83532542, 0.000946469605, 0.978700936, -0.205288857, 0.853399932, -0.107798636, -0.509988427)
            },
        
            [310] = {
                ["fov"] = 25,
                ["cframe"] = CFrame.new(-1.02685261, 136.99324, -1.09810829, -0.53076452, -0.175153717, -0.829222441, 0.000976830721, 0.978284419, -0.207264781, 0.847518563, -0.110818841, -0.519067526)
            },
        
            [311] = {
                ["fov"] = 25,
                ["cframe"] = CFrame.new(-0.985117912, 136.979111, -1.11899805, -0.540206134, -0.175562099, -0.823015809, 0.000984609127, 0.977863848, -0.209239841, 0.841531992, -0.113843016, -0.528075218)
            },
        
            [312] = {
                ["fov"] = 25,
                ["cframe"] = CFrame.new(-0.94108963, 136.952957, -1.13723159, -0.549776614, -0.176126629, -0.816532671, 0.00107333809, 0.977368414, -0.211541712, 0.835311353, -0.117177039, -0.537145257)
            },
        
            [313] = {
                ["fov"] = 25,
                ["cframe"] = CFrame.new(-0.897061348, 136.926819, -1.15546513, -0.559275031, -0.176652014, -0.809941769, 0.00113517791, 0.976867318, -0.213843107, 0.828981519, -0.120516531, -0.546137035)
            },
        
            [314] = {
                ["fov"] = 25,
                ["cframe"] = CFrame.new(-0.853033066, 136.900665, -1.17369866, -0.56870079, -0.177138329, -0.803244233, 0.00117013603, 0.976360798, -0.216143936, 0.822543621, -0.123861134, -0.555049896)
            },
        
            [315] = {
                ["fov"] = 25,
                ["cframe"] = CFrame.new(-0.809005737, 136.874512, -1.1919322, -0.578052521, -0.177585468, -0.796441138, 0.00117820501, 0.975848854, -0.218443781, 0.815998614, -0.127210379, -0.563882649)
            },
        
            [316] = {
                ["fov"] = 25,
                ["cframe"] = CFrame.new(-0.764977455, 136.848358, -1.21016574, -0.587329209, -0.177993372, -0.789533317, 0.00115936995, 0.975331426, -0.22074239, 0.809347332, -0.13056381, -0.57263428)
            },
        
            [317] = {
                ["fov"] = 25,
                ["cframe"] = CFrame.new(-0.720949173, 136.822205, -1.22839928, -0.596529245, -0.178361982, -0.782521605, 0.00111366063, 0.974808812, -0.223039433, 0.802590728, -0.133920982, -0.581303298)
            },
        
            [318] = {
                ["fov"] = 25,
                ["cframe"] = CFrame.new(-0.676920891, 136.796066, -1.24663281, -0.605651379, -0.178691298, -0.775407195, 0.00104106218, 0.974280894, -0.225334585, 0.795729756, -0.137281418, -0.589888513)
            },
        
            [319] = {
                ["fov"] = 25,
                ["cframe"] = CFrame.new(-0.632892609, 136.769913, -1.26486635, -0.614694357, -0.178981125, -0.768190503, 0.000941559672, 0.973747849, -0.227627456, 0.788764834, -0.14064461, -0.598388791)
            },
        
            [320] = {
                ["fov"] = 25,
                ["cframe"] = CFrame.new(-0.58657074, 136.73175, -1.28044367, -0.623839259, -0.179403722, -0.760683358, 0.000901050866, 0.973131657, -0.230247647, 0.781552374, -0.144322902, -0.60691607)
            },
        
            [321] = {
                ["fov"] = 25,
                ["cframe"] = CFrame.new(-0.540249825, 136.693573, -1.29602098, -0.632901013, -0.179782227, -0.753070533, 0.000829190016, 0.97250849, -0.232866049, 0.774232686, -0.148005515, -0.615352511)
            },
        
            [322] = {
                ["fov"] = 25,
                ["cframe"] = CFrame.new(-0.493927956, 136.655411, -1.3115983, -0.641877472, -0.180116475, -0.74535352, 0.000725977123, 0.971878409, -0.235482007, 0.766807258, -0.151691645, -0.623696148)
            },
        
            [323] = {
                ["fov"] = 25,
                ["cframe"] = CFrame.new(-0.44760704, 136.617233, -1.32717586, -0.65076679, -0.180406392, -0.737533808, 0.000591404736, 0.971241713, -0.238094971, 0.759277463, -0.155380473, -0.631945193)
            },
        
            [324] = {
                ["fov"] = 25,
                ["cframe"] = CFrame.new(-0.401285172, 136.579071, -1.34275317, -0.659567237, -0.180652007, -0.729613483, 0.000425517559, 0.97059834, -0.240704447, 0.751645386, -0.159071237, -0.640098035)
            },
        
            [325] = {
                ["fov"] = 25,
                ["cframe"] = CFrame.new(-0.354964256, 136.540894, -1.35833049, -0.668277144, -0.180853218, -0.721593976, 0.000228375196, 0.96994859, -0.243309885, 0.743912458, -0.162763208, -0.648153126)
            },
        
            [326] = {
                ["fov"] = 25.636618047942225,
                ["cframe"] = CFrame.new(-0.308642387, 136.502731, -1.3739078, -0.676894188, -0.181010023, -0.713477194, 7.4505806e-09, 0.969292581, -0.245910674, 0.736080408, -0.166455507, -0.656108439)
            },
        
            [327] = {
                ["fov"] = 26.272088867132638,
                ["cframe"] = CFrame.new(-0.559136391, 136.233551, -1.83051753, -0.7032184, -0.181080759, -0.687527001, 0.000523887575, 0.966889441, -0.255194992, 0.710973561, -0.179818034, -0.679839611)
            },
        
            [328] = {
                ["fov"] = 26.90526729620318,
                ["cframe"] = CFrame.new(-0.809630394, 135.964355, -2.28712702, -0.72861439, -0.180649757, -0.660671473, 0.00069861114, 0.964394152, -0.264468223, 0.684923768, -0.193156898, -0.702545285)
            },
        
            [329] = {
                ["fov"] = 27.535012304827738,
                ["cframe"] = CFrame.new(-1.0601244, 135.69516, -2.74373674, -0.753046513, -0.179717585, -0.632948101, 0.000523895025, 0.961810112, -0.273717165, 0.657967627, -0.206453249, -0.724193573)
            },
        
            [330] = {
                ["fov"] = 28.160189049935894,
                ["cframe"] = CFrame.new(-1.3106184, 135.42598, -3.20034623, -0.776479185, -0.178285405, -0.604395926, 0, 0.959141016, -0.282928497, 0.630142987, -0.219688088, -0.744752944)
            },
        
            [331] = {
                ["fov"] = 28.779670920776876,
                ["cframe"] = CFrame.new(-1.54128838, 135.227112, -3.43078184, -0.742426634, -0.189307377, -0.642624021, 1.80602074e-05, 0.95923841, -0.282598078, 0.669927597, -0.209819913, -0.712160707)
            },
        
            [332] = {
                ["fov"] = 29.392341569148257,
                ["cframe"] = CFrame.new(-1.7719593, 135.028259, -3.66121745, -0.706337988, -0.199797645, -0.679093599, 1.80900097e-05, 0.959335804, -0.282267213, 0.707875133, -0.199388251, -0.677611768)
            },
        
            [333] = {
                ["fov"] = 29.99709692113086,
                ["cframe"] = CFrame.new(-2.00262928, 134.829391, -3.89165306, -0.668311954, -0.209727347, -0.713704109, 2.98023259e-08, 0.959433019, -0.281936646, 0.743881166, -0.188421652, -0.641200542)
            },
        
            [334] = {
                ["fov"] = 30.59284716670463,
                ["cframe"] = CFrame.new(-1.88684368, 134.699707, -4.00747347, -0.722595513, -0.202995569, -0.660793781, 0.000481925905, 0.955763161, -0.294137031, 0.691270828, -0.212860554, -0.690532327)
            },
        
            [335] = {
                ["fov"] = 31.17851872365989,
                ["cframe"] = CFrame.new(-1.77105808, 134.570023, -4.12329388, -0.77275002, -0.194405302, -0.604205251, 0, 0.951938391, -0.306289732, 0.634710491, -0.236685395, -0.735610366)
            },
        
            [336] = {
                ["fov"] = 31.753056172265097,
                ["cframe"] = CFrame.new(-1.82791138, 134.488678, -4.28182888, -0.763953805, -0.204707444, -0.611939132, -0.000155933201, 0.948402941, -0.317067504, 0.645271003, -0.242129505, -0.72456795)
            },
        
            [337] = {
                ["fov"] = 32.31542415720452,
                ["cframe"] = CFrame.new(-1.88476372, 134.407349, -4.44036436, -0.755012274, -0.215057582, -0.619441211, -0.000155933201, 0.944744885, -0.327806503, 0.655711234, -0.247401208, -0.713327587)
            },
        
            [338] = {
                ["fov"] = 32.86460925335847,
                ["cframe"] = CFrame.new(-1.94161701, 134.326004, -4.59889936, -0.745928705, -0.225450635, -0.626707673, 0, 0.94096601, -0.338501304, 0.666025877, -0.252497852, -0.701893508)
            },
        
            [339] = {
                ["fov"] = 33.39962179206393,
                ["cframe"] = CFrame.new(-2.17584038, 134.218613, -4.86012459, -0.755526066, -0.216991946, -0.618138731, -0.000114113092, 0.94359529, -0.33110109, 0.655119002, -0.250084847, -0.712935567)
            },
        
            [340] = {
                ["fov"] = 33.9194976445643,
                ["cframe"] = CFrame.new(-2.41006374, 134.111206, -5.12134933, -0.76496464, -0.20855543, -0.609372079, -0.000114113092, 0.946166933, -0.32367906, 0.644072711, -0.247533411, -0.72380805)
            },
        
            [341] = {
                ["fov"] = 34.42329995943464,
                ["cframe"] = CFrame.new(-2.64428711, 134.003815, -5.38257408, -0.774240494, -0.200144604, -0.600411415, 0, 0.948679805, -0.316238403, 0.632891536, -0.244844571, -0.734506309)
            },
        
            [342] = {
                ["fov"] = 34.91012085085122,
                ["cframe"] = CFrame.new(-2.66130638, 133.962219, -5.49416971, -0.773248553, -0.202106133, -0.601032555, -4.11272049e-06, 0.947848022, -0.318722725, 0.634103358, -0.246449351, -0.732922971)
            },
        
            [343] = {
                ["fov"] = 35.379083034663196,
                ["cframe"] = CFrame.new(-2.67832565, 133.920639, -5.60576534, -0.772254229, -0.20406875, -0.601647019, -4.09036875e-06, 0.947009742, -0.321204841, 0.635313511, -0.248049378, -0.731333077)
            },
        
            [344] = {
                ["fov"] = 35.82934140931786,
                ["cframe"] = CFrame.new(-2.69534492, 133.879044, -5.71736097, -0.771258414, -0.206032515, -0.602254987, 0, 0.946165085, -0.323684782, 0.636522114, -0.249644607, -0.729737818)
            },
        
            [345] = {
                ["fov"] = 36.26008457879087,
                ["cframe"] = CFrame.new(-2.72092819, 133.848404, -5.7664547, -0.774111211, -0.205633312, -0.598720968, 1.10268593e-05, 0.945768118, -0.324842423, 0.633049667, -0.251470774, -0.732127488)
            },
        
            [346] = {
                ["fov"] = 36.67053631477659,
                ["cframe"] = CFrame.new(-2.74651051, 133.817764, -5.81554842, -0.776948273, -0.205225557, -0.595175266, 1.65179372e-05, 0.945369899, -0.325999588, 0.629564285, -0.253294677, -0.73450017)
            },
        
            [347] = {
                ["fov"] = 37.059956955504106,
                ["cframe"] = CFrame.new(-2.76016617, 133.803192, -5.83667231, -0.778255045, -0.204962164, -0.593557, 1.96024776e-05, 0.945223927, -0.326422632, 0.627948523, -0.254051626, -0.735621274)
            },
        
            [348] = {
                ["fov"] = 37.427644738657634,
                ["cframe"] = CFrame.new(-2.77382088, 133.788605, -5.85779619, -0.779558361, -0.204697147, -0.591936111, 2.1725893e-05, 0.945077777, -0.326845556, 0.626330018, -0.254807979, -0.736738861)
            },
        
            [349] = {
                ["fov"] = 37.77293706599967,
                ["cframe"] = CFrame.new(-2.78747654, 133.774033, -5.8789196, -0.780857801, -0.204430476, -0.590312779, 2.29626894e-05, 0.944931448, -0.327268392, 0.624708712, -0.255563647, -0.737852395)
            },
        
            [350] = {
                ["fov"] = 38.095211697417824,
                ["cframe"] = CFrame.new(-2.8011322, 133.75946, -5.90004349, -0.782154262, -0.20416221, -0.588687062, 2.32756138e-05, 0.94478488, -0.327691227, 0.623084784, -0.256318778, -0.73896271)
            },
        
            [351] = {
                ["fov"] = 38.393887872243525,
                ["cframe"] = CFrame.new(-2.81478691, 133.744873, -5.92116737, -0.783447325, -0.20389235, -0.587058902, 2.26125121e-05, 0.944638193, -0.328113973, 0.621458173, -0.257073283, -0.740069628)
            },
        
            [352] = {
                ["fov"] = 38.66842735582203,
                ["cframe"] = CFrame.new(-2.82844257, 133.730301, -5.94229126, -0.784736812, -0.203620881, -0.585428357, 2.10553408e-05, 0.944491267, -0.32853663, 0.61982882, -0.257827163, -0.741172731)
            },
        
            [353] = {
                ["fov"] = 38.91833540944764,
                ["cframe"] = CFrame.new(-2.84532928, 133.706665, -5.98142958, -0.785171688, -0.202978045, -0.585068464, 1.99303031e-05, 0.944750786, -0.327789485, 0.619277954, -0.257382691, -0.741787493)
            },
        
            [354] = {
                ["fov"] = 39.14316168191626,
                ["cframe"] = CFrame.new(-2.862216, 133.683029, -6.02056789, -0.785606146, -0.202335387, -0.584707737, 1.93491578e-05, 0.945009768, -0.327042162, 0.61872673, -0.256937683, -0.74240154)
            },
        
            [355] = {
                ["fov"] = 39.342501021088765,
                ["cframe"] = CFrame.new(-2.87910271, 133.659393, -6.05970669, -0.786040604, -0.201692909, -0.584346235, 1.93044543e-05, 0.945268154, -0.326294631, 0.618175209, -0.256492049, -0.74301523)
            },
        
            [356] = {
                ["fov"] = 39.51599420400248,
                ["cframe"] = CFrame.new(-2.89598846, 133.635773, -6.09884453, -0.786474228, -0.201050609, -0.583984017, 1.98408961e-05, 0.945525885, -0.32554692, 0.617623448, -0.256045759, -0.743627787)
            },
        
            [357] = {
                ["fov"] = 39.66332858421529,
                ["cframe"] = CFrame.new(-2.91287518, 133.612137, -6.13798332, -0.786907315, -0.200408489, -0.583620846, 2.09286809e-05, 0.945783138, -0.324798942, 0.617071211, -0.255598843, -0.74423945)
            },
        
            [358] = {
                ["fov"] = 39.78423865521563,
                ["cframe"] = CFrame.new(-2.92976189, 133.588501, -6.17712164, -0.787340224, -0.199766576, -0.58325702, 2.25529075e-05, 0.946039677, -0.324050754, 0.616518795, -0.255151361, -0.744850576)
            },
        
            [359] = {
                ["fov"] = 39.87850652888315,
                ["cframe"] = CFrame.new(-2.94063187, 133.573517, -6.20185184, -0.787574768, -0.199357599, -0.583080471, 2.3715198e-05, 0.946212471, -0.323545992, 0.616219342, -0.25483042, -0.745208323)
            },
        
            [360] = {
                ["fov"] = 39.945962328137895,
                ["cframe"] = CFrame.new(-2.95150089, 133.558533, -6.22658157, -0.787809014, -0.198948637, -0.582903564, 2.5048852e-05, 0.946385026, -0.323040992, 0.615919769, -0.254509181, -0.745565653)
            },
        
            [361] = {
                ["fov"] = 39.98648449307022,
                ["cframe"] = CFrame.new(-2.96237087, 133.543564, -6.25131178, -0.788043082, -0.198539734, -0.5827263, 2.66060233e-05, 0.946557224, -0.322535992, 0.615619957, -0.254187763, -0.745922565)
            },
        
            [362] = {
                ["fov"] = 40,
                ["cframe"] = CFrame.new(-2.9732399, 133.52858, -6.27604198, -0.788277447, -0.198130965, -0.582548857, 2.83494592e-05, 0.946729183, -0.322030872, 0.615320325, -0.253866106, -0.746279657)
            },
        
            [363] = {
                ["fov"] = 40,
                ["cframe"] = CFrame.new(-2.98410988, 133.513596, -6.30077171, -0.788511574, -0.197722226, -0.582371056, 3.02866101e-05, 0.946900845, -0.321525693, 0.615020454, -0.253544271, -0.746636331)
            },
        
            [364] = {
                ["fov"] = 40,
                ["cframe"] = CFrame.new(-2.99497986, 133.498627, -6.32550192, -0.788745046, -0.197313488, -0.582192898, 3.24621797e-05, 0.947072327, -0.321020305, 0.614720464, -0.253222048, -0.746992171)
            },
        
            [365] = {
                ["fov"] = 40,
                ["cframe"] = CFrame.new(-3.00584888, 133.483643, -6.35023212, -0.788978994, -0.196904868, -0.582014501, 3.47867608e-05, 0.947243452, -0.320514888, 0.614420354, -0.252899736, -0.747348368)
            },
        
            [366] = {
                ["fov"] = 40,
                ["cframe"] = CFrame.new(-3.01671886, 133.468658, -6.37496185, -0.789212406, -0.196496293, -0.581835687, 3.73572111e-05, 0.947414398, -0.320009381, 0.614120185, -0.252577156, -0.74770385)
            },
        
            [367] = {
                ["fov"] = 40,
                ["cframe"] = CFrame.new(-3.0207634, 133.463379, -6.38356352, -0.789242744, -0.196349531, -0.581844449, 3.79383564e-05, 0.94748801, -0.319791287, 0.614081502, -0.252414972, -0.747790635)
            },
        
            [368] = {
                ["fov"] = 40,
                ["cframe"] = CFrame.new(-3.02480698, 133.458115, -6.39216518, -0.789272785, -0.196202725, -0.581853092, 3.85567546e-05, 0.947561622, -0.319573104, 0.614042819, -0.252252758, -0.747877002)
            },
        
            [369] = {
                ["fov"] = 40,
                ["cframe"] = CFrame.new(-3.02885056, 133.452835, -6.40076637, -0.789302945, -0.196055934, -0.581861675, 3.91602516e-05, 0.947635174, -0.319354951, 0.614004076, -0.252090573, -0.747963548)
            },
        
            [370] = {
                ["fov"] = 40,
                ["cframe"] = CFrame.new(-3.03289509, 133.447571, -6.40936756, -0.789333284, -0.195909157, -0.581870317, 3.97861004e-05, 0.947708666, -0.319136798, 0.613965392, -0.251928329, -0.748050213)
            },
        
            [371] = {
                ["fov"] = 40,
                ["cframe"] = CFrame.new(-3.03693962, 133.442291, -6.4179697, -0.789363205, -0.195762351, -0.581878901, 4.04417515e-05, 0.947782099, -0.318918586, 0.613926649, -0.251766086, -0.748136401)
            },
        
            [372] = {
                ["fov"] = 40,
                ["cframe"] = CFrame.new(-3.0409832, 133.437012, -6.42657089, -0.789393127, -0.19561553, -0.581887305, 4.1089952e-05, 0.947855532, -0.318700314, 0.613887846, -0.251603782, -0.748222589)
            },
        
            [373] = {
                ["fov"] = 40,
                ["cframe"] = CFrame.new(-3.04502678, 133.431747, -6.43517208, -0.789423347, -0.195468724, -0.581895828, 4.17456031e-05, 0.947928905, -0.318482131, 0.613849163, -0.251441509, -0.748309016)
            },
        
            [374] = {
                ["fov"] = 40,
                ["cframe"] = CFrame.new(-3.04907131, 133.426468, -6.44377375, -0.789453745, -0.195321962, -0.581904352, 4.24236059e-05, 0.94800216, -0.318263888, 0.61381048, -0.251279235, -0.748395622)
            },
        
            [375] = {
                ["fov"] = 40,
                ["cframe"] = CFrame.new(-3.05226326, 133.422882, -6.44941902, -0.789368987, -0.195215851, -0.582054555, 4.2013824e-05, 0.948079228, -0.318034202, 0.613919199, -0.251070768, -0.748376131)
            },
        
            [376] = {
                ["fov"] = 40,
                ["cframe"] = CFrame.new(-3.05545521, 133.419296, -6.45506477, -0.789284587, -0.195109755, -0.582204878, 4.15742397e-05, 0.948156238, -0.317804605, 0.614027917, -0.25086239, -0.748357058)
            },
        
            [377] = {
                ["fov"] = 40,
                ["cframe"] = CFrame.new(-3.05864716, 133.41571, -6.46071005, -0.789199829, -0.195003569, -0.582355022, 4.11272049e-05, 0.948233187, -0.317574859, 0.614136577, -0.250653982, -0.748337448)
            },
        
            [378] = {
                ["fov"] = 40,
                ["cframe"] = CFrame.new(-3.06184006, 133.412109, -6.46635532, -0.789115429, -0.194897383, -0.582505226, 4.0628016e-05, 0.948310077, -0.317345172, 0.614245296, -0.250445575, -0.748318255)
            },
        
            [379] = {
                ["fov"] = 40,
                ["cframe"] = CFrame.new(-3.06503201, 133.408524, -6.47200108, -0.789030671, -0.194791153, -0.582655311, 4.01139259e-05, 0.948386908, -0.317115515, 0.614354014, -0.250237197, -0.748298526)
            },
        
            [380] = {
                ["fov"] = 40,
                ["cframe"] = CFrame.new(-3.06822395, 133.404938, -6.47764587, -0.788945913, -0.194684848, -0.582805395, 3.95476818e-05, 0.948463678, -0.31688574, 0.614462614, -0.250028759, -0.748278856)
            },
        
            [381] = {
                ["fov"] = 40,
                ["cframe"] = CFrame.new(-3.0714159, 133.401352, -6.48329163, -0.788861215, -0.194578528, -0.58295542, 3.89441848e-05, 0.94854039, -0.316655993, 0.614571273, -0.249820352, -0.748259187)
            },
        
            [382] = {
                ["fov"] = 40,
                ["cframe"] = CFrame.new(-3.07600403, 133.39653, -6.49072695, -0.788675308, -0.194431335, -0.583256364, 3.73646617e-05, 0.948661983, -0.31629166, 0.614810109, -0.249473184, -0.748179018)
            },
        
            [383] = {
                ["fov"] = 40,
                ["cframe"] = CFrame.new(-3.08059216, 133.391724, -6.49816227, -0.788489163, -0.194284022, -0.58355701, 3.56510282e-05, 0.948783398, -0.315927267, 0.615048885, -0.249126002, -0.748098552)
            },
        
            [384] = {
                ["fov"] = 40,
                ["cframe"] = CFrame.new(-3.08518028, 133.386902, -6.50559759, -0.788302839, -0.194136575, -0.583857656, 3.38107347e-05, 0.948904693, -0.315562814, 0.615287542, -0.24877879, -0.748017669)
            },
        
            [385] = {
                ["fov"] = 40,
                ["cframe"] = CFrame.new(-3.08976746, 133.38208, -6.51303291, -0.788116515, -0.193988964, -0.584158123, 3.18586826e-05, 0.94902581, -0.315198332, 0.61552614, -0.248431608, -0.747936726)
            },
        
            [386] = {
                ["fov"] = 40,
                ["cframe"] = CFrame.new(-3.09435558, 133.377258, -6.52046871, -0.787930429, -0.193841293, -0.58445859, 2.98023224e-05, 0.949146807, -0.314833879, 0.615764856, -0.2480845, -0.747855902)
            },
        
            [387] = {
                ["fov"] = 40,
                ["cframe"] = CFrame.new(-3.09894371, 133.372437, -6.52790356, -0.787743747, -0.19369337, -0.584758818, 2.76193023e-05, 0.949267685, -0.314469188, 0.616003215, -0.247737259, -0.747774363)
            },
        
            [388] = {
                ["fov"] = 40,
                ["cframe"] = CFrame.new(-3.10353184, 133.36763, -6.53533936, -0.787557483, -0.193545401, -0.585058987, 2.53021717e-05, 0.949388385, -0.314104587, 0.616241753, -0.247390121, -0.747693062)
            },
        
            [389] = {
                ["fov"] = 40.01137915339099,
                ["cframe"] = CFrame.new(-3.10811996, 133.362808, -6.5427742, -0.787370741, -0.193397254, -0.585359037, 2.29254365e-05, 0.949508965, -0.313739896, 0.616480052, -0.247042954, -0.747611165)
            },
        
            [390] = {
                ["fov"] = 40.0910332271279,
                ["cframe"] = CFrame.new(-3.10760403, 133.363083, -6.54212093, -0.787370145, -0.193396851, -0.58536011, 2.29030848e-05, 0.949509323, -0.313738793, 0.616481006, -0.247041866, -0.747610927)
            },
        
            [391] = {
                ["fov"] = 40.30723714155667,
                ["cframe"] = CFrame.new(-3.10398865, 133.364944, -6.53754902, -0.787365198, -0.193393916, -0.585367441, 2.28360295e-05, 0.949511945, -0.313730866, 0.616487026, -0.247034103, -0.747608244)
            },
        
            [392] = {
                ["fov"] = 40.728265817023214,
                ["cframe"] = CFrame.new(-3.09417725, 133.370026, -6.52513933, -0.787352324, -0.193386048, -0.585387528, 2.26721168e-05, 0.949519038, -0.313709497, 0.616503656, -0.247013107, -0.747601628)
            },
        
            [393] = {
                ["fov"] = 41.422394173873464,
                ["cframe"] = CFrame.new(-3.07506943, 133.379929, -6.50097275, -0.78732729, -0.193370715, -0.585426509, 2.23219395e-05, 0.949532807, -0.313667834, 0.616535842, -0.246972203, -0.747588813)
            },
        
            [394] = {
                ["fov"] = 42.45789713245335,
                ["cframe"] = CFrame.new(-3.04356861, 133.39624, -6.46113062, -0.787285686, -0.193345383, -0.585490644, 2.17556953e-05, 0.949555457, -0.31359911, 0.616588771, -0.246904746, -0.747567236)
            },
        
            [395] = {
                ["fov"] = 43.903049613108784,
                ["cframe"] = CFrame.new(-2.99657536, 133.420563, -6.4016943, -0.787223518, -0.193307608, -0.585586429, 2.09286809e-05, 0.949589312, -0.31349659, 0.616667867, -0.246804118, -0.74753499)
            },
        
            [396] = {
                ["fov"] = 45.82612653618571,
                ["cframe"] = CFrame.new(-2.93099117, 133.454529, -6.31874371, -0.787137151, -0.193254888, -0.585720241, 1.97514892e-05, 0.949636579, -0.313353509, 0.616778433, -0.24666366, -0.747490406)
            },
        
            [397] = {
                ["fov"] = 48.29540282203004,
                ["cframe"] = CFrame.new(-2.84371758, 133.499725, -6.20836163, -0.787021697, -0.193184659, -0.585897982, 1.81347132e-05, 0.949699402, -0.313163072, 0.616925299, -0.246476784, -0.747430503)
            },
        
            [398] = {
                ["fov"] = 51.37915339098771,
                ["cframe"] = CFrame.new(-2.73165703, 133.557755, -6.0666275, -0.786873937, -0.193094477, -0.586126387, 1.60187483e-05, 0.949779928, -0.312918663, 0.617113888, -0.24623692, -0.747353971)
            },
        
            [399] = {
                ["fov"] = 55.145653163404646,
                ["cframe"] = CFrame.new(-2.59170914, 133.630219, -5.88962412, -0.786689281, -0.19298169, -0.586411417, 1.3269484e-05, 0.94988054, -0.312613249, 0.617349446, -0.245937228, -0.747258246)
            },
        
            [400] = {
                ["fov"] = 59.66317705962676,
                ["cframe"] = CFrame.new(-2.42077732, 133.718735, -5.6734314, -0.786463618, -0.19284384, -0.586759567, 9.7900629e-06, 0.950003147, -0.312240303, 0.617637038, -0.2455713, -0.747141004)
            },
        
            [401] = {
                ["fov"] = 65,
                ["cframe"] = CFrame.new(-2.21576214, 133.82489, -5.41413069, -0.786192596, -0.192678198, -0.5871768, 5.42402267e-06, 0.950150132, -0.311792791, 0.617981791, -0.245132327, -0.746999919)
            },
        
            [402] = {
                ["fov"] = 37.427644738657634,
                ["cframe"] = CFrame.new(-1.97356606, 133.950302, -5.10780334, -0.785872221, -0.192482278, -0.587669492, -1.49011612e-08, 0.950323462, -0.311264098, 0.618388891, -0.244613796, -0.746832788)
            },
        
            [403] = {
                ["fov"] = 37.77293706599967,
                ["cframe"] = CFrame.new(-2.78747654, 133.774033, -5.8789196, -0.780857801, -0.204430476, -0.590312779, 2.29626894e-05, 0.944931448, -0.327268392, 0.624708712, -0.255563647, -0.737852395)
            },
        
            [404] = {
                ["fov"] = 37.77293706599967,
                ["cframe"] = CFrame.new(-2.8011322, 133.75946, -5.90004349, -0.782154262, -0.20416221, -0.588687062, 2.32756138e-05, 0.94478488, -0.327691227, 0.623084784, -0.256318778, -0.73896271)
            },
        
            [405] = {
                ["fov"] = 37.77293706599967,
                ["cframe"] = CFrame.new(-2.81478691, 133.744873, -5.92116737, -0.783447325, -0.20389235, -0.587058902, 2.26125121e-05, 0.944638193, -0.328113973, 0.621458173, -0.257073283, -0.740069628)
            },
        
            [406] = {
                ["fov"] = 37.77293706599967,
                ["cframe"] = CFrame.new(-2.82844257, 133.730301, -5.94229126, -0.784736812, -0.203620881, -0.585428357, 2.10553408e-05, 0.944491267, -0.32853663, 0.61982882, -0.257827163, -0.741172731)
            },
        
            [407] = {
                ["fov"] = 37.77293706599967,
                ["cframe"] = CFrame.new(-2.84532928, 133.706665, -5.98142958, -0.785171688, -0.202978045, -0.585068464, 1.99303031e-05, 0.944750786, -0.327789485, 0.619277954, -0.257382691, -0.741787493)
            },
        
            [408] = {
                ["fov"] = 37.77293706599967,
                ["cframe"] = CFrame.new(-2.862216, 133.683029, -6.02056789, -0.785606146, -0.202335387, -0.584707737, 1.93491578e-05, 0.945009768, -0.327042162, 0.61872673, -0.256937683, -0.74240154)
            },
        
            [409] = {
                ["fov"] = 37.77293706599967,
                ["cframe"] = CFrame.new(-2.87910271, 133.659393, -6.05970669, -0.786040604, -0.201692909, -0.584346235, 1.93044543e-05, 0.945268154, -0.326294631, 0.618175209, -0.256492049, -0.74301523)
            },
        
            [410] = {
                ["fov"] = 37.77293706599967,
                ["cframe"] = CFrame.new(-2.89598846, 133.635773, -6.09884453, -0.786474228, -0.201050609, -0.583984017, 1.98408961e-05, 0.945525885, -0.32554692, 0.617623448, -0.256045759, -0.743627787)
            },
        
            [411] = {
                ["fov"] = 37.77293706599967,
                ["cframe"] = CFrame.new(-2.91287518, 133.612137, -6.13798332, -0.786907315, -0.200408489, -0.583620846, 2.09286809e-05, 0.945783138, -0.324798942, 0.617071211, -0.255598843, -0.74423945)
            },
        
            [412] = {
                ["fov"] = 37.77293706599967,
                ["cframe"] = CFrame.new(-2.92976189, 133.588501, -6.17712164, -0.787340224, -0.199766576, -0.58325702, 2.25529075e-05, 0.946039677, -0.324050754, 0.616518795, -0.255151361, -0.744850576)
            },
        
            [413] = {
                ["fov"] = 37.77293706599967,
                ["cframe"] = CFrame.new(-2.94063187, 133.573517, -6.20185184, -0.787574768, -0.199357599, -0.583080471, 2.3715198e-05, 0.946212471, -0.323545992, 0.616219342, -0.25483042, -0.745208323)
            },
        
            [414] = {
                ["fov"] = 37.77293706599967,
                ["cframe"] = CFrame.new(-2.95150089, 133.558533, -6.22658157, -0.787809014, -0.198948637, -0.582903564, 2.5048852e-05, 0.946385026, -0.323040992, 0.615919769, -0.254509181, -0.745565653)
            },
        
            [415] = {
                ["fov"] = 37.77293706599967,
                ["cframe"] = CFrame.new(-2.96237087, 133.543564, -6.25131178, -0.788043082, -0.198539734, -0.5827263, 2.66060233e-05, 0.946557224, -0.322535992, 0.615619957, -0.254187763, -0.745922565)
            },
        
            [416] = {
                ["fov"] = 37.77293706599967,
                ["cframe"] = CFrame.new(-2.9732399, 133.52858, -6.27604198, -0.788277447, -0.198130965, -0.582548857, 2.83494592e-05, 0.946729183, -0.322030872, 0.615320325, -0.253866106, -0.746279657)
            },
        
            [417] = {
                ["fov"] = 37.77293706599967,
                ["cframe"] = CFrame.new(-2.98410988, 133.513596, -6.30077171, -0.788511574, -0.197722226, -0.582371056, 3.02866101e-05, 0.946900845, -0.321525693, 0.615020454, -0.253544271, -0.746636331)
            },
        
            [418] = {
                ["fov"] = 37.77293706599967,
                ["cframe"] = CFrame.new(-2.99497986, 133.498627, -6.32550192, -0.788745046, -0.197313488, -0.582192898, 3.24621797e-05, 0.947072327, -0.321020305, 0.614720464, -0.253222048, -0.746992171)
            },
        
            [419] = {
                ["fov"] = 37.77293706599967,
                ["cframe"] = CFrame.new(-3.00584888, 133.483643, -6.35023212, -0.788978994, -0.196904868, -0.582014501, 3.47867608e-05, 0.947243452, -0.320514888, 0.614420354, -0.252899736, -0.747348368)
            },
        
            [420] = {
                ["fov"] = 37.77293706599967,
                ["cframe"] = CFrame.new(-3.01671886, 133.468658, -6.37496185, -0.789212406, -0.196496293, -0.581835687, 3.73572111e-05, 0.947414398, -0.320009381, 0.614120185, -0.252577156, -0.74770385)
            },
        
            [421] = {
                ["fov"] = 37.77293706599967,
                ["cframe"] = CFrame.new(-3.0207634, 133.463379, -6.38356352, -0.789242744, -0.196349531, -0.581844449, 3.79383564e-05, 0.94748801, -0.319791287, 0.614081502, -0.252414972, -0.747790635)
            },
        
            [422] = {
                ["fov"] = 37.77293706599967,
                ["cframe"] = CFrame.new(-3.02480698, 133.458115, -6.39216518, -0.789272785, -0.196202725, -0.581853092, 3.85567546e-05, 0.947561622, -0.319573104, 0.614042819, -0.252252758, -0.747877002)
            },
        
            [423] = {
                ["fov"] = 37.77293706599967,
                ["cframe"] = CFrame.new(-3.02885056, 133.452835, -6.40076637, -0.789302945, -0.196055934, -0.581861675, 3.91602516e-05, 0.947635174, -0.319354951, 0.614004076, -0.252090573, -0.747963548)
            },
        
            [424] = {
                ["fov"] = 37.77293706599967,
                ["cframe"] = CFrame.new(-3.03289509, 133.447571, -6.40936756, -0.789333284, -0.195909157, -0.581870317, 3.97861004e-05, 0.947708666, -0.319136798, 0.613965392, -0.251928329, -0.748050213)
            },
        
            [425] = {
                ["fov"] = 37.77293706599967,
                ["cframe"] = CFrame.new(-3.03693962, 133.442291, -6.4179697, -0.789363205, -0.195762351, -0.581878901, 4.04417515e-05, 0.947782099, -0.318918586, 0.613926649, -0.251766086, -0.748136401)
            },
        
            [426] = {
                ["fov"] = 37.77293706599967,
                ["cframe"] = CFrame.new(-3.0409832, 133.437012, -6.42657089, -0.789393127, -0.19561553, -0.581887305, 4.1089952e-05, 0.947855532, -0.318700314, 0.613887846, -0.251603782, -0.748222589)
            },
        
            [427] = {
                ["fov"] = 37.77293706599967,
                ["cframe"] = CFrame.new(-3.04502678, 133.431747, -6.43517208, -0.789423347, -0.195468724, -0.581895828, 4.17456031e-05, 0.947928905, -0.318482131, 0.613849163, -0.251441509, -0.748309016)
            },
        
            [428] = {
                ["fov"] = 37.77293706599967,
                ["cframe"] = CFrame.new(-3.04907131, 133.426468, -6.44377375, -0.789453745, -0.195321962, -0.581904352, 4.24236059e-05, 0.94800216, -0.318263888, 0.61381048, -0.251279235, -0.748395622)
            },
        
            [429] = {
                ["fov"] = 37.77293706599967,
                ["cframe"] = CFrame.new(-3.05226326, 133.422882, -6.44941902, -0.789368987, -0.195215851, -0.582054555, 4.2013824e-05, 0.948079228, -0.318034202, 0.613919199, -0.251070768, -0.748376131)
            },
        
            [430] = {
                ["fov"] = 37.77293706599967,
                ["cframe"] = CFrame.new(-3.05545521, 133.419296, -6.45506477, -0.789284587, -0.195109755, -0.582204878, 4.15742397e-05, 0.948156238, -0.317804605, 0.614027917, -0.25086239, -0.748357058)
            },
        
            [431] = {
                ["fov"] = 37.77293706599967,
                ["cframe"] = CFrame.new(-3.05864716, 133.41571, -6.46071005, -0.789199829, -0.195003569, -0.582355022, 4.11272049e-05, 0.948233187, -0.317574859, 0.614136577, -0.250653982, -0.748337448)
            },
        
            [432] = {
                ["fov"] = 37.77293706599967,
                ["cframe"] = CFrame.new(-3.06184006, 133.412109, -6.46635532, -0.789115429, -0.194897383, -0.582505226, 4.0628016e-05, 0.948310077, -0.317345172, 0.614245296, -0.250445575, -0.748318255)
            },
        
            [433] = {
                ["fov"] = 37.77293706599967,
                ["cframe"] = CFrame.new(-3.06503201, 133.408524, -6.47200108, -0.789030671, -0.194791153, -0.582655311, 4.01139259e-05, 0.948386908, -0.317115515, 0.614354014, -0.250237197, -0.748298526)
            },
        
            [434] = {
                ["fov"] = 37.77293706599967,
                ["cframe"] = CFrame.new(-3.06822395, 133.404938, -6.47764587, -0.788945913, -0.194684848, -0.582805395, 3.95476818e-05, 0.948463678, -0.31688574, 0.614462614, -0.250028759, -0.748278856)
            },
        
            [435] = {
                ["fov"] = 37.77293706599967,
                ["cframe"] = CFrame.new(-3.0714159, 133.401352, -6.48329163, -0.788861215, -0.194578528, -0.58295542, 3.89441848e-05, 0.94854039, -0.316655993, 0.614571273, -0.249820352, -0.748259187)
            },
        
            [436] = {
                ["fov"] = 37.77293706599967,
                ["cframe"] = CFrame.new(-3.07600403, 133.39653, -6.49072695, -0.788675308, -0.194431335, -0.583256364, 3.73646617e-05, 0.948661983, -0.31629166, 0.614810109, -0.249473184, -0.748179018)
            },
        
            [437] = {
                ["fov"] = 37.77293706599967,
                ["cframe"] = CFrame.new(-3.08059216, 133.391724, -6.49816227, -0.788489163, -0.194284022, -0.58355701, 3.56510282e-05, 0.948783398, -0.315927267, 0.615048885, -0.249126002, -0.748098552)
            },
        
            [438] = {
                ["fov"] = 37.77293706599967,
                ["cframe"] = CFrame.new(-3.08518028, 133.386902, -6.50559759, -0.788302839, -0.194136575, -0.583857656, 3.38107347e-05, 0.948904693, -0.315562814, 0.615287542, -0.24877879, -0.748017669)
            },
        
            [439] = {
                ["fov"] = 37.77293706599967,
                ["cframe"] = CFrame.new(-3.08976746, 133.38208, -6.51303291, -0.788116515, -0.193988964, -0.584158123, 3.18586826e-05, 0.94902581, -0.315198332, 0.61552614, -0.248431608, -0.747936726)
            },
        
            [440] = {
                ["fov"] = 37.77293706599967,
                ["cframe"] = CFrame.new(-3.09435558, 133.377258, -6.52046871, -0.787930429, -0.193841293, -0.58445859, 2.98023224e-05, 0.949146807, -0.314833879, 0.615764856, -0.2480845, -0.747855902)
            },
        
            [441] = {
                ["fov"] = 37.77293706599967,
                ["cframe"] = CFrame.new(-3.09894371, 133.372437, -6.52790356, -0.787743747, -0.19369337, -0.584758818, 2.76193023e-05, 0.949267685, -0.314469188, 0.616003215, -0.247737259, -0.747774363)
            },
        
            [442] = {
                ["fov"] = 37.77293706599967,
                ["cframe"] = CFrame.new(-3.10353184, 133.36763, -6.53533936, -0.787557483, -0.193545401, -0.585058987, 2.53021717e-05, 0.949388385, -0.314104587, 0.616241753, -0.247390121, -0.747693062)
            },
        
            [443] = {
                ["fov"] = 37.77293706599967,
                ["cframe"] = CFrame.new(-3.10811996, 133.362808, -6.5427742, -0.787370741, -0.193397254, -0.585359037, 2.29254365e-05, 0.949508965, -0.313739896, 0.616480052, -0.247042954, -0.747611165)
            },
        
            [444] = {
                ["fov"] = 37.77293706599967,
                ["cframe"] = CFrame.new(-3.10760403, 133.363083, -6.54212093, -0.787370145, -0.193396851, -0.58536011, 2.29030848e-05, 0.949509323, -0.313738793, 0.616481006, -0.247041866, -0.747610927)
            },
        
            [445] = {
                ["fov"] = 37.77293706599967,
                ["cframe"] = CFrame.new(-3.10398865, 133.364944, -6.53754902, -0.787365198, -0.193393916, -0.585367441, 2.28360295e-05, 0.949511945, -0.313730866, 0.616487026, -0.247034103, -0.747608244)
            },
        
            [446] = {
                ["fov"] = 37.77293706599967,
                ["cframe"] = CFrame.new(-3.09417725, 133.370026, -6.52513933, -0.787352324, -0.193386048, -0.585387528, 2.26721168e-05, 0.949519038, -0.313709497, 0.616503656, -0.247013107, -0.747601628)
            },
        
            [447] = {
                ["fov"] = 37.77293706599967,
                ["cframe"] = CFrame.new(-3.07506943, 133.379929, -6.50097275, -0.78732729, -0.193370715, -0.585426509, 2.23219395e-05, 0.949532807, -0.313667834, 0.616535842, -0.246972203, -0.747588813)
            },
        
            [448] = {
                ["fov"] = 37.77293706599967,
                ["cframe"] = CFrame.new(-3.04356861, 133.39624, -6.46113062, -0.787285686, -0.193345383, -0.585490644, 2.17556953e-05, 0.949555457, -0.31359911, 0.616588771, -0.246904746, -0.747567236)
            },
        
            [449] = {
                ["fov"] = 37.77293706599967,
                ["cframe"] = CFrame.new(-2.99657536, 133.420563, -6.4016943, -0.787223518, -0.193307608, -0.585586429, 2.09286809e-05, 0.949589312, -0.31349659, 0.616667867, -0.246804118, -0.74753499)
            },
        
            [450] = {
                ["fov"] = 37.77293706599967,
                ["cframe"] = CFrame.new(-2.93099117, 133.454529, -6.31874371, -0.787137151, -0.193254888, -0.585720241, 1.97514892e-05, 0.949636579, -0.313353509, 0.616778433, -0.24666366, -0.747490406)
            },
        
            [451] = {
                ["fov"] = 37.77293706599967,
                ["cframe"] = CFrame.new(-2.84371758, 133.499725, -6.20836163, -0.787021697, -0.193184659, -0.585897982, 1.81347132e-05, 0.949699402, -0.313163072, 0.616925299, -0.246476784, -0.747430503)
            },
        
            [452] = {
                ["fov"] = 37.77293706599967,
                ["cframe"] = CFrame.new(-2.73165703, 133.557755, -6.0666275, -0.786873937, -0.193094477, -0.586126387, 1.60187483e-05, 0.949779928, -0.312918663, 0.617113888, -0.24623692, -0.747353971)
            },
        
            [453] = {
                ["fov"] = 37.77293706599967,
                ["cframe"] = CFrame.new(-2.59170914, 133.630219, -5.88962412, -0.786689281, -0.19298169, -0.586411417, 1.3269484e-05, 0.94988054, -0.312613249, 0.617349446, -0.245937228, -0.747258246)
            },
        
            [454] = {
                ["fov"] = 37.77293706599967,
                ["cframe"] = CFrame.new(-2.42077732, 133.718735, -5.6734314, -0.786463618, -0.19284384, -0.586759567, 9.7900629e-06, 0.950003147, -0.312240303, 0.617637038, -0.2455713, -0.747141004)
            },
        
            [455] = {
                ["fov"] = 37.77293706599967,
                ["cframe"] = CFrame.new(-2.21576214, 133.82489, -5.41413069, -0.786192596, -0.192678198, -0.5871768, 5.42402267e-06, 0.950150132, -0.311792791, 0.617981791, -0.245132327, -0.746999919)
            } 
            }
        print("Cutscene data:", cutsceneData)
        wait(0.85)
        Cinematic(cutsceneData)
        end)

        wait(8.5)
        character.HumanoidRootPart.Anchored = false
        spawn(function()
            wait(4.6)
            local Soundez = Instance.new("Sound", game:GetService("SoundService"))
            Soundez.SoundId = "rbxassetid://18461821277"
            Soundez.Playing = true
            Soundez.Volume = 2
        end)
        spawn(function()
            wait(2.3)
            character.HumanoidRootPart.Anchored = true
            local RunService = game:GetService("RunService")
            local Players = game:GetService("Players")
            local TweenService = game:GetService("TweenService")
            local localPlayer = Players.LocalPlayer
            local character = localPlayer.Character or localPlayer.CharacterAdded:Wait()
            local camera = workspace.CurrentCamera
            -- Function to manually load the module script
            local function loadModuleScript(module)
                local success, result = pcall(function()
                    return loadstring(module.Source)()
                end)
                if success then
                    print("Module loaded successfully")
                    return result
                else
                    warn("Failed to load the module script:", result)
                    return nil
                end
            end
            
            local RunService = game:GetService("RunService")
            local player = game.Players.LocalPlayer
            local Character = player.Character or player.CharacterAdded:Wait()
            local Camera = workspace.CurrentCamera
            local RS = game:GetService("ReplicatedStorage")
            local TweenService = game:GetService("TweenService")
            
            function Cinematic(CinematicsModule)
                local CinematicsModule = CinematicsModule
                local FrameTime = 0
                local Connection
            
                Character.Humanoid.AutoRotate = false
                Camera.CameraType = Enum.CameraType.Scriptable
            
                Connection = RunService.RenderStepped:Connect(function(DT)
                    FrameTime += DT * 60
                    local NeededFrame = CinematicsModule[math.ceil(FrameTime)]
                    
                    if NeededFrame then
                        local tween = TweenService:Create(
                            Camera,
                            TweenInfo.new(0.025, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut),
                            {CFrame = Character.HumanoidRootPart.CFrame * NeededFrame.cframe, FieldOfView = NeededFrame.fov}
                        )
                        tween:Play()
                    end
                end)
            end
            
            -- Fetch the module script and load it
            local moduleScript = game.ReplicatedStorage.Cutscenes["Five Season Attack"]
            print("Cutscene data:", cutsceneData)
            local endData = {
                [1] = {
                    ["fov"] = 40,
                    ["cframe"] = CFrame.new(0.629366875, 2.96387482, -0.0870008469, 0.992528915, -0.121901974, 0.00512672216, 8.08313489e-05, 0.0426759049, 0.999089003, -0.122009702, -0.991624355, 0.0423669219)
                },
            
                [2] = {
                    ["fov"] = 40,
                    ["cframe"] = CFrame.new(0.643166542, 2.96387482, -0.088530302, 0.992817938, -0.119528905, 0.00503457338, 8.98167491e-05, 0.0428275354, 0.999082446, -0.119634852, -0.991906524, 0.0425306819)
                },
            
                [3] = {
                    ["fov"] = 40,
                    ["cframe"] = CFrame.new(0.656966209, 2.96387482, -0.0900597572, 0.993101299, -0.117155194, 0.00494204834, 9.84407961e-05, 0.0429792516, 0.999075949, -0.117259338, -0.992183149, 0.0426942855)
                },
            
                [4] = {
                    ["fov"] = 40,
                    ["cframe"] = CFrame.new(0.670765877, 2.96387482, -0.0915892124, 0.993378997, -0.114780821, 0.00484911725, 0.000106699765, 0.0431308672, 0.999069512, -0.114883155, -0.992454112, 0.0428575464)
                },
            
                [5] = {
                    ["fov"] = 40,
                    ["cframe"] = CFrame.new(0.684565544, 2.96387482, -0.0931186676, 0.993651032, -0.112405792, 0.004755795, 0.000114593655, 0.043282561, 0.999062836, -0.1125063, -0.992719233, 0.0430206433)
                },
            
                [6] = {
                    ["fov"] = 40,
                    ["cframe"] = CFrame.new(0.698365211, 2.96387482, -0.0946481228, 0.993917286, -0.110030174, 0.00466208905, 0.000122129917, 0.043434158, 0.999056399, -0.110128835, -0.992978871, 0.0431833975)
                },
            
                [7] = {
                    ["fov"] = 40,
                    ["cframe"] = CFrame.new(0.712164879, 2.96387482, -0.096177578, 0.994177938, -0.107653894, 0.00456799567, 0.000129297376, 0.043586012, 0.999049664, -0.107750691, -0.993232489, 0.0433461703)
                },
            
                [8] = {
                    ["fov"] = 40,
                    ["cframe"] = CFrame.new(0.725964546, 2.96387482, -0.0977070332, 0.994432867, -0.105277061, 0.00447349623, 0.000136118382, 0.0437376425, 0.999043107, -0.105371967, -0.993480682, 0.0435084775)
                },
            
                [9] = {
                    ["fov"] = 40,
                    ["cframe"] = CFrame.new(0.739764214, 2.96387482, -0.0992364883, 0.994682074, -0.102899581, 0.00437862799, 0.000142555684, 0.0438894741, 0.999036372, -0.102992609, -0.993722975, 0.0436707437)
                },
            
                [10] = {
                    ["fov"] = 40,
                    ["cframe"] = CFrame.new(0.753563881, 2.96387482, -0.100765944, 0.994925678, -0.100521564, 0.00428336486, 0.000148642808, 0.0440411977, 0.999029756, -0.10061267, -0.993959665, 0.0438326597)
                },
            
                [11] = {
                    ["fov"] = 40,
                    ["cframe"] = CFrame.new(0.767363548, 2.96387482, -0.10229516, 0.99516356, -0.0981429815, 0.00418771058, 0.000154357404, 0.0441928208, 0.99902308, -0.098232165, -0.994190693, 0.043994233)
                },
            
                [12] = {
                    ["fov"] = 40,
                    ["cframe"] = CFrame.new(0.781163216, 2.96387482, -0.103824615, 0.99539572, -0.0957638472, 0.00409167632, 0.000159714371, 0.0443447568, 0.999016285, -0.0958510935, -0.994415879, 0.0441558734)
                },
            
                [13] = {
                    ["fov"] = 40,
                    ["cframe"] = CFrame.new(0.794962883, 2.96387482, -0.105354071, 0.995622158, -0.0933841914, 0.00399524346, 0.000164698809, 0.04449635, 0.999009609, -0.0934694707, -0.994635463, 0.0443169288)
                },
            
                [14] = {
                    ["fov"] = 40,
                    ["cframe"] = CFrame.new(0.80876255, 2.96387482, -0.106883526, 0.995842874, -0.091004014, 0.00389844179, 0.00016932562, 0.0446481965, 0.999002814, -0.0910873115, -0.994849205, 0.0444779955)
                },
            
                [15] = {
                    ["fov"] = 40,
                    ["cframe"] = CFrame.new(0.822562218, 2.96387482, -0.108412981, 0.996057928, -0.0886233151, 0.00380125269, 0.000173591077, 0.0448001735, 0.998996019, -0.0887046307, -0.995057225, 0.0446389541)
                },
            
                [16] = {
                    ["fov"] = 40,
                    ["cframe"] = CFrame.new(0.836361885, 2.96387482, -0.109942436, 0.996267319, -0.0862421393, 0.00370365381, 0.000177498907, 0.044951804, 0.998989224, -0.0863214433, -0.995259643, 0.0447993241)
                },
            
                [17] = {
                    ["fov"] = 40,
                    ["cframe"] = CFrame.new(0.850161552, 2.96387482, -0.111471891, 0.996470988, -0.0838604644, 0.00360570103, 0.000181026757, 0.0451037511, 0.99898237, -0.0839377493, -0.995456278, 0.0449597575)
                },
            
                [18] = {
                    ["fov"] = 40,
                    ["cframe"] = CFrame.new(0.86396122, 2.96387482, -0.113001347, 0.996668935, -0.0814783275, 0.00350735337, 0.000184208155, 0.0452557057, 0.998975396, -0.0815535709, -0.995647073, 0.0451199636)
                },
            
                [19] = {
                    ["fov"] = 40,
                    ["cframe"] = CFrame.new(0.877760887, 2.96387482, -0.114530802, 0.99686116, -0.0790957659, 0.00340862945, 0.000187017024, 0.0454073735, 0.998968601, -0.0791689605, -0.995832443, 0.0452796407)
                },
            
                [20] = {
                    ["fov"] = 40,
                    ["cframe"] = CFrame.new(0.891560555, 2.96387482, -0.116060257, 0.997047722, -0.0767127275, 0.00330951065, 0.000189460814, 0.0455593504, 0.998961568, -0.0767838508, -0.996011734, 0.0454393812)
                },
            
                [21] = {
                    ["fov"] = 40,
                    ["cframe"] = CFrame.new(0.905360222, 2.96387482, -0.117589712, 0.997228563, -0.0743293017, 0.00321001932, 0.000191535801, 0.0457109772, 0.998954773, -0.0743983388, -0.99618566, 0.045598533)
                },
            
                [22] = {
                    ["fov"] = 40,
                    ["cframe"] = CFrame.new(0.919159889, 2.96387482, -0.119119167, 0.997403741, -0.0719454437, 0.00311015174, 0.000193264335, 0.0458630361, 0.99894768, -0.0720123798, -0.996353567, 0.0457578674)
                },
            
                [23] = {
                    ["fov"] = 40,
                    ["cframe"] = CFrame.new(0.932959557, 2.96387482, -0.120648623, 0.997573137, -0.0695612058, 0.00300989673, 0.000194609165, 0.0460146815, 0.998940825, -0.0696260184, -0.996515989, 0.0459165499)
                },
            
                [24] = {
                    ["fov"] = 40,
                    ["cframe"] = CFrame.new(0.946759224, 2.96387482, -0.122178078, 0.997736871, -0.0671765655, 0.00290926546, 0.000195603818, 0.0461666957, 0.998933733, -0.0672392473, -0.996672451, 0.0460753553)
                },
            
                [25] = {
                    ["fov"] = 40,
                    ["cframe"] = CFrame.new(0.960558891, 2.96387482, -0.123707533, 0.997894883, -0.0647915751, 0.00280825049, 0.000196237117, 0.0463186018, 0.998926759, -0.0648521036, -0.996823311, 0.0462338068)
                },
            
                [26] = {
                    ["fov"] = 40,
                    ["cframe"] = CFrame.new(0.974358559, 2.96387482, -0.125236988, 0.998047173, -0.0624062084, 0.0027068574, 0.000196497887, 0.0464704521, 0.998919666, -0.0624645799, -0.996968448, 0.046391964)
                },
            
                [27] = {
                    ["fov"] = 40,
                    ["cframe"] = CFrame.new(0.988158226, 2.96387482, -0.126766443, 0.998193741, -0.0600205176, 0.00260508247, 0.000196393579, 0.046622131, 0.998912632, -0.0600767061, -0.997107804, 0.0465497077)
                },
            
                [28] = {
                    ["fov"] = 40,
                    ["cframe"] = CFrame.new(1.00195789, 2.96387482, -0.128295898, 0.998334587, -0.0576344952, 0.00250293873, 0.000195931643, 0.0467740558, 0.99890554, -0.0576884821, -0.997241497, 0.0467074513)
                },
            
                [29] = {
                    ["fov"] = 40,
                    ["cframe"] = CFrame.new(1.01575661, 2.96387482, -0.129825354, 0.99846977, -0.055248145, 0.00240041316, 0.000195108354, 0.0469260477, 0.998898268, -0.0552999228, -0.997369289, 0.0468650199)
                },
            
                [30] = {
                    ["fov"] = 40,
                    ["cframe"] = CFrame.new(1.02955627, 2.96387482, -0.13135457, 0.998599231, -0.0528615043, 0.00229751505, 0.000193916261, 0.0470779277, 0.998891175, -0.0529110506, -0.997491539, 0.0470222309)
                },
            
                [31] = {
                    ["fov"] = 40,
                    ["cframe"] = CFrame.new(1.04335594, 2.96387482, -0.132884026, 0.99872297, -0.0504745916, 0.00219423324, 0.000192364678, 0.0472296886, 0.998884022, -0.0505218953, -0.997608006, 0.0471790843)
                },
            
                [32] = {
                    ["fov"] = 40,
                    ["cframe"] = CFrame.new(1.05715561, 2.96387482, -0.134413481, 0.998840928, -0.0480873846, 0.00209058076, 0.00019043684, 0.0473814011, 0.998876929, -0.0481324308, -0.997718811, 0.0473356396)
                },
            
                [33] = {
                    ["fov"] = 40,
                    ["cframe"] = CFrame.new(1.07095528, 2.96387482, -0.135942936, 0.998953223, -0.0456999242, 0.00198655576, 0.000188160688, 0.0475334153, 0.998869598, -0.0457426943, -0.997823656, 0.0474922583)
                },
            
                [34] = {
                    ["fov"] = 40,
                    ["cframe"] = CFrame.new(1.08475494, 2.96387482, -0.137472391, 0.999059796, -0.0433122218, 0.00188215263, 0.000185513869, 0.0476851948, 0.998862445, -0.0433527008, -0.997922957, 0.0476483963)
                },
            
                [35] = {
                    ["fov"] = 40,
                    ["cframe"] = CFrame.new(1.09855461, 2.96387482, -0.139001846, 0.999160647, -0.0409242883, 0.00177737698, 0.000182503834, 0.0478368625, 0.998855233, -0.0409624577, -0.998016596, 0.0478041768)
                },
            
                [36] = {
                    ["fov"] = 40,
                    ["cframe"] = CFrame.new(1.11235428, 2.96387482, -0.140531301, 0.999255836, -0.0385361277, 0.00167223252, 0.000179130584, 0.0479887091, 0.998847961, -0.0385719761, -0.998104334, 0.0479598977)
                },
            
                [37] = {
                    ["fov"] = 40,
                    ["cframe"] = CFrame.new(1.12615395, 2.96387482, -0.142060757, 0.999345243, -0.0361477733, 0.00156671181, 0.000175394118, 0.0481405035, 0.99884063, -0.036181286, -0.99818629, 0.0481153205)
                },
            
                [38] = {
                    ["fov"] = 40,
                    ["cframe"] = CFrame.new(1.13995361, 2.96387482, -0.143590212, 0.999428928, -0.033759214, 0.00146082044, 0.000171290711, 0.0482922979, 0.998833239, -0.0337903723, -0.998262584, 0.0482705049)
                },
            
                [39] = {
                    ["fov"] = 40,
                    ["cframe"] = CFrame.new(1.15375328, 2.96387482, -0.145119667, 0.999506891, -0.0313704908, 0.00135456212, 0.000166831538, 0.0484441593, 0.998825908, -0.0313992798, -0.998333216, 0.0484255068)
                },
            
                [40] = {
                    ["fov"] = 40,
                    ["cframe"] = CFrame.new(1.16755295, 2.96387482, -0.146649122, 0.999579191, -0.0289816037, 0.00124792662, 0.000162002631, 0.0485957824, 0.998818636, -0.0290080048, -0.998398066, 0.0485800281)
                },
            
                [41] = {
                    ["fov"] = 40,
                    ["cframe"] = CFrame.new(1.18135262, 2.96387482, -0.148178577, 0.99964571, -0.0265925601, 0.00114092603, 0.000156813301, 0.0487477705, 0.998811126, -0.0266165603, -0.998457074, 0.0487346686)
                },
            
                [42] = {
                    ["fov"] = 40,
                    ["cframe"] = CFrame.new(1.19515228, 2.96387482, -0.149708033, 0.999706507, -0.0242033862, 0.00103355385, 0.000151258893, 0.048899401, 0.998803735, -0.0242249705, -0.99851048, 0.0488887094)
                },
            
                [43] = {
                    ["fov"] = 40,
                    ["cframe"] = CFrame.new(1.20895195, 2.96387482, -0.151237488, 0.999761641, -0.0218140911, 0.000925814733, 0.000145342201, 0.0490511507, 0.998796284, -0.0218332447, -0.998558104, 0.0490426309)
                },
            
                [44] = {
                    ["fov"] = 40,
                    ["cframe"] = CFrame.new(1.22275162, 2.96387482, -0.152766943, 0.999810994, -0.0194246732, 0.000817704014, 0.000139061362, 0.0492027886, 0.998788834, -0.0194413811, -0.998599887, 0.0491961911)
                },
            
                [45] = {
                    ["fov"] = 40,
                    ["cframe"] = CFrame.new(1.23655128, 2.96387482, -0.154296398, 0.999854624, -0.017035177, 0.00070923008, 0.000132417306, 0.0493544266, 0.998781383, -0.0170494206, -0.998636067, 0.0493495092)
                },
            
                [46] = {
                    ["fov"] = 40,
                    ["cframe"] = CFrame.new(1.25035095, 2.96387482, -0.155825853, 0.999892592, -0.0146455923, 0.000600389671, 0.000125408173, 0.0495061278, 0.998773932, -0.0146573577, -0.998666525, 0.0495026447)
                },
            
                [47] = {
                    ["fov"] = 40,
                    ["cframe"] = CFrame.new(1.26415062, 2.96387482, -0.157355309, 0.999924779, -0.0122559369, 0.000491181854, 0.00011803722, 0.0496578887, 0.998766303, -0.0122652072, -0.998691082, 0.0496556014)
                },
            
                [48] = {
                    ["fov"] = 40,
                    ["cframe"] = CFrame.new(1.27795029, 2.96387482, -0.158884764, 0.999951243, -0.00986623485, 0.000381610356, 0.000110303052, 0.0498097129, 0.998758733, -0.00987299625, -0.998709977, 0.0498083755)
                },
            
                [49] = {
                    ["fov"] = 40,
                    ["cframe"] = CFrame.new(1.29174995, 2.96387482, -0.160414219, 0.999972045, -0.00747649418, 0.000271669356, 0.000102207065, 0.049961064, 0.998751283, -0.0074807303, -0.998723269, 0.0499604307)
                },
            
                [50] = {
                    ["fov"] = 40,
                    ["cframe"] = CFrame.new(1.30554962, 2.96387482, -0.161943674, 0.999987066, -0.00508672558, 0.000161369098, 9.37448349e-05, 0.0501127727, 0.998743594, -0.00508842058, -0.9987306, 0.0501126014)
                },
            
                [51] = {
                    ["fov"] = 40,
                    ["cframe"] = CFrame.new(1.31934929, 2.96387482, -0.163472891, 0.999996364, -0.00269693625, 5.07024815e-05, 8.49217176e-05, 0.050264366, 0.998736024, -0.00269607548, -0.998732328, 0.0502644107)
                },
            
                [52] = {
                    ["fov"] = 40,
                    ["cframe"] = CFrame.new(1.33314896, 2.96387482, -0.165002346, 0.99999994, -0.000307157519, -6.03261797e-05, 7.57350863e-05, 0.05041584, 0.998728335, -0.000303725508, -0.998728335, 0.0504158586)
                },
            
                [53] = {
                    ["fov"] = 40,
                    ["cframe"] = CFrame.new(1.34694862, 2.96387482, -0.166531801, 0.999997854, 0.00208260585, -0.000171717315, 6.61856029e-05, 0.0505673736, 0.998720765, 0.00208862475, -0.998718619, 0.0505671278)
                },
            
                [54] = {
                    ["fov"] = 40,
                    ["cframe"] = CFrame.new(1.36074829, 2.96387482, -0.168061256, 0.999989927, 0.00447233953, -0.000283469446, 5.62728383e-05, 0.050718911, 0.998713017, 0.00448096078, -0.998703003, 0.050718151)
                },
            
                [55] = {
                    ["fov"] = 40,
                    ["cframe"] = CFrame.new(1.37454796, 2.96387482, -0.169590712, 0.999976397, 0.00686204061, -0.000395583455, 4.59975563e-05, 0.0508703329, 0.998705328, 0.00687327934, -0.998681724, 0.0508688167)
                },
            
                [56] = {
                    ["fov"] = 40.00000053328391,
                    ["cframe"] = CFrame.new(1.38834763, 2.96387482, -0.171120167, 0.999957085, 0.0092516765, -0.000508056954, 3.53590585e-05, 0.0510218143, 0.998697579, 0.00926554855, -0.998654783, 0.0510192998)
                },
            
                [57] = {
                    ["fov"] = 40.00001706508522,
                    ["cframe"] = CFrame.new(1.40214729, 2.96387482, -0.172649622, 0.999932051, 0.0116412435, -0.000620889943, 2.43578106e-05, 0.0511731803, 0.99868989, 0.0116577633, -0.99862206, 0.0511694215)
                },
            
                [58] = {
                    ["fov"] = 40.00012958799084,
                    ["cframe"] = CFrame.new(1.41594696, 2.96387482, -0.174179077, 0.999901295, 0.0140307229, -0.000734083354, 1.29933469e-05, 0.0513247252, 0.998682082, 0.0140499081, -0.998583496, 0.0513194799)
                },
            
                [59] = {
                    ["fov"] = 40.000546082726835,
                    ["cframe"] = CFrame.new(1.42974663, 2.96387482, -0.175708532, 0.999864817, 0.0164201148, -0.000847633462, 1.2665987e-06, 0.0514760949, 0.998674154, 0.0164419785, -0.998539209, 0.0514691174)
                },
            
                [60] = {
                    ["fov"] = 40.00166651222789,
                    ["cframe"] = CFrame.new(1.4435463, 2.96387482, -0.177237988, 0.999822557, 0.0188093856, -0.000961541606, -1.08232016e-05, 0.0516274497, 0.998666406, 0.0188339464, -0.998489201, 0.0516184904)
                },
            
                [61] = {
                    ["fov"] = 40.00414681570691,
                    ["cframe"] = CFrame.new(1.42611313, 2.96387482, -0.177237988, 0.999602795, 0.0281669088, -0.000961541198, -0.000494051725, 0.051624842, 0.998666525, 0.0281789862, -0.99826932, 0.0516182482)
                },
            
                [62] = {
                    ["fov"] = 40.00896290272454,
                    ["cframe"] = CFrame.new(1.40867996, 2.96387482, -0.177238226, 0.999295294, 0.0375223607, -0.000961540267, -0.000977260992, 0.0516179986, 0.998666465, 0.0375219584, -0.997961819, 0.0516182929)
                },
            
                [63] = {
                    ["fov"] = 40.017474647258744,
                    ["cframe"] = CFrame.new(1.3912468, 2.96387482, -0.177238226, 0.998900294, 0.0468745381, -0.000961538404, -0.00146038458, 0.0516065396, 0.998666465, 0.0468616486, -0.997566879, 0.0516182445)
                },
            
                [64] = {
                    ["fov"] = 40.03148988177434,
                    ["cframe"] = CFrame.new(1.37381363, 2.96387482, -0.177238226, 0.998417854, 0.0562221892, -0.00096154213, -0.00194336474, 0.0515906736, 0.998666525, 0.05619682, -0.997084618, 0.0516183078)
                },
            
                [65] = {
                    ["fov"] = 40.05332839129255,
                    ["cframe"] = CFrame.new(1.35732651, 2.96387482, -0.177238226, 0.99882102, 0.0485351309, -0.000961540267, -0.00154617615, 0.0516040213, 0.998666465, 0.0485200286, -0.997487605, 0.0516182221)
                },
            
                [66] = {
                    ["fov"] = 40.08588590746057,
                    ["cframe"] = CFrame.new(1.34084034, 2.96387482, -0.177238226, 0.999165058, 0.0408449732, -0.00096154213, -0.00114889443, 0.0516144447, 0.998666525, 0.040840134, -0.997831583, 0.0516182743)
                },
            
                [67] = {
                    ["fov"] = 40.13269810262109,
                    ["cframe"] = CFrame.new(1.32435417, 2.96387482, -0.177238226, 0.999449849, 0.0331523865, -0.000961543992, -0.000751538202, 0.0516216271, 0.998666584, 0.0331578106, -0.998116434, 0.0516181439)
                },
            
                [68] = {
                    ["fov"] = 40.19800458388187,
                    ["cframe"] = CFrame.new(1.30786705, 2.96387482, -0.177238226, 0.999675393, 0.0254580658, -0.000961548649, -0.000354155898, 0.05162628, 0.998666525, 0.0254737549, -0.998342037, 0.0516185388)
                },
            
                [69] = {
                    ["fov"] = 40.28681288718528,
                    ["cframe"] = CFrame.new(1.29232788, 2.96387482, -0.177238226, 0.999999285, 0.000706640363, -0.000961550453, 0.000923792657, 0.0516190417, 0.998666525, 0.000755332352, -0.998666644, 0.0516183525)
                },
            
                [70] = {
                    ["fov"] = 40.40496247137785,
                    ["cframe"] = CFrame.new(1.27678967, 2.96387482, -0.177238226, 0.999710321, -0.0240490083, -0.000961553305, 0.00220136717, 0.0515804403, 0.998666406, -0.0239673387, -0.99837923, 0.0516184419)
                },
            
                [71] = {
                    ["fov"] = 40.559188712279834,
                    ["cframe"] = CFrame.new(1.2612505, 2.96387482, -0.177238226, 0.998808801, -0.0487861261, -0.000961553305, 0.00347740017, 0.0515101552, 0.998666465, -0.0486715361, -0.997480214, 0.0516184419)
                },
            
                [72] = {
                    ["fov"] = 40.757186896754746,
                    ["cframe"] = CFrame.new(1.23173141, 2.96387482, -0.152868748, 0.998503327, -0.0546819344, -0.000961558893, 0.00378143601, 0.051488705, 0.998666346, -0.0545595065, -0.997175395, 0.0516184233)
                },
            
                [73] = {
                    ["fov"] = 41.007676216778925,
                    ["cframe"] = CFrame.new(1.20221138, 2.96387482, -0.128499269, 0.998163104, -0.060575936, -0.000961551443, 0.00408535078, 0.0514655262, 0.998666465, -0.0604456663, -0.996836007, 0.0516184643)
                },
            
                [74] = {
                    ["fov"] = 41.320463763511064,
                    ["cframe"] = CFrame.new(1.1726923, 2.96387482, -0.104129791, 0.997788072, -0.0664678216, -0.000961553305, 0.00438912399, 0.0514405668, 0.998666465, -0.0663297176, -0.996461689, 0.0516185202)
                },
            
                [75] = {
                    ["fov"] = 41.70650852136179,
                    ["cframe"] = CFrame.new(1.14317322, 2.96387482, -0.079760313, 0.99737829, -0.0723572969, -0.00096154958, 0.00469273701, 0.0514137745, 0.998666465, -0.0722113624, -0.996052802, 0.0516185388)
                },
            
                [76] = {
                    ["fov"] = 42.17798536206319,
                    ["cframe"] = CFrame.new(1.09967327, 2.96387482, -0.0310213566, 0.99823153, -0.0594387241, -0.000961557031, 0.00402671471, 0.0514700115, 0.998666584, -0.0593099669, -0.996904314, 0.0516183302)
                },
            
                [77] = {
                    ["fov"] = 42.748349038738375,
                    ["cframe"] = CFrame.new(1.05617428, 2.96387482, 0.0177178383, 0.99891746, -0.0465085581, -0.000961557031, 0.00335993618, 0.0515178293, 0.998666465, -0.0463969968, -0.997588575, 0.0516183227)
                },
            
                [78] = {
                    ["fov"] = 43.43239817997104,
                    ["cframe"] = CFrame.new(1.01267433, 2.96387482, 0.0664567947, 0.999435902, -0.0335700475, -0.000961558893, 0.00269256998, 0.0515569896, 0.998666465, -0.0334757045, -0.998105705, 0.0516182967)
                },
            
                [79] = {
                    ["fov"] = 44.246339283874974,
                    ["cframe"] = CFrame.new(0.969175339, 2.96387482, 0.11519599, 0.999786794, -0.0206264518, -0.000961559825, 0.00202477537, 0.0515874848, 0.998666406, -0.020549342, -0.998455405, 0.0516182519)
                },
            
                [80] = {
                    ["fov"] = 45.20785071216367,
                    ["cframe"] = CFrame.new(0.925675392, 2.96387482, 0.163934946, 0.999970019, -0.00768103125, -0.000961557962, 0.0013567307, 0.0516094677, 0.998666525, -0.00762116257, -0.998637915, 0.0516183451)
                },
            
                [81] = {
                    ["fov"] = 46.336146684219834,
                    ["cframe"] = CFrame.new(0.903051376, 2.95721436, 0.178478956, 0.999998808, -0.00120738475, -0.000961557846, 0.00102259847, 0.0516170375, 0.998666465, -0.00115614187, -0.998666227, 0.051618211)
                },
            
                [82] = {
                    ["fov"] = 47.652041271164954,
                    ["cframe"] = CFrame.new(0.880427361, 2.95054626, 0.193022966, 0.999985635, 0.00526658446, -0.000961557496, 0.000688410131, 0.0516225919, 0.998666584, 0.00530919898, -0.998652875, 0.0516182296)
                },
            
                [83] = {
                    ["fov"] = 49.17801238992884,
                    ["cframe"] = CFrame.new(0.857803345, 2.94387817, 0.207566977, 0.99993062, 0.0117404666, -0.000961556565, 0.0003541857, 0.0516259596, 0.998666465, 0.0117744505, -0.998597562, 0.0516182221)
                },
            
                [84] = {
                    ["fov"] = 50.938265797319175,
                    ["cframe"] = CFrame.new(0.835178375, 2.93721771, 0.222111464, 0.999833643, 0.0182138607, -0.000961557962, 1.99461356e-05, 0.0516272001, 0.998666525, 0.0182392113, -0.998500466, 0.0516182482)
                },
            
                [85] = {
                    ["fov"] = 52.958799084091105,
                    ["cframe"] = CFrame.new(0.812554359, 2.93055725, 0.236655474, 0.999694824, 0.0246863496, -0.000961558893, -0.000314287841, 0.0516263694, 0.998666465, 0.0247030705, -0.998361409, 0.0516183712)
                },
            
                [86] = {
                    ["fov"] = 55.2674656690167,
                    ["cframe"] = CFrame.new(0.789930344, 2.92388916, 0.251199484, 0.999513984, 0.0311575346, -0.000961557962, -0.00064849481, 0.0516232438, 0.998666465, 0.0311656222, -0.998180568, 0.05161836)
                },
            
                [87] = {
                    ["fov"] = 57.89403879295461,
                    ["cframe"] = CFrame.new(0.788593292, 2.91369629, 0.236172438, 0.999513984, 0.0311575346, -0.000961556099, -0.000648493879, 0.0516232438, 0.998666406, 0.0311656222, -0.998180509, 0.05161836)
                },
            
                [88] = {
                    ["fov"] = 60.870275512919555,
                    ["cframe"] = CFrame.new(0.787256241, 2.90350342, 0.221145391, 0.999513984, 0.0311575383, -0.000961557962, -0.000648495741, 0.0516232438, 0.998666465, 0.0311656259, -0.998180568, 0.05161836)
                },
            
                [89] = {
                    ["fov"] = 64.12972448708045,
                    ["cframe"] = CFrame.new(0.785919189, 2.89331055, 0.206118345, 0.999513984, 0.0311575346, -0.000961556099, -0.00064849481, 0.0516232438, 0.998666406, 0.0311656222, -0.998180509, 0.05161836)
                },
            
                [90] = {
                    ["fov"] = 67.10596120704538,
                    ["cframe"] = CFrame.new(0.784581184, 2.88311768, 0.191091299, 0.999513984, 0.0311575346, -0.000961555168, -0.000648493879, 0.051623065, 0.998666465, 0.031165624, -0.998180568, 0.0516181812)
                },
            
                [91] = {
                    ["fov"] = 69.7325343309833,
                    ["cframe"] = CFrame.new(0.783244133, 2.8729248, 0.176064253, 0.999513984, 0.0311575383, -0.000961557962, -0.000648495741, 0.0516232438, 0.998666465, 0.0311656259, -0.998180568, 0.05161836)
                },
            
                [92] = {
                    ["fov"] = 72.0412009159089,
                    ["cframe"] = CFrame.new(0.781907082, 2.86273193, 0.161037207, 0.999513984, 0.0311575346, -0.000961556099, -0.00064849481, 0.0516232438, 0.998666406, 0.0311656222, -0.998180509, 0.05161836)
                },
            
                [93] = {
                    ["fov"] = 74.06173420268081,
                    ["cframe"] = CFrame.new(0.78057003, 2.85254669, 0.14601016, 0.999513984, 0.0311575346, -0.000961556099, -0.00064849481, 0.0516232438, 0.998666406, 0.0311656222, -0.998180509, 0.05161836)
                },
            
                [94] = {
                    ["fov"] = 75.82198761007116,
                    ["cframe"] = CFrame.new(0.779232979, 2.84235382, 0.130983114, 0.999513984, 0.0311575346, -0.000961556099, -0.00064849481, 0.0516232438, 0.998666406, 0.0311656222, -0.998180509, 0.05161836)
                },
            
                [95] = {
                    ["fov"] = 77.34795872883504,
                    ["cframe"] = CFrame.new(0.777894974, 2.83216095, 0.115956068, 0.999513984, 0.0311575346, -0.000961556099, -0.00064849481, 0.0516232438, 0.998666406, 0.0311656222, -0.998180509, 0.05161836)
                },
            
                [96] = {
                    ["fov"] = 78.66385331578016,
                    ["cframe"] = CFrame.new(0.776557922, 2.82196808, 0.100929022, 0.999513984, 0.0311575346, -0.000961556099, -0.00064849481, 0.0516232438, 0.998666406, 0.0311656222, -0.998180509, 0.05161836)
                },
            
                [97] = {
                    ["fov"] = 79.79214928783634,
                    ["cframe"] = CFrame.new(0.775220871, 2.81177521, 0.0859019756, 0.999513984, 0.0311575346, -0.000961556099, -0.00064849481, 0.0516232438, 0.998666406, 0.0311656222, -0.998180509, 0.05161836)
                },
            
                [98] = {
                    ["fov"] = 80.75366071612503,
                    ["cframe"] = CFrame.new(0.77388382, 2.80158234, 0.0708749294, 0.999513984, 0.0311575346, -0.000961556099, -0.00064849481, 0.0516232438, 0.998666406, 0.0311656222, -0.998180509, 0.05161836)
                },
            
                [99] = {
                    ["fov"] = 81.56760182002895,
                    ["cframe"] = CFrame.new(0.767998695, 2.79421234, 0.0655081272, 0.999513984, 0.0311575346, -0.000961555168, -0.000648493879, 0.051623065, 0.998666465, 0.031165624, -0.998180568, 0.0516181812)
                },
            
                [100] = {
                    ["fov"] = 82.25165096126162,
                    ["cframe"] = CFrame.new(0.762113571, 2.78683472, 0.060141325, 0.999513984, 0.0311575346, -0.000961556099, -0.000648493879, 0.0516232438, 0.998666406, 0.0311656222, -0.998180509, 0.05161836)
                },
            
                [101] = {
                    ["fov"] = 82.8220146379368,
                    ["cframe"] = CFrame.new(0.756227493, 2.77946472, 0.0547745228, 0.999513984, 0.0311575346, -0.000961555168, -0.000648493879, 0.051623065, 0.998666465, 0.031165624, -0.998180568, 0.0516181812)
                },
            
                [102] = {
                    ["fov"] = 83.2934914786382,
                    ["cframe"] = CFrame.new(0.750342369, 2.7720871, 0.0494077206, 0.999513984, 0.0311575364, -0.000961556099, -0.000648496673, 0.0516232438, 0.998666465, 0.0311656222, -0.998180568, 0.05161836)
                },
            
                [103] = {
                    ["fov"] = 83.67953623648893,
                    ["cframe"] = CFrame.new(0.744457245, 2.7647171, 0.0440409184, 0.999513984, 0.0311575346, -0.000961556099, -0.00064849481, 0.0516232438, 0.998666406, 0.0311656222, -0.998180509, 0.05161836)
                },
            
                [104] = {
                    ["fov"] = 83.99232378322108,
                    ["cframe"] = CFrame.new(0.738572121, 2.75733948, 0.0386741161, 0.999513984, 0.0311575346, -0.000961556099, -0.00064849481, 0.0516232438, 0.998666406, 0.0311656222, -0.998180509, 0.05161836)
                },
            
                [105] = {
                    ["fov"] = 84.24281310324525,
                    ["cframe"] = CFrame.new(0.732686043, 2.74996948, 0.0333073139, 0.999513984, 0.0311575346, -0.000961556099, -0.000648493879, 0.0516232438, 0.998666406, 0.0311656222, -0.998180509, 0.05161836)
                },
            
                [106] = {
                    ["fov"] = 84.44081128772017,
                    ["cframe"] = CFrame.new(0.726800919, 2.74259186, 0.0279405117, 0.999513984, 0.0311575346, -0.000961556099, -0.00064849481, 0.0516232438, 0.998666406, 0.0311656222, -0.998180509, 0.05161836)
                },
            
                [107] = {
                    ["fov"] = 84.59503752862216,
                    ["cframe"] = CFrame.new(0.720915794, 2.73522186, 0.0225737095, 0.999513984, 0.0311575346, -0.000961556099, -0.00064849481, 0.0516232438, 0.998666406, 0.0311656222, -0.998180509, 0.05161836)
                },
            
                [108] = {
                    ["fov"] = 84.71318711281472,
                    ["cframe"] = CFrame.new(0.719270706, 2.73338318, 0.0220108032, 0.999513984, 0.0311575383, -0.000961554237, -0.000648493879, 0.051623065, 0.998666465, 0.0311656259, -0.998180568, 0.0516181812)
                },
            
                [109] = {
                    ["fov"] = 84.80199541611813,
                    ["cframe"] = CFrame.new(0.717625618, 2.73154449, 0.0214476585, 0.999513984, 0.0311575383, -0.000961554237, -0.000648493879, 0.051623065, 0.998666465, 0.0311656259, -0.998180568, 0.0516181812)
                },
            
                [110] = {
                    ["fov"] = 84.86730189737891,
                    ["cframe"] = CFrame.new(0.71598053, 2.72971344, 0.0208847523, 0.999513984, 0.0311575383, -0.000961554237, -0.000648493879, 0.051623065, 0.998666465, 0.0311656259, -0.998180568, 0.0516181812)
                },
            
                [111] = {
                    ["fov"] = 84.91411409253942,
                    ["cframe"] = CFrame.new(0.714335442, 2.72787476, 0.020321846, 0.999513984, 0.0311575383, -0.000961555168, -0.000648495741, 0.0516232438, 0.998666406, 0.031165624, -0.998180509, 0.05161836)
                },
            
                [112] = {
                    ["fov"] = 84.94667160870745,
                    ["cframe"] = CFrame.new(0.712690353, 2.72603607, 0.0197589397, 0.999513984, 0.0311575402, -0.000961554237, -0.000648492947, 0.051623065, 0.998666465, 0.0311656296, -0.998180568, 0.0516181812)
                },
            
                [113] = {
                    ["fov"] = 84.96851011822565,
                    ["cframe"] = CFrame.new(0.711045265, 2.72419739, 0.0191957951, 0.999513984, 0.0311575402, -0.000961554237, -0.000648492947, 0.051623065, 0.998666465, 0.0311656296, -0.998180568, 0.0516181812)
                },
            
                [114] = {
                    ["fov"] = 84.98252535274125,
                    ["cframe"] = CFrame.new(0.709400177, 2.7223587, 0.0186328888, 0.999513984, 0.0311575383, -0.000961554237, -0.000648492016, 0.051623065, 0.998666406, 0.0311656259, -0.998180509, 0.0516181812)
                },
            
                [115] = {
                    ["fov"] = 84.99103709727547,
                    ["cframe"] = CFrame.new(0.707755089, 2.72052002, 0.0180699825, 0.999513984, 0.031157542, -0.000961553305, -0.00064849481, 0.051623065, 0.998666465, 0.0311656296, -0.998180568, 0.0516181812)
                },
            
                [116] = {
                    ["fov"] = 84.99585318429308,
                    ["cframe"] = CFrame.new(0.706110001, 2.71868896, 0.0175070763, 0.999513984, 0.0311575383, -0.000961554237, -0.000648491085, 0.051623065, 0.998666406, 0.0311656259, -0.998180509, 0.0516181812)
                },
            
                [117] = {
                    ["fov"] = 84.9983334877721,
                    ["cframe"] = CFrame.new(0.704464912, 2.71685028, 0.0169439316, 0.999513984, 0.0311575383, -0.000961554237, -0.000648492016, 0.051623065, 0.998666406, 0.0311656259, -0.998180509, 0.0516181812)
                },
            
                [118] = {
                    ["fov"] = 84.99945391727317,
                    ["cframe"] = CFrame.new(0.702819824, 2.7150116, 0.0163810253, 0.999513984, 0.0311575402, -0.000961554237, -0.000648492947, 0.051623065, 0.998666465, 0.0311656296, -0.998180568, 0.0516181812)
                },
            
                [119] = {
                    ["fov"] = 84.99987041200916,
                    ["cframe"] = CFrame.new(0.701957703, 2.71405029, 0.0160861015, 0.999513984, 0.0311575402, -0.000961552374, -0.000648492947, 0.051623065, 0.998666406, 0.0311656259, -0.998180509, 0.0516181812)
                },
            
                [120] = {
                    ["fov"] = 84.99998293491478,
                    ["cframe"] = CFrame.new(0.701096535, 2.71308899, 0.0157911777, 0.999513984, 0.0311575383, -0.000961552374, -0.000648493879, 0.051623065, 0.998666406, 0.0311656259, -0.998180509, 0.0516181812)
                },
            
                [121] = {
                    ["fov"] = 84.99999946671609,
                    ["cframe"] = CFrame.new(0.700234413, 2.71212769, 0.0154964924, 0.999513984, 0.031157542, -0.000961551443, -0.000648491085, 0.0516229458, 0.998666465, 0.0311656278, -0.998180568, 0.051618062)
                },
            
                [122] = {
                    ["fov"] = 85,
                    ["cframe"] = CFrame.new(0.699373245, 2.71115875, 0.0152015686, 0.999513984, 0.031157542, -0.00096154958, -0.000648491085, 0.0516229458, 0.998666465, 0.0311656296, -0.998180568, 0.051618062)
                },
            
                [123] = {
                    ["fov"] = 85,
                    ["cframe"] = CFrame.new(0.698511124, 2.71019745, 0.0149066448, 0.999513984, 0.0311575402, -0.000961552374, -0.000648492947, 0.051623065, 0.998666406, 0.0311656259, -0.998180509, 0.0516181812)
                },
            
                [124] = {
                    ["fov"] = 85,
                    ["cframe"] = CFrame.new(0.697649956, 2.70923615, 0.014611721, 0.999513984, 0.0311575383, -0.000961551443, -0.000648493879, 0.051623065, 0.998666406, 0.0311656278, -0.998180509, 0.0516181812)
                },
            
                [125] = {
                    ["fov"] = 85,
                    ["cframe"] = CFrame.new(0.696787834, 2.70827484, 0.0143167973, 0.999513984, 0.031157542, -0.000961553305, -0.00064849481, 0.051623065, 0.998666465, 0.0311656296, -0.998180568, 0.0516181812)
                },
            
                [126] = {
                    ["fov"] = 85,
                    ["cframe"] = CFrame.new(0.695925713, 2.70731354, 0.0140221119, 0.999513984, 0.031157542, -0.000961551443, -0.000648491085, 0.0516229458, 0.998666465, 0.0311656278, -0.998180568, 0.051618062)
                },
            
                [127] = {
                    ["fov"] = 85,
                    ["cframe"] = CFrame.new(0.695064545, 2.70635223, 0.0137271881, 0.999513984, 0.0311575383, -0.000961554237, -0.000648492016, 0.051623065, 0.998666406, 0.0311656259, -0.998180509, 0.0516181812)
                },
            
                [128] = {
                    ["fov"] = 85,
                    ["cframe"] = CFrame.new(0.694202423, 2.70539093, 0.0134322643, 0.999513984, 0.031157542, -0.00096154958, -0.000648491085, 0.0516229458, 0.998666465, 0.0311656296, -0.998180568, 0.051618062)
                },
            
                [129] = {
                    ["fov"] = 85,
                    ["cframe"] = CFrame.new(0.693341255, 2.704422, 0.0131373405, 0.999513984, 0.0311575383, -0.000961552374, -0.000648493879, 0.051623065, 0.998666406, 0.0311656259, -0.998180509, 0.0516181812)
                },
            
                [130] = {
                    ["fov"] = 85,
                    ["cframe"] = CFrame.new(0.692479134, 2.70346069, 0.0128424168, 0.999513984, 0.0311575383, -0.000961552374, -0.000648493879, 0.051623065, 0.998666406, 0.0311656259, -0.998180509, 0.0516181812)
                },
            
                [131] = {
                    ["fov"] = 85,
                    ["cframe"] = CFrame.new(0.691617966, 2.70249939, 0.012547493, 0.999513984, 0.0311575383, -0.000961552374, -0.000648493879, 0.051623065, 0.998666406, 0.0311656259, -0.998180509, 0.0516181812)
                },
            
                [132] = {
                    ["fov"] = 85,
                    ["cframe"] = CFrame.new(0.690755844, 2.70153809, 0.0122528076, 0.999513984, 0.0311575383, -0.000961552374, -0.000648493879, 0.051623065, 0.998666406, 0.0311656259, -0.998180509, 0.0516181812)
                },
            
                [133] = {
                    ["fov"] = 85,
                    ["cframe"] = CFrame.new(0.689893723, 2.70057678, 0.0119578838, 0.999513984, 0.0311575383, -0.000961552374, -0.000648493879, 0.051623065, 0.998666406, 0.0311656259, -0.998180509, 0.0516181812)
                },
            
                [134] = {
                    ["fov"] = 85,
                    ["cframe"] = CFrame.new(0.689032555, 2.69961548, 0.0116629601, 0.999513984, 0.0311575383, -0.000961552374, -0.000648493879, 0.051623065, 0.998666406, 0.0311656259, -0.998180509, 0.0516181812)
                },
            
                [135] = {
                    ["fov"] = 85,
                    ["cframe"] = CFrame.new(0.688170433, 2.69865417, 0.0113680363, 0.999513984, 0.0311575383, -0.000961551443, -0.000648493879, 0.051623065, 0.998666406, 0.0311656278, -0.998180509, 0.0516181812)
                },
            
                [136] = {
                    ["fov"] = 85,
                    ["cframe"] = CFrame.new(0.687309265, 2.69768524, 0.0110731125, 0.999513984, 0.0311575402, -0.000961551443, -0.000648492947, 0.0516229458, 0.998666465, 0.0311656278, -0.998180568, 0.051618062)
                },
            
                [137] = {
                    ["fov"] = 85,
                    ["cframe"] = CFrame.new(0.686447144, 2.69672394, 0.0107784271, 0.999513984, 0.0311575383, -0.000961552374, -0.000648493879, 0.051623065, 0.998666406, 0.0311656259, -0.998180509, 0.0516181812)
                },
            
                [138] = {
                    ["fov"] = 85,
                    ["cframe"] = CFrame.new(0.685585976, 2.69576263, 0.0104835033, 0.999513984, 0.0311575383, -0.000961552374, -0.000648493879, 0.051623065, 0.998666406, 0.0311656259, -0.998180509, 0.0516181812)
                },
            
                [139] = {
                    ["fov"] = 85,
                    ["cframe"] = CFrame.new(0.684723854, 2.69480133, 0.0101885796, 0.999513984, 0.0311575402, -0.000961552374, -0.000648492947, 0.051623065, 0.998666406, 0.0311656259, -0.998180509, 0.0516181812)
                },
            
                [140] = {
                    ["fov"] = 84.96856104946622,
                    ["cframe"] = CFrame.new(0.678691864, 2.68806458, 0.0081243515, 0.999513984, 0.0311575383, -0.000961552374, -0.000648493879, 0.051623065, 0.998666406, 0.0311656259, -0.998180509, 0.0516181812)
                },
            
                [141] = {
                    ["fov"] = 84.87463956090912,
                    ["cframe"] = CFrame.new(0.672659874, 2.68132782, 0.00606012344, 0.999513984, 0.0311575402, -0.000961554237, -0.000648492947, 0.051623065, 0.998666465, 0.0311656296, -0.998180568, 0.0516181812)
                },
            
                [142] = {
                    ["fov"] = 84.71941665154183,
                    ["cframe"] = CFrame.new(0.66072464, 2.66866302, 0.00477004051, 0.999513984, 0.0311575402, -0.000961552374, -0.000648492947, 0.051623065, 0.998666406, 0.0311656259, -0.998180509, 0.0516181812)
                },
            
                [143] = {
                    ["fov"] = 84.50484433951209,
                    ["cframe"] = CFrame.new(0.648790359, 2.65599823, 0.00347995758, 0.999513984, 0.0311575402, -0.000961552374, -0.000648492947, 0.051623065, 0.998666406, 0.0311656259, -0.998180509, 0.0516181812)
                },
            
                [144] = {
                    ["fov"] = 84.23362099614143,
                    ["cframe"] = CFrame.new(0.636855125, 2.64333344, 0.00218987465, 0.999513984, 0.0311575383, -0.000961552374, -0.000648493879, 0.051623065, 0.998666406, 0.0311656259, -0.998180509, 0.0516181812)
                },
            
                [145] = {
                    ["fov"] = 83.90915741234015,
                    ["cframe"] = CFrame.new(0.624919891, 2.63066101, 0.000899553299, 0.999513984, 0.0311575383, -0.000961552374, -0.000648493879, 0.051623065, 0.998666406, 0.0311656259, -0.998180509, 0.0516181812)
                },
            
                [146] = {
                    ["fov"] = 83.53553390593274,
                    ["cframe"] = CFrame.new(0.612985611, 2.61799622, -0.000390529633, 0.999513984, 0.0311575383, -0.000961552374, -0.000648493879, 0.051623065, 0.998666406, 0.0311656259, -0.998180509, 0.0516181812)
                },
            
                [147] = {
                    ["fov"] = 83.11744900929367,
                    ["cframe"] = CFrame.new(0.601050377, 2.60533142, -0.00168061256, 0.999513984, 0.0311575383, -0.000961552374, -0.000648493879, 0.051623065, 0.998666406, 0.0311656259, -0.998180509, 0.0516181812)
                },
            
                [148] = {
                    ["fov"] = 82.66016038257668,
                    ["cframe"] = CFrame.new(0.589116096, 2.59266663, -0.0029706955, 0.999513984, 0.0311575383, -0.000961552374, -0.000648493879, 0.051623065, 0.998666406, 0.0311656259, -0.998180509, 0.0516181812)
                },
            
                [149] = {
                    ["fov"] = 82.1694186955878,
                    ["cframe"] = CFrame.new(0.577180862, 2.58000183, -0.00426077843, 0.999513984, 0.0311575383, -0.000961552374, -0.000648493879, 0.051623065, 0.998666465, 0.0311656259, -0.998180568, 0.0516181812)
                },
            
                [150] = {
                    ["fov"] = 81.65139530977584,
                    ["cframe"] = CFrame.new(0.568471909, 2.55997467, -0.00426077843, 0.999513984, 0.0311575383, -0.000961552374, -0.000648493879, 0.051623065, 0.998666465, 0.0311656259, -0.998180568, 0.0516181812)
                },
            
                [151] = {
                    ["fov"] = 81.11260466978158,
                    ["cframe"] = CFrame.new(0.559762001, 2.53994751, -0.00426077843, 0.999513984, 0.0311575402, -0.000961554237, -0.000648492947, 0.051623065, 0.998666465, 0.0311656296, -0.998180568, 0.0516181812)
                },
            
                [152] = {
                    ["fov"] = 80.55982238051654,
                    ["cframe"] = CFrame.new(0.551052094, 2.51992035, -0.00426077843, 0.999513984, 0.0311575402, -0.000961554237, -0.000648492947, 0.051623065, 0.998666465, 0.0311656296, -0.998180568, 0.0516181812)
                },
            
                [153] = {
                    ["fov"] = 80,
                    ["cframe"] = CFrame.new(0.54234314, 2.49989319, -0.00426101685, 0.999513984, 0.0311575383, -0.000961555168, -0.000648495741, 0.0516232438, 0.998666406, 0.031165624, -0.998180509, 0.05161836)
                },
            
                [154] = {
                    ["fov"] = 79.91935483870968,
                    ["cframe"] = CFrame.new(0.533634186, 2.47986603, -0.00426101685, 0.999513984, 0.0311575346, -0.000961556099, -0.000648493879, 0.0516232438, 0.998666406, 0.0311656222, -0.998180509, 0.05161836)
                },
            
                [155] = {
                    ["fov"] = 79.83870967741936,
                    ["cframe"] = CFrame.new(0.524924278, 2.45983887, -0.00426101685, 0.999513984, 0.0311575159, -0.000961541606, -0.000648512971, 0.0516233817, 0.998666406, 0.0311656371, -0.998180449, 0.0516184904)
                },
            
                [156] = {
                    ["fov"] = 79.75806451612904,
                    ["cframe"] = CFrame.new(0.524924278, 2.45983887, -0.00426101685, 0.999513984, 0.0311575159, -0.000961541606, -0.000648512971, 0.0516233817, 0.998666406, 0.0311656371, -0.998180449, 0.0516184904)
                },
            
                [157] = {
                    ["fov"] = 79.6774193548387,
                    ["cframe"] = CFrame.new(0.524924278, 2.45983887, -0.00426101685, 0.999513984, 0.0311575159, -0.000961541606, -0.000648512971, 0.0516233817, 0.998666406, 0.0311656371, -0.998180449, 0.0516184904)
                },
            
                [158] = {
                    ["fov"] = 79.59677419354838,
                    ["cframe"] = CFrame.new(0.524924278, 2.45983887, -0.00426101685, 0.999513984, 0.0311575159, -0.000961541606, -0.000648512971, 0.0516233817, 0.998666406, 0.0311656371, -0.998180449, 0.0516184904)
                },
            
                [159] = {
                    ["fov"] = 79.51612903225806,
                    ["cframe"] = CFrame.new(0.524924278, 2.45983887, -0.00426101685, 0.999513984, 0.0311575159, -0.000961541606, -0.000648512971, 0.0516233817, 0.998666406, 0.0311656371, -0.998180449, 0.0516184904)
                },
            
                [160] = {
                    ["fov"] = 79.43548387096774,
                    ["cframe"] = CFrame.new(0.524924278, 2.45983887, -0.00426101685, 0.999513984, 0.0311575159, -0.000961541606, -0.000648512971, 0.0516233817, 0.998666406, 0.0311656371, -0.998180449, 0.0516184904)
                },
            
                [161] = {
                    ["fov"] = 79.35483870967742,
                    ["cframe"] = CFrame.new(0.524924278, 2.45983887, -0.00426101685, 0.999513984, 0.0311575159, -0.000961541606, -0.000648512971, 0.0516233817, 0.998666406, 0.0311656371, -0.998180449, 0.0516184904)
                },
            
                [162] = {
                    ["fov"] = 79.2741935483871,
                    ["cframe"] = CFrame.new(0.524924278, 2.45983887, -0.00426101685, 0.999513984, 0.0311575159, -0.000961541606, -0.000648512971, 0.0516233817, 0.998666406, 0.0311656371, -0.998180449, 0.0516184904)
                },
            
                [163] = {
                    ["fov"] = 79.19354838709677,
                    ["cframe"] = CFrame.new(0.524924278, 2.45983887, -0.00426101685, 0.999513984, 0.0311575159, -0.000961541606, -0.000648512971, 0.0516233817, 0.998666406, 0.0311656371, -0.998180449, 0.0516184904)
                },
            
                [164] = {
                    ["fov"] = 79.11290322580645,
                    ["cframe"] = CFrame.new(0.524924278, 2.45983887, -0.00426101685, 0.999513984, 0.0311575159, -0.000961541606, -0.000648512971, 0.0516233817, 0.998666406, 0.0311656371, -0.998180449, 0.0516184904)
                },
            
                [165] = {
                    ["fov"] = 79.03225806451613,
                    ["cframe"] = CFrame.new(0.524924278, 2.45983887, -0.00426101685, 0.999513984, 0.0311575159, -0.000961541606, -0.000648512971, 0.0516233817, 0.998666406, 0.0311656371, -0.998180449, 0.0516184904)
                },
            
                [166] = {
                    ["fov"] = 78.95161290322581,
                    ["cframe"] = CFrame.new(0.524924278, 2.45983887, -0.00426101685, 0.999513984, 0.0311575159, -0.000961541606, -0.000648512971, 0.0516233817, 0.998666406, 0.0311656371, -0.998180449, 0.0516184904)
                },
            
                [167] = {
                    ["fov"] = 78.87096774193549,
                    ["cframe"] = CFrame.new(0.524924278, 2.45983887, -0.00426101685, 0.999513984, 0.0311575159, -0.000961541606, -0.000648512971, 0.0516233817, 0.998666406, 0.0311656371, -0.998180449, 0.0516184904)
                },
            
                [168] = {
                    ["fov"] = 78.79032258064517,
                    ["cframe"] = CFrame.new(0.524924278, 2.45983887, -0.00426101685, 0.999513984, 0.0311575159, -0.000961541606, -0.000648512971, 0.0516233817, 0.998666406, 0.0311656371, -0.998180449, 0.0516184904)
                },
            
                [169] = {
                    ["fov"] = 78.70967741935483,
                    ["cframe"] = CFrame.new(0.524924278, 2.45983887, -0.00426101685, 0.999513984, 0.0311575159, -0.000961541606, -0.000648512971, 0.0516233817, 0.998666406, 0.0311656371, -0.998180449, 0.0516184904)
                },
            
                [170] = {
                    ["fov"] = 78.62903225806451,
                    ["cframe"] = CFrame.new(0.524924278, 2.45983887, -0.00426101685, 0.999513984, 0.0311575159, -0.000961541606, -0.000648512971, 0.0516233817, 0.998666406, 0.0311656371, -0.998180449, 0.0516184904)
                },
            
                [171] = {
                    ["fov"] = 78.54838709677419,
                    ["cframe"] = CFrame.new(0.524924278, 2.45983887, -0.00426101685, 0.999513984, 0.0311575159, -0.000961541606, -0.000648512971, 0.0516233817, 0.998666406, 0.0311656371, -0.998180449, 0.0516184904)
                },
            
                [172] = {
                    ["fov"] = 78.46774193548387,
                    ["cframe"] = CFrame.new(0.524924278, 2.45983887, -0.00426101685, 0.999513984, 0.0311575159, -0.000961541606, -0.000648512971, 0.0516233817, 0.998666406, 0.0311656371, -0.998180449, 0.0516184904)
                },
            
                [173] = {
                    ["fov"] = 78.38709677419355,
                    ["cframe"] = CFrame.new(0.524924278, 2.45983887, -0.00426101685, 0.999513984, 0.0311575159, -0.000961541606, -0.000648512971, 0.0516233817, 0.998666406, 0.0311656371, -0.998180449, 0.0516184904)
                },
            
                [174] = {
                    ["fov"] = 78.30645161290323,
                    ["cframe"] = CFrame.new(0.524924278, 2.45983887, -0.00426101685, 0.999513984, 0.0311575159, -0.000961541606, -0.000648512971, 0.0516233817, 0.998666406, 0.0311656371, -0.998180449, 0.0516184904)
                },
            
                [175] = {
                    ["fov"] = 78.2258064516129,
                    ["cframe"] = CFrame.new(0.524924278, 2.45983887, -0.00426101685, 0.999513984, 0.0311575159, -0.000961541606, -0.000648512971, 0.0516233817, 0.998666406, 0.0311656371, -0.998180449, 0.0516184904)
                },
            
                [176] = {
                    ["fov"] = 78.14516129032258,
                    ["cframe"] = CFrame.new(0.524924278, 2.45983887, -0.00426101685, 0.999513984, 0.0311575159, -0.000961541606, -0.000648512971, 0.0516233817, 0.998666406, 0.0311656371, -0.998180449, 0.0516184904)
                },
            
                [177] = {
                    ["fov"] = 78.06451612903226,
                    ["cframe"] = CFrame.new(0.524924278, 2.45983887, -0.00426101685, 0.999513984, 0.0311575159, -0.000961541606, -0.000648512971, 0.0516233817, 0.998666406, 0.0311656371, -0.998180449, 0.0516184904)
                },
            
                [178] = {
                    ["fov"] = 77.98387096774194,
                    ["cframe"] = CFrame.new(0.524924278, 2.45983887, -0.00426101685, 0.999513984, 0.0311575159, -0.000961541606, -0.000648512971, 0.0516233817, 0.998666406, 0.0311656371, -0.998180449, 0.0516184904)
                },
            
                [179] = {
                    ["fov"] = 77.90322580645162,
                    ["cframe"] = CFrame.new(0.524924278, 2.45983887, -0.00426101685, 0.999513984, 0.0311575159, -0.000961541606, -0.000648512971, 0.0516233817, 0.998666406, 0.0311656371, -0.998180449, 0.0516184904)
                },
            
                [180] = {
                    ["fov"] = 77.8225806451613,
                    ["cframe"] = CFrame.new(0.524924278, 2.45983887, -0.00426101685, 0.999513984, 0.0311575159, -0.000961541606, -0.000648512971, 0.0516233817, 0.998666406, 0.0311656371, -0.998180449, 0.0516184904)
                },
            
                [181] = {
                    ["fov"] = 77.74193548387098,
                    ["cframe"] = CFrame.new(0.524924278, 2.45983887, -0.00426101685, 0.999513984, 0.0311575159, -0.000961541606, -0.000648512971, 0.0516233817, 0.998666406, 0.0311656371, -0.998180449, 0.0516184904)
                },
            
                [182] = {
                    ["fov"] = 77.66129032258064,
                    ["cframe"] = CFrame.new(0.524924278, 2.45983887, -0.00426101685, 0.999513984, 0.0311575159, -0.000961541606, -0.000648512971, 0.0516233817, 0.998666406, 0.0311656371, -0.998180449, 0.0516184904)
                },
            
                [183] = {
                    ["fov"] = 77.58064516129032,
                    ["cframe"] = CFrame.new(0.524924278, 2.45983887, -0.00426101685, 0.999513984, 0.0311575159, -0.000961541606, -0.000648512971, 0.0516233817, 0.998666406, 0.0311656371, -0.998180449, 0.0516184904)
                },
            
                [184] = {
                    ["fov"] = 77.5,
                    ["cframe"] = CFrame.new(0.524924278, 2.45983887, -0.00426101685, 0.999513984, 0.0311575159, -0.000961541606, -0.000648512971, 0.0516233817, 0.998666406, 0.0311656371, -0.998180449, 0.0516184904)
                },
            
                [185] = {
                    ["fov"] = 77.41935483870968,
                    ["cframe"] = CFrame.new(0.524924278, 2.45983887, -0.00426101685, 0.999513984, 0.0311575159, -0.000961541606, -0.000648512971, 0.0516233817, 0.998666406, 0.0311656371, -0.998180449, 0.0516184904)
                },
            
                [186] = {
                    ["fov"] = 77.33870967741936,
                    ["cframe"] = CFrame.new(0.524924278, 2.45983887, -0.00426101685, 0.999513984, 0.0311575159, -0.000961541606, -0.000648512971, 0.0516233817, 0.998666406, 0.0311656371, -0.998180449, 0.0516184904)
                },
            
                [187] = {
                    ["fov"] = 77.25806451612904,
                    ["cframe"] = CFrame.new(0.524924278, 2.45983887, -0.00426101685, 0.999513984, 0.0311575159, -0.000961541606, -0.000648512971, 0.0516233817, 0.998666406, 0.0311656371, -0.998180449, 0.0516184904)
                },
            
                [188] = {
                    ["fov"] = 77.1774193548387,
                    ["cframe"] = CFrame.new(0.524924278, 2.45983887, -0.00426101685, 0.999513984, 0.0311575159, -0.000961541606, -0.000648512971, 0.0516233817, 0.998666406, 0.0311656371, -0.998180449, 0.0516184904)
                },
            
                [189] = {
                    ["fov"] = 77.09677419354838,
                    ["cframe"] = CFrame.new(0.524924278, 2.45983887, -0.00426101685, 0.999513984, 0.0311575159, -0.000961541606, -0.000648512971, 0.0516233817, 0.998666406, 0.0311656371, -0.998180449, 0.0516184904)
                },
            
                [190] = {
                    ["fov"] = 77.01612903225806,
                    ["cframe"] = CFrame.new(0.524924278, 2.45983887, -0.00426101685, 0.999513984, 0.0311575159, -0.000961541606, -0.000648512971, 0.0516233817, 0.998666406, 0.0311656371, -0.998180449, 0.0516184904)
                },
            
                [191] = {
                    ["fov"] = 76.93548387096774,
                    ["cframe"] = CFrame.new(0.524924278, 2.45983887, -0.00426101685, 0.999513984, 0.0311575159, -0.000961541606, -0.000648512971, 0.0516233817, 0.998666406, 0.0311656371, -0.998180449, 0.0516184904)
                },
            
                [192] = {
                    ["fov"] = 76.85483870967742,
                    ["cframe"] = CFrame.new(0.524924278, 2.45983887, -0.00426101685, 0.999513984, 0.0311575159, -0.000961541606, -0.000648512971, 0.0516233817, 0.998666406, 0.0311656371, -0.998180449, 0.0516184904)
                },
            
                [193] = {
                    ["fov"] = 76.7741935483871,
                    ["cframe"] = CFrame.new(0.524924278, 2.45983887, -0.00426101685, 0.999513984, 0.0311575159, -0.000961541606, -0.000648512971, 0.0516233817, 0.998666406, 0.0311656371, -0.998180449, 0.0516184904)
                },
            
                [194] = {
                    ["fov"] = 76.69354838709677,
                    ["cframe"] = CFrame.new(0.524924278, 2.45983887, -0.00426101685, 0.999513984, 0.0311575159, -0.000961541606, -0.000648512971, 0.0516233817, 0.998666406, 0.0311656371, -0.998180449, 0.0516184904)
                },
            
                [195] = {
                    ["fov"] = 76.61290322580645,
                    ["cframe"] = CFrame.new(0.524924278, 2.45983887, -0.00426101685, 0.999513984, 0.0311575159, -0.000961541606, -0.000648512971, 0.0516233817, 0.998666406, 0.0311656371, -0.998180449, 0.0516184904)
                },
            
                [196] = {
                    ["fov"] = 76.53225806451613,
                    ["cframe"] = CFrame.new(0.524924278, 2.45983887, -0.00426101685, 0.999513984, 0.0311575159, -0.000961541606, -0.000648512971, 0.0516233817, 0.998666406, 0.0311656371, -0.998180449, 0.0516184904)
                },
            
                [197] = {
                    ["fov"] = 76.45161290322581,
                    ["cframe"] = CFrame.new(0.524924278, 2.45983887, -0.00426101685, 0.999513984, 0.0311575159, -0.000961541606, -0.000648512971, 0.0516233817, 0.998666406, 0.0311656371, -0.998180449, 0.0516184904)
                },
            
                [198] = {
                    ["fov"] = 76.37096774193549,
                    ["cframe"] = CFrame.new(0.524924278, 2.45983887, -0.00426101685, 0.999513984, 0.0311575159, -0.000961541606, -0.000648512971, 0.0516233817, 0.998666406, 0.0311656371, -0.998180449, 0.0516184904)
                },
            
                [199] = {
                    ["fov"] = 76.29032258064517,
                    ["cframe"] = CFrame.new(1.53290081, 7.08990479, 7.83015728, 0.999513984, 0.0174390189, -0.0258378778, -0.000648512971, 0.840325296, 0.542082071, 0.0311656371, -0.541801929, 0.83992821)
                },
            
                [200] = {
                    ["fov"] = 76.20967741935483,
                    ["cframe"] = CFrame.new(1.53290081, 7.08990479, 7.83015728, 0.999513984, 0.0174390189, -0.0258378778, -0.000648512971, 0.840325296, 0.542082071, 0.0311656371, -0.541801929, 0.83992821)
                },
            
                [201] = {
                    ["fov"] = 76.12903225806451,
                    ["cframe"] = CFrame.new(62.9883881, -100.355438, -75.4776306, -0.645041525, 0.47701785, 0.596971869, -0.0770870745, 0.73661989, -0.671899438, -0.760249257, -0.479421824, -0.438378513)
                },
            
                [202] = {
                    ["fov"] = 76.04838709677419,
                    ["cframe"] = CFrame.new(59.1582336, -101.469345, -69.6347504, -0.679983914, 0.443978131, 0.583528161, -0.0429114066, 0.770375192, -0.636145115, -0.731970251, -0.457608491, -0.504791021)
                },
            
                [203] = {
                    ["fov"] = 75.96774193548387,
                    ["cframe"] = CFrame.new(60.3019333, -101.378769, -69.9753418, -0.669815719, 0.451529682, 0.589464188, -0.0408722609, 0.770237684, -0.63644588, -0.741401792, -0.450394124, -0.497462332)
                },
            
                [204] = {
                    ["fov"] = 75.88709677419355,
                    ["cframe"] = CFrame.new(61.3933029, -101.292336, -70.3003464, -0.659988046, 0.45864138, 0.595032513, -0.0389306545, 0.770086467, -0.63675046, -0.750266612, -0.443412751, -0.490392625)
                },
            
                [205] = {
                    ["fov"] = 75.80645161290323,
                    ["cframe"] = CFrame.new(62.4347305, -101.209854, -70.6104813, -0.650498748, 0.465340674, 0.600257993, -0.0370820016, 0.769923925, -0.637057424, -0.758601665, -0.436663777, -0.483578801)
                },
            
                [206] = {
                    ["fov"] = 75.7258064516129,
                    ["cframe"] = CFrame.new(63.4285126, -101.131149, -70.9064331, -0.641343653, 0.471653193, 0.605163097, -0.0353220403, 0.769752145, -0.637364924, -0.766440749, -0.430145293, -0.477016032)
                },
            
                [207] = {
                    ["fov"] = 75.64516129032258,
                    ["cframe"] = CFrame.new(64.3768234, -101.056046, -71.1888351, -0.632517099, 0.47760272, 0.609769106, -0.0336463898, 0.769573331, -0.637671471, -0.773815632, -0.42385447, -0.470698714)
                },
            
                [208] = {
                    ["fov"] = 75.56451612903226,
                    ["cframe"] = CFrame.new(65.2817459, -100.984383, -71.4583206, -0.624013782, 0.483211875, 0.614095807, -0.0320512503, 0.769388974, -0.63797605, -0.780756116, -0.417788178, -0.464621842)
                },
            
                [209] = {
                    ["fov"] = 75.48387096774194,
                    ["cframe"] = CFrame.new(66.1452713, -100.915993, -71.715477, -0.615826786, 0.488501757, 0.618161738, -0.0305326879, 0.769200623, -0.63827759, -0.787290037, -0.411942422, -0.458779097)
                },
            
                [210] = {
                    ["fov"] = 75.40322580645162,
                    ["cframe"] = CFrame.new(66.9692764, -100.850731, -71.9608612, -0.607949376, 0.493491888, 0.621983886, -0.0290870816, 0.76900959, -0.638575256, -0.793443203, -0.406312883, -0.453164697)
                },
            
                [211] = {
                    ["fov"] = 75.3225806451613,
                    ["cframe"] = CFrame.new(67.7555847, -100.78846, -72.1950226, -0.600373507, 0.498200625, 0.625578165, -0.0277108252, 0.768816948, -0.638868213, -0.799239635, -0.400894761, -0.447771788)
                },
            
                [212] = {
                    ["fov"] = 75.24193548387098,
                    ["cframe"] = CFrame.new(68.5059128, -100.729034, -72.4184723, -0.593091607, 0.502645314, 0.628959417, -0.0264007002, 0.768623829, -0.639155984, -0.804701924, -0.39568305, -0.442594171)
                },
            
                [213] = {
                    ["fov"] = 75.16129032258064,
                    ["cframe"] = CFrame.new(69.2219086, -100.672333, -72.631691, -0.586095452, 0.506842017, 0.632141829, -0.0251534432, 0.768431067, -0.639437973, -0.809851527, -0.390672237, -0.43762517)
                },
            
                [214] = {
                    ["fov"] = 75.08064516129032,
                    ["cframe"] = CFrame.new(69.9051514, -100.618217, -72.8351593, -0.579377234, 0.510805845, 0.635137975, -0.0239660144, 0.768239379, -0.639714003, -0.814707577, -0.385857224, -0.432858527)
                },
            
                [215] = {
                    ["fov"] = 75,
                    ["cframe"] = CFrame.new(70.5571289, -100.566582, -73.0293198, -0.572927415, 0.514550567, 0.637959599, -0.0228354782, 0.768049479, -0.639983296, -0.819288254, -0.381231904, -0.428286612)
                },
            
                [216] = {
                    ["fov"] = 75.63236087808001,
                    ["cframe"] = CFrame.new(71.1792755, -100.517311, -73.214592, -0.566738009, 0.518089592, 0.640618086, -0.021759212, 0.767861843, -0.640245855, -0.823610902, -0.376790941, -0.423903346)
                },
            
                [217] = {
                    ["fov"] = 76.24960636928,
                    ["cframe"] = CFrame.new(71.7729568, -100.470291, -73.3913879, -0.560801029, 0.521435142, 0.643123746, -0.0207343698, 0.767677069, -0.640501499, -0.827691317, -0.372528434, -0.41970253)
                },
            
                [218] = {
                    ["fov"] = 76.85197928448,
                    ["cframe"] = CFrame.new(72.3394699, -100.42543, -73.5600967, -0.555107415, 0.524598718, 0.645486355, -0.0197584927, 0.767495453, -0.640749931, -0.831544399, -0.368438601, -0.41567719)
                },
            
                [219] = {
                    ["fov"] = 77.43972046848,
                    ["cframe"] = CFrame.new(72.8800659, -100.382614, -73.7210846, -0.549648643, 0.52759099, 0.647714496, -0.0188292563, 0.767317295, -0.640991032, -0.83518374, -0.364515841, -0.411820769)
                },
            
                [220] = {
                    ["fov"] = 78.0130688,
                    ["cframe"] = CFrame.new(73.3959274, -100.341759, -73.8747101, -0.544417441, 0.53042239, 0.649817348, -0.0179444551, 0.767143011, -0.641225219, -0.838622928, -0.36075452, -0.408127964)
                },
            
                [221] = {
                    ["fov"] = 78.57226119168,
                    ["cframe"] = CFrame.new(73.8881836, -100.302773, -74.0213013, -0.539404631, 0.533101976, 0.651801825, -0.0171017647, 0.766972661, -0.641451895, -0.841873407, -0.357148886, -0.40459168)
                },
            
                [222] = {
                    ["fov"] = 79.11753259008,
                    ["cframe"] = CFrame.new(74.3579178, -100.265572, -74.1611862, -0.534602165, 0.535638571, 0.653675675, -0.0162992477, 0.766806662, -0.641671181, -0.844946623, -0.353693187, -0.401205957)
                },
            
                [223] = {
                    ["fov"] = 79.64911597568,
                    ["cframe"] = CFrame.new(74.80616, -100.230072, -74.2946701, -0.530003369, 0.538040817, 0.655445755, -0.0155349374, 0.766644835, -0.641883552, -0.847853601, -0.350382566, -0.397965968)
                },
            
                [224] = {
                    ["fov"] = 80.16724236288,
                    ["cframe"] = CFrame.new(75.2338943, -100.196198, -74.4220505, -0.52559936, 0.540315866, 0.657118022, -0.0148068368, 0.766487598, -0.642088413, -0.850603402, -0.347211093, -0.394864976)
                },
            
                [225] = {
                    ["fov"] = 80.6721408,
                    ["cframe"] = CFrame.new(75.6420593, -100.163872, -74.543602, -0.521383286, 0.542471647, 0.658698738, -0.0141133964, 0.766334653, -0.642286539, -0.85320586, -0.344173938, -0.391897976)
                },
            
                [226] = {
                    ["fov"] = 81.16403836928,
                    ["cframe"] = CFrame.new(76.0315475, -100.133026, -74.6595917, -0.517347753, 0.544514537, 0.660193264, -0.0134528875, 0.766186357, -0.642477632, -0.855669439, -0.341265857, -0.389059484)
                },
            
                [227] = {
                    ["fov"] = 81.64316018688,
                    ["cframe"] = CFrame.new(76.4032135, -100.103592, -74.7702713, -0.513486266, 0.546451092, 0.661607027, -0.0128235817, 0.76604259, -0.642661989, -0.858002424, -0.338482022, -0.386344969)
                },
            
                [228] = {
                    ["fov"] = 82.10972940287999,
                    ["cframe"] = CFrame.new(76.7578735, -100.0755, -74.8758926, -0.509790719, 0.548287153, 0.662944257, -0.012224108, 0.765903354, -0.642839551, -0.860211909, -0.335817397, -0.383748114)
                },
            
                [229] = {
                    ["fov"] = 82.56396720128,
                    ["cframe"] = CFrame.new(77.0963135, -100.048698, -74.9766769, -0.50625509, 0.550028443, 0.664209783, -0.0116529167, 0.765768647, -0.643010557, -0.862305105, -0.333267272, -0.381264865)
                },
            
                [230] = {
                    ["fov"] = 83.0060928,
                    ["cframe"] = CFrame.new(77.4192581, -100.023125, -75.0728455, -0.502873182, 0.551680207, 0.665407896, -0.0111086667, 0.765638471, -0.643175244, -0.864288926, -0.330827355, -0.378890634)
                },
            
                [231] = {
                    ["fov"] = 83.43632345088,
                    ["cframe"] = CFrame.new(77.7274323, -99.9987183, -75.1646194, -0.499638647, 0.553247452, 0.666542351, -0.0105901659, 0.765512586, -0.643333673, -0.866169274, -0.328493118, -0.37662077)
                },
            
                [232] = {
                    ["fov"] = 83.85487443968,
                    ["cframe"] = CFrame.new(78.0215073, -99.9754257, -75.2521973, -0.496545136, 0.554734588, 0.667616904, -0.0100960433, 0.76539129, -0.643486023, -0.867952168, -0.326260179, -0.374450684)
                },
            
                [233] = {
                    ["fov"] = 84.26195908608,
                    ["cframe"] = CFrame.new(78.302124, -99.9532013, -75.335762, -0.493587196, 0.556146383, 0.66863513, -0.00962522626, 0.765274107, -0.643632591, -0.869643092, -0.324124515, -0.372376442)
                },
            
                [234] = {
                    ["fov"] = 84.65778874368,
                    ["cframe"] = CFrame.new(78.5699005, -99.9319916, -75.4155045, -0.490759224, 0.557486713, 0.66960001, -0.00917643309, 0.765161157, -0.643773377, -0.871247053, -0.322082162, -0.37039423)
                },
            
                [235] = {
                    ["fov"] = 85.0425728,
                    ["cframe"] = CFrame.new(78.8254242, -99.9117584, -75.4916, -0.48805517, 0.558759391, 0.670514584, -0.00874882936, 0.765052378, -0.643908501, -0.87276876, -0.320129186, -0.368499279)
                },
            
                [236] = {
                    ["fov"] = 85.41651867648,
                    ["cframe"] = CFrame.new(79.0692596, -99.8924484, -75.5642166, -0.485470861, 0.559968352, 0.67138207, -0.00834128261, 0.764947534, -0.644038558, -0.874213219, -0.318262041, -0.366688967)
                },
            
                [237] = {
                    ["fov"] = 85.77983182848,
                    ["cframe"] = CFrame.new(79.3019409, -99.8740158, -75.6335068, -0.483000576, 0.561116695, 0.672204733, -0.00795283914, 0.764846742, -0.644163311, -0.875584245, -0.316477001, -0.364959002)
                },
            
                [238] = {
                    ["fov"] = 86.13271574528,
                    ["cframe"] = CFrame.new(79.5239716, -99.8564377, -75.6996307, -0.480639338, 0.562207699, 0.672984958, -0.00758266449, 0.764749646, -0.644282997, -0.876885891, -0.314770579, -0.363305807)
                },
            
                [239] = {
                    ["fov"] = 86.47537195008,
                    ["cframe"] = CFrame.new(79.7358475, -99.839653, -75.7627258, -0.478382647, 0.563244462, 0.673725367, -0.00722965598, 0.764656425, -0.644397616, -0.878121734, -0.313139439, -0.361726344)
                },
            
                [240] = {
                    ["fov"] = 86.80799999999999,
                    ["cframe"] = CFrame.new(79.9380264, -99.8236465, -75.8229294, -0.476226509, 0.564229846, 0.674428105, -0.00689324737, 0.76456672, -0.644507766, -0.879295826, -0.311580598, -0.360217571)
                },
            
                [241] = {
                    ["fov"] = 87.13079748608,
                    ["cframe"] = CFrame.new(80.1309509, -99.8083649, -75.8803864, -0.474165976, 0.565166533, 0.675095141, -0.00657254457, 0.764480531, -0.644613266, -0.880410969, -0.31009078, -0.358776093)
                },
            
                [242] = {
                    ["fov"] = 87.44396003328,
                    ["cframe"] = CFrame.new(80.3150558, -99.7937851, -75.9352112, -0.472197354, 0.566057086, 0.675728559, -0.00626680255, 0.7643978, -0.644714475, -0.88147068, -0.308667064, -0.357399225)
                },
            
                [243] = {
                    ["fov"] = 87.74768130048,
                    ["cframe"] = CFrame.new(80.4907303, -99.7798691, -75.9875259, -0.47031641, 0.566903949, 0.67633003, -0.00597533584, 0.764318347, -0.644811392, -0.882477582, -0.307306707, -0.356083989)
                },
            
                [244] = {
                    ["fov"] = 88.04215298048,
                    ["cframe"] = CFrame.new(80.658371, -99.7665939, -76.0374451, -0.468519956, 0.567709386, 0.676901519, -0.00569742918, 0.764242053, -0.644904435, -0.883434832, -0.306007028, -0.354828238)
                },
            
                [245] = {
                    ["fov"] = 88.3275648,
                    ["cframe"] = CFrame.new(80.8183441, -99.7539215, -76.0850906, -0.466803432, 0.568475425, 0.677444398, -0.00543248653, 0.764168799, -0.644993544, -0.884344757, -0.304765195, -0.353628457)
                },
            
                [246] = {
                    ["fov"] = 88.60410451967999,
                    ["cframe"] = CFrame.new(80.970993, -99.7418365, -76.1305466, -0.465163469, 0.569204092, 0.677959919, -0.00517985225, 0.764098585, -0.645078659, -0.88520968, -0.303578734, -0.352482378)
                },
            
                [247] = {
                    ["fov"] = 88.87195793408,
                    ["cframe"] = CFrame.new(81.1166534, -99.7303009, -76.1739273, -0.463597417, 0.569897294, 0.678450167, -0.00493898988, 0.764031291, -0.645160317, -0.886032283, -0.302445412, -0.351388216)
                },
            
                [248] = {
                    ["fov"] = 89.13130887168,
                    ["cframe"] = CFrame.new(81.255661, -99.7192917, -76.2153168, -0.462101549, 0.570557177, 0.678916216, -0.00470936298, 0.76396668, -0.645238638, -0.886814833, -0.301362872, -0.350343287)
                },
            
                [249] = {
                    ["fov"] = 89.38233919488,
                    ["cframe"] = CFrame.new(81.388298, -99.708786, -76.2548218, -0.460672736, 0.571184874, 0.679359198, -0.00449034572, 0.76390481, -0.645313382, -0.887558937, -0.300328672, -0.349345326)
                },
            
                [250] = {
                    ["fov"] = 89.6252288,
                    ["cframe"] = CFrame.new(81.5148697, -99.698761, -76.292511, -0.459308177, 0.57178247, 0.679780304, -0.00428149104, 0.763845444, -0.645385027, -0.888266861, -0.299340963, -0.348392427)
                },
            
                [251] = {
                    ["fov"] = 89.86015561728,
                    ["cframe"] = CFrame.new(81.6356506, -99.6891937, -76.3284836, -0.458004832, 0.572351098, 0.680180728, -0.00408238173, 0.76378864, -0.645453513, -0.888940394, -0.298397541, -0.347482383)
                },
            
                [252] = {
                    ["fov"] = 90.08729561088,
                    ["cframe"] = CFrame.new(81.7509003, -99.680069, -76.3628006, -0.456760466, 0.572892547, 0.680561781, -0.00389245152, 0.763734221, -0.645519078, -0.889581323, -0.297496557, -0.346613705)
                },
            
                [253] = {
                    ["fov"] = 90.30682277888,
                    ["cframe"] = CFrame.new(81.8608856, -99.6713562, -76.3955536, -0.45557189, 0.573408008, 0.680924058, -0.00371131301, 0.763682067, -0.645581841, -0.890191317, -0.296636075, -0.345784009)
                },
            
                [254] = {
                    ["fov"] = 90.51890915328,
                    ["cframe"] = CFrame.new(81.9658356, -99.6630478, -76.4268112, -0.454437077, 0.573898733, 0.681268811, -0.00353860855, 0.763632178, -0.645641804, -0.890771866, -0.295814335, -0.344991982)
                },
            
                [255] = {
                    ["fov"] = 90.7237248,
                    ["cframe"] = CFrame.new(82.065979, -99.6551132, -76.4566345, -0.453353614, 0.574366212, 0.681596994, -0.00337389112, 0.763584375, -0.645699322, -0.891324639, -0.29502964, -0.344235957)
                },
            
                [256] = {
                    ["fov"] = 90.92143781888001,
                    ["cframe"] = CFrame.new(82.1615448, -99.6475449, -76.4850922, -0.452318937, 0.57481122, 0.681908906, -0.00321671367, 0.763538599, -0.645754218, -0.891850531, -0.29428035, -0.343513966)
                },
            
                [257] = {
                    ["fov"] = 91.11221434368,
                    ["cframe"] = CFrame.new(82.252739, -99.6403275, -76.5122452, -0.45133093, 0.575235128, 0.682206035, -0.00306692719, 0.76349473, -0.645806789, -0.892351508, -0.293564767, -0.342824638)
                },
            
                [258] = {
                    ["fov"] = 91.29621854208,
                    ["cframe"] = CFrame.new(82.3397598, -99.6334305, -76.5381622, -0.450387657, 0.57563889, 0.682488859, -0.00292402506, 0.763452888, -0.645856977, -0.892828405, -0.292881578, -0.342166603)
                },
            
                [259] = {
                    ["fov"] = 91.47361261568,
                    ["cframe"] = CFrame.new(82.4227982, -99.6268539, -76.5628891, -0.449487209, 0.576023519, 0.682758152, -0.00278770924, 0.763412833, -0.645904958, -0.893282712, -0.292229176, -0.341538548)
                },
            
                [260] = {
                    ["fov"] = 91.6445568,
                    ["cframe"] = CFrame.new(82.502037, -99.6205826, -76.5864868, -0.448627353, 0.576389909, 0.683014274, -0.0026576817, 0.763374448, -0.645950854, -0.893715143, -0.291606367, -0.340938807)
                },
            
                [261] = {
                    ["fov"] = 91.80920936448,
                    ["cframe"] = CFrame.new(82.577652, -99.6145935, -76.6090088, -0.447806388, 0.576738954, 0.683258295, -0.00253367424, 0.763337731, -0.645994723, -0.894127131, -0.291011631, -0.340366244)
                },
            
                [262] = {
                    ["fov"] = 91.96772661247999,
                    ["cframe"] = CFrame.new(82.6498032, -99.6088791, -76.6304932, -0.447022527, 0.577071548, 0.683490574, -0.00241541862, 0.763302565, -0.646036685, -0.894519508, -0.290443838, -0.339819551)
                },
            
                [263] = {
                    ["fov"] = 92.12026288128,
                    ["cframe"] = CFrame.new(82.7186584, -99.6034241, -76.651001, -0.446274698, 0.577388525, 0.683711886, -0.00230249763, 0.763269007, -0.646076798, -0.894893408, -0.289901823, -0.339298248)
                },
            
                [264] = {
                    ["fov"] = 92.26697054208,
                    ["cframe"] = CFrame.new(82.7843552, -99.5982208, -76.6705627, -0.445560247, 0.577690482, 0.683922529, -0.00219491124, 0.76323688, -0.646115065, -0.895249367, -0.289384305, -0.338800073)
                },
            
                [265] = {
                    ["fov"] = 92.408,
                    ["cframe"] = CFrame.new(82.8470535, -99.5932541, -76.6892319, -0.44487831, 0.577978134, 0.684123218, -0.00209224224, 0.763206244, -0.646151602, -0.895588577, -0.288890183, -0.338324606)
                },
            
                [266] = {
                    ["fov"] = 92.54349969408,
                    ["cframe"] = CFrame.new(82.9068756, -99.5885162, -76.7070465, -0.444227695, 0.578252435, 0.684314489, -0.00199431181, 0.763176858, -0.64618665, -0.895911932, -0.288418591, -0.337871134)
                },
            
                [267] = {
                    ["fov"] = 92.67361609727999,
                    ["cframe"] = CFrame.new(82.963974, -99.5839996, -76.7240524, -0.443606168, 0.578513741, 0.684496522, -0.00190088153, 0.763148785, -0.646220028, -0.89621985, -0.287968278, -0.337437809)
                },
            
                [268] = {
                    ["fov"] = 92.79849371648,
                    ["cframe"] = CFrame.new(83.0184479, -99.5796814, -76.7402725, -0.443012953, 0.578762889, 0.684669971, -0.00181177258, 0.763121963, -0.646251917, -0.896513343, -0.287538469, -0.337024331)
                },
            
                [269] = {
                    ["fov"] = 92.91827509248,
                    ["cframe"] = CFrame.new(83.0704346, -99.5755615, -76.7557526, -0.442446947, 0.579000354, 0.684835315, -0.00172674656, 0.763096333, -0.646282434, -0.896793127, -0.28712815, -0.336629868)
                },
            
                [270] = {
                    ["fov"] = 93.0331008,
                    ["cframe"] = CFrame.new(83.1200409, -99.57164, -76.7705307, -0.441906512, 0.579226673, 0.68499285, -0.00164562464, 0.763071835, -0.646311581, -0.897059619, -0.286736488, -0.336253285)
                },
            
                [271] = {
                    ["fov"] = 93.14310944768,
                    ["cframe"] = CFrame.new(83.1673737, -99.5678864, -76.7846222, -0.441390663, 0.579442501, 0.685142934, -0.00156828761, 0.76304841, -0.646339476, -0.897313774, -0.286362648, -0.33589375)
                },
            
                [272] = {
                    ["fov"] = 93.24843767808,
                    ["cframe"] = CFrame.new(83.2125473, -99.5643082, -76.7980804, -0.440898418, 0.579648197, 0.685286045, -0.00149446726, 0.763025999, -0.64636606, -0.897555947, -0.286005795, -0.335550785)
                },
            
                [273] = {
                    ["fov"] = 93.34922016768,
                    ["cframe"] = CFrame.new(83.2556534, -99.5608978, -76.8109131, -0.440428406, 0.579844356, 0.685422242, -0.00142404437, 0.763004661, -0.646391511, -0.897786796, -0.285665095, -0.335223198)
                },
            
                [274] = {
                    ["fov"] = 93.44558962688001,
                    ["cframe"] = CFrame.new(83.2967834, -99.5576401, -76.8231659, -0.439979672, 0.580031157, 0.68555212, -0.00135684013, 0.762984216, -0.646415651, -0.898006678, -0.285339952, -0.334910572)
                },
            
                [275] = {
                    ["fov"] = 93.5376768,
                    ["cframe"] = CFrame.new(83.3360291, -99.5545273, -76.8348541, -0.439551413, 0.580209434, 0.685675919, -0.00129276514, 0.762964666, -0.646438837, -0.898216426, -0.285029531, -0.334612131)
                },
            
                [276] = {
                    ["fov"] = 93.62561046528,
                    ["cframe"] = CFrame.new(83.3734894, -99.5515671, -76.8460083, -0.439142644, 0.580379367, 0.685793936, -0.00123164058, 0.762946069, -0.64646095, -0.89841646, -0.284733295, -0.33432734)
                },
            
                [277] = {
                    ["fov"] = 93.70951743488,
                    ["cframe"] = CFrame.new(83.4092255, -99.5487366, -76.8566513, -0.438752651, 0.580541492, 0.68590647, -0.00117328763, 0.762928247, -0.64648211, -0.898607075, -0.284450501, -0.334055662)
                },
            
                [278] = {
                    ["fov"] = 93.78952255488,
                    ["cframe"] = CFrame.new(83.4433289, -99.5460358, -76.866806, -0.43838042, 0.580695987, 0.686013818, -0.00111764669, 0.76291126, -0.646502256, -0.898788929, -0.284180611, -0.333796382)
                },
            
                [279] = {
                    ["fov"] = 93.86574870528,
                    ["cframe"] = CFrame.new(83.4758759, -99.543457, -76.8764954, -0.438025117, 0.580843389, 0.68611598, -0.00106453896, 0.762894928, -0.646521628, -0.898962259, -0.28392303, -0.333548844)
                },
            
                [280] = {
                    ["fov"] = 93.9383168,
                    ["cframe"] = CFrame.new(83.5069351, -99.5409927, -76.8857422, -0.437685996, 0.580983877, 0.686213493, -0.00101387501, 0.762879491, -0.646539986, -0.899127483, -0.283677101, -0.333312631)
                },
            
                [281] = {
                    ["fov"] = 94.00734578688,
                    ["cframe"] = CFrame.new(83.5365677, -99.5386505, -76.8945694, -0.437362283, 0.581117868, 0.686306417, -0.000965565443, 0.76286459, -0.646557629, -0.899285018, -0.283442497, -0.333087087)
                },
            
                [282] = {
                    ["fov"] = 94.07295264768,
                    ["cframe"] = CFrame.new(83.5648499, -99.5364075, -76.9029922, -0.437053263, 0.581245661, 0.686394989, -0.000919431448, 0.762850463, -0.646574318, -0.899435222, -0.283218443, -0.332871914)
                },
            
                [283] = {
                    ["fov"] = 94.13525239808,
                    ["cframe"] = CFrame.new(83.591835, -99.5342712, -76.911026, -0.436758399, 0.581367493, 0.68647939, -0.000875413418, 0.762836933, -0.646590352, -0.899578393, -0.283004731, -0.332666516)
                },
            
                [284] = {
                    ["fov"] = 94.19435808768,
                    ["cframe"] = CFrame.new(83.6175842, -99.5322342, -76.9186935, -0.436476946, 0.581483722, 0.686559975, -0.00083348155, 0.762823999, -0.64660567, -0.899715126, -0.282800615, -0.332470477)
                },
            
                [285] = {
                    ["fov"] = 94.2503808,
                    ["cframe"] = CFrame.new(83.6421509, -99.5302887, -76.9260101, -0.436208248, 0.581594586, 0.686636686, -0.000793427229, 0.762811661, -0.646620274, -0.899845362, -0.282605946, -0.332283258)
                },
            
                [286] = {
                    ["fov"] = 94.30342965247999,
                    ["cframe"] = CFrame.new(83.6656036, -99.5284271, -76.9329987, -0.435952216, 0.581700385, 0.686710119, -0.000755190849, 0.762799859, -0.646634281, -0.899969697, -0.282420158, -0.332105041)
                },
            
                [287] = {
                    ["fov"] = 94.35361179648,
                    ["cframe"] = CFrame.new(83.6879807, -99.5266571, -76.9396591, -0.435707778, 0.581801176, 0.686779857, -0.000718653202, 0.762788653, -0.646647573, -0.900088191, -0.282242775, -0.331934869)
                },
            
                [288] = {
                    ["fov"] = 94.40103241727999,
                    ["cframe"] = CFrame.new(83.7093277, -99.5249634, -76.9460144, -0.435474098, 0.581897318, 0.686846435, -0.000683963299, 0.762777865, -0.646660209, -0.900201142, -0.282073468, -0.331772089)
                },
            
                [289] = {
                    ["fov"] = 94.44579473408,
                    ["cframe"] = CFrame.new(83.7297058, -99.5233536, -76.9520874, -0.435251355, 0.58198911, 0.686910093, -0.000650763512, 0.762767613, -0.646672428, -0.900309026, -0.28191191, -0.331616938)
                },
            
                [290] = {
                    ["fov"] = 94.488,
                    ["cframe"] = CFrame.new(83.7491455, -99.5218124, -76.9578781, -0.435038328, 0.58207649, 0.686970353, -0.000619053841, 0.762757838, -0.646683872, -0.900411487, -0.281757653, -0.331468523)
                },
            
                [291] = {
                    ["fov"] = 94.52774750208,
                    ["cframe"] = CFrame.new(83.7677002, -99.52034, -76.9634018, -0.434835553, 0.582159996, 0.687028289, -0.00058889389, 0.76274848, -0.646695018, -0.900509715, -0.281610548, -0.331327319)
                },
            
                [292] = {
                    ["fov"] = 94.56513456128,
                    ["cframe"] = CFrame.new(83.7854004, -99.5189438, -76.9686737, -0.434641957, 0.582239628, 0.687083304, -0.000560075045, 0.762739539, -0.646705627, -0.900603235, -0.28147018, -0.331192493)
                },
            
                [293] = {
                    ["fov"] = 94.60025653248,
                    ["cframe"] = CFrame.new(83.8022919, -99.517601, -76.9737015, -0.434457481, 0.582315683, 0.687136114, -0.000532567501, 0.762730956, -0.64671576, -0.900692642, -0.281336159, -0.331064165)
                },
            
                [294] = {
                    ["fov"] = 94.63320680448,
                    ["cframe"] = CFrame.new(83.8184204, -99.5163269, -76.9785004, -0.434280694, 0.582388043, 0.687186062, -0.000506311655, 0.762722909, -0.646725297, -0.900777519, -0.281208187, -0.330940962)
                },
            
                [295] = {
                    ["fov"] = 94.6640768,
                    ["cframe"] = CFrame.new(83.8338013, -99.5151062, -76.9830856, -0.434112638, 0.582457066, 0.687233865, -0.0004812181, 0.762715101, -0.646734476, -0.9008587, -0.281086177, -0.330824018)
                },
            
                [296] = {
                    ["fov"] = 94.69295597568001,
                    ["cframe"] = CFrame.new(83.8484802, -99.5139465, -76.9874573, -0.433951378, 0.582522869, 0.687279224, -0.000457376242, 0.76270771, -0.646743119, -0.900935888, -0.28096962, -0.330711603)
                },
            
                [297] = {
                    ["fov"] = 94.71993182208,
                    ["cframe"] = CFrame.new(83.8624878, -99.5128403, -76.9916306, -0.433798522, 0.582585931, 0.687322855, -0.00043451786, 0.762700558, -0.646751642, -0.901009917, -0.280858487, -0.330605268)
                },
            
                [298] = {
                    ["fov"] = 94.74508986368,
                    ["cframe"] = CFrame.new(83.8758545, -99.5117798, -76.9956055, -0.433652163, 0.582645953, 0.687364399, -0.00041282177, 0.762693763, -0.646759629, -0.90108043, -0.280752391, -0.330503345)
                },
            
                [299] = {
                    ["fov"] = 94.76851365888,
                    ["cframe"] = CFrame.new(83.8886108, -99.5107651, -76.9994049, -0.433512539, 0.582703114, 0.687403858, -0.000392019749, 0.762687445, -0.646767199, -0.901147544, -0.280651093, -0.330406129)
                },
            
                [300] = {
                    ["fov"] = 94.7902848,
                    ["cframe"] = CFrame.new(83.9007797, -99.5098038, -77.0030289, -0.433379412, 0.582757711, 0.687441707, -0.000372231007, 0.762681246, -0.64677453, -0.901211739, -0.280554503, -0.330313444)
                },
            
                [301] = {
                    ["fov"] = 94.81048291328,
                    ["cframe"] = CFrame.new(83.9123917, -99.5088806, -77.0064926, -0.433252156, 0.582809806, 0.687477648, -0.000353336334, 0.762675345, -0.646781445, -0.901272833, -0.280462265, -0.330224872)
                },
            
                [302] = {
                    ["fov"] = 94.82918565888,
                    ["cframe"] = CFrame.new(83.9234772, -99.5080032, -77.0097885, -0.433130682, 0.582859397, 0.687511921, -0.000335305929, 0.762669742, -0.646788001, -0.901331067, -0.280374259, -0.330140233)
                },
            
                [303] = {
                    ["fov"] = 94.84646873088,
                    ["cframe"] = CFrame.new(83.9340515, -99.5071716, -77.0129395, -0.433015168, 0.582906961, 0.687544882, -0.000318080187, 0.762664378, -0.646794438, -0.901386917, -0.280290306, -0.330059886)
                },
            
                [304] = {
                    ["fov"] = 94.86240585728,
                    ["cframe"] = CFrame.new(83.9441452, -99.5063705, -77.0159454, -0.432904601, 0.582952142, 0.687576056, -0.000301629305, 0.762659252, -0.646800458, -0.901439905, -0.280210197, -0.329982936)
                },
            
                [305] = {
                    ["fov"] = 94.8770688,
                    ["cframe"] = CFrame.new(83.9537735, -99.5056076, -77.0188141, -0.43279928, 0.582995355, 0.687605977, -0.00028604269, 0.762654364, -0.6468063, -0.901490688, -0.280133724, -0.329909563)
                },
            
                [306] = {
                    ["fov"] = 94.89052735487999,
                    ["cframe"] = CFrame.new(83.9629669, -99.5048828, -77.021553, -0.43269819, 0.583036304, 0.68763411, -0.000270992517, 0.762649715, -0.646811604, -0.90153861, -0.280060649, -0.32983911)
                },
            
                [307] = {
                    ["fov"] = 94.90284935168,
                    ["cframe"] = CFrame.new(83.9717331, -99.5041809, -77.0241623, -0.432601988, 0.583075643, 0.68766129, -0.00025677681, 0.762645304, -0.64681685, -0.901584864, -0.279990941, -0.329772115)
                },
            
                [308] = {
                    ["fov"] = 94.91410065408,
                    ["cframe"] = CFrame.new(83.9801025, -99.5035248, -77.0266571, -0.432510495, 0.583113194, 0.687687159, -0.000243186951, 0.762641013, -0.646821976, -0.901628852, -0.279924512, -0.329708397)
                },
            
                [309] = {
                    ["fov"] = 94.92434515968,
                    ["cframe"] = CFrame.new(83.9880905, -99.5028915, -77.0290298, -0.432423025, 0.583148897, 0.687711954, -0.000230133533, 0.762637019, -0.646826744, -0.901670814, -0.279861063, -0.329647541)
                },
            
                [310] = {
                    ["fov"] = 94.9336448,
                    ["cframe"] = CFrame.new(83.9957047, -99.5022888, -77.0313034, -0.432339549, 0.583182931, 0.687735438, -0.00021776557, 0.762633145, -0.646831274, -0.901710749, -0.279800564, -0.329589427)
                },
            
                [311] = {
                    ["fov"] = 94.94205954048,
                    ["cframe"] = CFrame.new(84.0029755, -99.501709, -77.0334625, -0.432260215, 0.583215594, 0.687758088, -0.00020596385, 0.76262939, -0.646835744, -0.901749134, -0.279742837, -0.329534233)
                },
            
                [312] = {
                    ["fov"] = 94.94964738048,
                    ["cframe"] = CFrame.new(84.0099182, -99.5011597, -77.0355301, -0.4321841, 0.583246648, 0.687779546, -0.00019466877, 0.762625873, -0.646839857, -0.901785612, -0.279687673, -0.329481304)
                },
            
                [313] = {
                    ["fov"] = 94.95646435328,
                    ["cframe"] = CFrame.new(84.0165405, -99.5006332, -77.0375061, -0.432111621, 0.583276272, 0.687799931, -0.000183910131, 0.762622476, -0.646843851, -0.901820302, -0.279635131, -0.329430819)
                },
            
                [314] = {
                    ["fov"] = 94.96256452608,
                    ["cframe"] = CFrame.new(84.0228577, -99.5001373, -77.0393829, -0.432042241, 0.583304465, 0.687819302, -0.00017362833, 0.762619317, -0.646847546, -0.901853383, -0.279584885, -0.329382479)
                },
            
                [315] = {
                    ["fov"] = 94.968,
                    ["cframe"] = CFrame.new(84.0288849, -99.4996567, -77.0411835, -0.431976259, 0.583331466, 0.687838018, -0.000163793564, 0.762616277, -0.646851182, -0.901885092, -0.279536992, -0.329336584)
                },
            
                [316] = {
                    ["fov"] = 94.97282091008,
                    ["cframe"] = CFrame.new(84.0346375, -99.4992065, -77.0428925, -0.431912988, 0.583357155, 0.687855661, -0.000154495239, 0.762613297, -0.646854639, -0.901915133, -0.279491216, -0.329292417)
                },
            
                [317] = {
                    ["fov"] = 94.97707542527999,
                    ["cframe"] = CFrame.new(84.0401306, -99.4987717, -77.0445328, -0.431853116, 0.583381772, 0.687872708, -0.000145494938, 0.762610555, -0.646857977, -0.901944101, -0.279447615, -0.329250872)
                },
            
                [318] = {
                    ["fov"] = 94.98080974848,
                    ["cframe"] = CFrame.new(84.0453644, -99.4983521, -77.0460892, -0.431795537, 0.583405137, 0.68788898, -0.000137060881, 0.762607872, -0.646861076, -0.901971579, -0.279405951, -0.329210758)
                },
            
                [319] = {
                    ["fov"] = 94.98406811648,
                    ["cframe"] = CFrame.new(84.0503693, -99.4979553, -77.0475769, -0.43174094, 0.583427548, 0.687904358, -0.000128895044, 0.762605309, -0.646864057, -0.901997805, -0.279366255, -0.32917279)
                },
            
                [320] = {
                    ["fov"] = 94.98689279999999,
                    ["cframe"] = CFrame.new(84.0551376, -99.4975815, -77.048996, -0.431688428, 0.583448768, 0.687918961, -0.000121116638, 0.762602925, -0.646866858, -0.90202266, -0.279328287, -0.329136133)
                },
            
                [321] = {
                    ["fov"] = 94.98932410367999,
                    ["cframe"] = CFrame.new(84.0596924, -99.4972229, -77.050354, -0.431638628, 0.583469152, 0.687933028, -0.000113755465, 0.762600541, -0.646869659, -0.902046621, -0.279292166, -0.329101503)
                },
            
                [322] = {
                    ["fov"] = 94.99140036608,
                    ["cframe"] = CFrame.new(84.0640335, -99.4968719, -77.051651, -0.431591034, 0.583488584, 0.687946439, -0.000106692314, 0.762598336, -0.646872282, -0.902069449, -0.279257655, -0.329068363)
                },
            
                [323] = {
                    ["fov"] = 94.99315795967999,
                    ["cframe"] = CFrame.new(84.0681763, -99.4965439, -77.0528793, -0.431545556, 0.583507061, 0.687959194, -9.9927187e-05, 0.762596309, -0.646874726, -0.902091146, -0.279224694, -0.329036713)
                },
            
                [324] = {
                    ["fov"] = 94.99463129088,
                    ["cframe"] = CFrame.new(84.0721283, -99.4962311, -77.0540619, -0.431502342, 0.583524823, 0.687971532, -9.354949e-05, 0.762594223, -0.64687711, -0.902111948, -0.279193282, -0.329006672)
                },
            
                [325] = {
                    ["fov"] = 94.9958528,
                    ["cframe"] = CFrame.new(84.0759048, -99.4959335, -77.0551834, -0.431461036, 0.583541691, 0.687983155, -8.73804092e-05, 0.762592316, -0.646879435, -0.902131796, -0.279163301, -0.328977883)
                },
            
                [326] = {
                    ["fov"] = 94.99685296128,
                    ["cframe"] = CFrame.new(84.0795135, -99.4956512, -77.0562592, -0.431421459, 0.583557725, 0.687994242, -8.15093517e-05, 0.762590468, -0.64688158, -0.902150631, -0.279134572, -0.328950405)
                },
            
                [327] = {
                    ["fov"] = 94.99766028288,
                    ["cframe"] = CFrame.new(84.0829468, -99.4953766, -77.0572815, -0.431383699, 0.583572984, 0.688004792, -7.59661198e-05, 0.762588739, -0.646883547, -0.902168572, -0.279107273, -0.32892406)
                },
            
                [328] = {
                    ["fov"] = 94.99830130688,
                    ["cframe"] = CFrame.new(84.0862274, -99.4951172, -77.0582581, -0.431347966, 0.583587706, 0.688014984, -7.05718994e-05, 0.76258707, -0.646885574, -0.902185798, -0.279081225, -0.328899264)
                },
            
                [329] = {
                    ["fov"] = 94.99880060928,
                    ["cframe"] = CFrame.new(84.0893555, -99.494873, -77.0591888, -0.431313515, 0.583601713, 0.688024521, -6.54757023e-05, 0.762585521, -0.646887422, -0.902202129, -0.279056311, -0.328875184)
                },
            
                [330] = {
                    ["fov"] = 94.9991808,
                    ["cframe"] = CFrame.new(84.0923386, -99.4946365, -77.0600815, -0.431280792, 0.583615065, 0.688033819, -6.06775284e-05, 0.762584031, -0.646889269, -0.902217865, -0.279032588, -0.328852415)
                },
            
                [331] = {
                    ["fov"] = 94.99946252288001,
                    ["cframe"] = CFrame.new(84.095192, -99.4944077, -77.0609283, -0.431249619, 0.583627701, 0.688042581, -5.59985638e-05, 0.762582541, -0.646890938, -0.902232707, -0.279009938, -0.328830719)
                },
            
                [332] = {
                    ["fov"] = 94.99966445568,
                    ["cframe"] = CFrame.new(84.097908, -99.494194, -77.0617371, -0.431219786, 0.583639979, 0.688050985, -5.15878201e-05, 0.76258111, -0.646892667, -0.902247071, -0.278988332, -0.328809977)
                },
            
                [333] = {
                    ["fov"] = 94.99980331008,
                    ["cframe"] = CFrame.new(84.1005096, -99.493988, -77.0625076, -0.431191087, 0.583651423, 0.688058853, -4.74154949e-05, 0.762579799, -0.646894097, -0.902260542, -0.278967619, -0.328789949)
                },
            
                [334] = {
                    ["fov"] = 94.99989383168,
                    ["cframe"] = CFrame.new(84.1029816, -99.4937897, -77.0632477, -0.431163996, 0.58366251, 0.688066483, -4.33921814e-05, 0.762578607, -0.646895587, -0.902273417, -0.278948009, -0.328771055)
                },
            
                [335] = {
                    ["fov"] = 94.9999488,
                    ["cframe"] = CFrame.new(84.1053467, -99.4936066, -77.0639496, -0.431138098, 0.583673, 0.688073754, -3.94880772e-05, 0.762577415, -0.646896958, -0.902285814, -0.278929174, -0.328753054)
                },
            
                [336] = {
                    ["fov"] = 94.99997902848,
                    ["cframe"] = CFrame.new(84.1075974, -99.4934235, -77.064621, -0.43111375, 0.583683252, 0.688080907, -3.58819962e-05, 0.762576222, -0.646898508, -0.902297854, -0.278911352, -0.328736186)
                },
            
                [337] = {
                    ["fov"] = 94.99999336447999,
                    ["cframe"] = CFrame.new(84.1097488, -99.4932556, -77.0652618, -0.431090057, 0.583692789, 0.688087404, -3.23057175e-05, 0.76257509, -0.6468997, -0.902309, -0.278894216, -0.328719735)
                },
            
                [338] = {
                    ["fov"] = 94.99999868928,
                    ["cframe"] = CFrame.new(84.1118011, -99.4930878, -77.0658722, -0.431067526, 0.583701968, 0.688093781, -2.9027462e-05, 0.762574017, -0.646901011, -0.902319789, -0.278877884, -0.328704)
                },
            
                [339] = {
                    ["fov"] = 94.99999991808,
                    ["cframe"] = CFrame.new(84.1137619, -99.4929352, -77.0664597, -0.431046128, 0.58371067, 0.688099861, -2.58386135e-05, 0.762573063, -0.646902144, -0.902330041, -0.278862298, -0.328689158)
                },
            
                [340] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(84.1156311, -99.4927902, -77.0670166, -0.431025386, 0.583719015, 0.688105464, -2.27987766e-05, 0.76257211, -0.646903157, -0.902339697, -0.278847426, -0.328674614)
                },
            
                [341] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(84.1174164, -99.4926453, -77.067543, -0.431005955, 0.583727002, 0.688111067, -1.9878149e-05, 0.762571156, -0.646904349, -0.902349234, -0.27883327, -0.328661144)
                },
            
                [342] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(84.1191177, -99.4925156, -77.0680542, -0.43098706, 0.583734572, 0.688116252, -1.71661377e-05, 0.762570381, -0.646905303, -0.902357996, -0.27881965, -0.328647912)
                },
            
                [343] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(84.1207428, -99.4923859, -77.0685349, -0.430969417, 0.583741903, 0.688121319, -1.44541264e-05, 0.762569487, -0.646906316, -0.902366638, -0.278806746, -0.328635693)
                },
            
                [344] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(84.1222992, -99.4922638, -77.0690002, -0.430952311, 0.583748698, 0.688125968, -1.19805336e-05, 0.762568712, -0.64690721, -0.902374625, -0.278794438, -0.328623772)
                },
            
                [345] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(84.1237717, -99.4921417, -77.0694351, -0.430936038, 0.583755374, 0.688130617, -9.62615013e-06, 0.762567997, -0.646908045, -0.902382493, -0.278782636, -0.328612387)
                },
            
                [346] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(84.1251831, -99.4920349, -77.0698624, -0.430920959, 0.583761692, 0.688135087, -7.24196434e-06, 0.762567222, -0.646908998, -0.902389944, -0.27877149, -0.328602016)
                },
            
                [347] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(84.1265335, -99.4919281, -77.0702591, -0.430906177, 0.583767772, 0.688139141, -5.03659248e-06, 0.762566566, -0.646909833, -0.902396977, -0.278760821, -0.328591704)
                },
            
                [348] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(84.1278152, -99.4918213, -77.0706406, -0.430891871, 0.583773494, 0.688143075, -3.01003456e-06, 0.762565851, -0.646910608, -0.902403653, -0.278750539, -0.328581691)
                },
            
                [349] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(84.1290436, -99.4917297, -77.0710068, -0.430878222, 0.583778858, 0.68814671, -1.01327896e-06, 0.762565255, -0.646911263, -0.902409911, -0.278740793, -0.328572094)
                },
            
                [350] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(84.1296539, -99.4916763, -77.0711899, -0.430871665, 0.58378166, 0.688148737, 1.49011612e-08, 0.762565017, -0.646911621, -0.902413309, -0.278735876, -0.328567624)
                },
            
                [351] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(67.5944138, -99.4101028, -100.370087, -0.760659814, 0.393461257, 0.516318619, 1.49011612e-08, 0.795375586, -0.606116951, -0.649150729, -0.461048812, -0.605010211)
                },
            
                [352] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(57.5069199, -100.792328, -58.2782059, -0.76033026, 0.535878241, 0.367058754, -0.0658950359, 0.49855566, -0.864349425, -0.646185458, -0.681378484, -0.343755335)
                },
            
                [353] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(57.9435501, -100.803337, -59.0264664, -0.757335365, 0.534288764, 0.375472546, -0.0671044886, 0.508255959, -0.858587921, -0.649569988, -0.675434411, -0.349067271)
                },
            
                [354] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(58.3801804, -100.814346, -59.7747269, -0.754316807, 0.532596827, 0.383858144, -0.0682628155, 0.517896414, -0.852715492, -0.652952254, -0.669420719, -0.354301453)
                },
            
                [355] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(58.8168106, -100.825356, -60.5229912, -0.751276851, 0.530802846, 0.392214537, -0.0693697631, 0.527475119, -0.846733749, -0.656332016, -0.663338959, -0.359458327)
                },
            
                [356] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(59.2534332, -100.836372, -61.2712517, -0.748214722, 0.528906941, 0.400540471, -0.0704253167, 0.536991, -0.840643287, -0.659708619, -0.657189608, -0.364536345)
                },
            
                [357] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(59.6900635, -100.847382, -62.0195122, -0.745131731, 0.526909471, 0.408834636, -0.0714290738, 0.546442747, -0.834445, -0.663081586, -0.650973797, -0.369535267)
                },
            
                [358] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(60.1266937, -100.858391, -62.7677727, -0.742027342, 0.524810672, 0.417096019, -0.0723811388, 0.555828929, -0.828139603, -0.6664505, -0.644692123, -0.374453843)
                },
            
                [359] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(60.563324, -100.8694, -63.516037, -0.738903344, 0.522610962, 0.425323427, -0.0732812732, 0.565148056, -0.821728468, -0.669815004, -0.638345957, -0.37929225)
                },
            
                [360] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(60.9999542, -100.880409, -64.2642975, -0.735759437, 0.52031064, 0.433515698, -0.0741292983, 0.574398875, -0.81521219, -0.673174441, -0.631935894, -0.384049356)
                },
            
                [361] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(61.4365768, -100.891418, -65.012558, -0.732595444, 0.517909825, 0.441671461, -0.0749251992, 0.583580256, -0.808591604, -0.676528215, -0.625462651, -0.38872385)
                },
            
                [362] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(61.8732071, -100.902428, -65.7608185, -0.729412556, 0.515408993, 0.449789822, -0.0756688118, 0.592690766, -0.801867723, -0.679876149, -0.618927479, -0.393315732)
                },
            
                [363] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(62.3098373, -100.913445, -66.509079, -0.726211488, 0.512808681, 0.45786944, -0.0763600469, 0.601728857, -0.795041859, -0.683217645, -0.612331331, -0.397824407)
                },
            
                [364] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(62.7464676, -100.924454, -67.2573471, -0.722992063, 0.510108948, 0.465909213, -0.0769987553, 0.610693693, -0.788114488, -0.686552048, -0.605674922, -0.402248979)
                },
            
                [365] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(63.1830978, -100.935463, -68.0056, -0.719755292, 0.50731045, 0.473907977, -0.0775849074, 0.619583547, -0.781087041, -0.689879179, -0.598959446, -0.406588972)
                },
            
                [366] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(63.6197205, -100.946472, -68.7538681, -0.716501176, 0.504413486, 0.481864691, -0.0781183988, 0.628397346, -0.773960173, -0.693198442, -0.592185676, -0.410843551)
                },
            
                [367] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(64.0563507, -100.957481, -69.5021286, -0.713230312, 0.501418293, 0.489778012, -0.0785990804, 0.637133956, -0.766735017, -0.696509182, -0.585354626, -0.4150123)
                },
            
                [368] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(64.492981, -100.968491, -70.2503891, -0.709943175, 0.498325586, 0.497647047, -0.0790270567, 0.645792007, -0.759412646, -0.69981122, -0.57846725, -0.419094443)
                },
            
                [369] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(64.9296112, -100.9795, -70.9986496, -0.706640601, 0.495135695, 0.505470395, -0.0794020593, 0.65437007, -0.751994193, -0.703103781, -0.571524799, -0.423089802)
                },
            
                [370] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(65.3662415, -100.990517, -71.7469101, -0.703322411, 0.491849005, 0.513247132, -0.0797241926, 0.662867248, -0.744480431, -0.706386685, -0.56452781, -0.426997244)
                },
            
                [371] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(65.8028641, -101.001526, -72.4951706, -0.6999892, 0.488465995, 0.520976067, -0.0799933374, 0.671282291, -0.736872554, -0.709659219, -0.557477474, -0.430816293)
                },
            
                [372] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(66.2394943, -101.012535, -73.2434311, -0.69664222, 0.484987319, 0.528656304, -0.0802094787, 0.67961365, -0.729172051, -0.712921202, -0.550375044, -0.434547067)
                },
            
                [373] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(66.6761246, -101.023544, -73.9916992, -0.693281054, 0.481413305, 0.536286533, -0.0803725272, 0.687860489, -0.721379399, -0.71617192, -0.543221235, -0.438188374)
                },
            
                [374] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(67.1127548, -101.034554, -74.7399597, -0.689906478, 0.47774452, 0.543865621, -0.0804826021, 0.696021497, -0.713496149, -0.719410956, -0.53601712, -0.441739738)
                },
            
                [375] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(67.5493851, -101.045563, -75.4882202, -0.686519265, 0.47398141, 0.551392555, -0.0805394948, 0.704095602, -0.705523133, -0.722637892, -0.528763771, -0.445201099)
                },
            
                [376] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(67.9860077, -101.056572, -76.2364807, -0.683119059, 0.470124543, 0.558866143, -0.080543384, 0.712081432, -0.697461665, -0.725852013, -0.521462262, -0.448570967)
                },
            
                [377] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(68.4226379, -101.067589, -76.9847412, -0.679707408, 0.466174662, 0.56628567, -0.0804941207, 0.719978094, -0.689312935, -0.729053438, -0.514113665, -0.451850116)
                },
            
                [378] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(68.8592682, -101.078598, -77.7330017, -0.676284075, 0.462132096, 0.573649704, -0.0803918242, 0.727784276, -0.681077957, -0.732241213, -0.506718874, -0.455037296)
                },
            
                [379] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(69.2958984, -101.089607, -78.4812622, -0.672849774, 0.457997441, 0.580957294, -0.0802363902, 0.735499024, -0.672757983, -0.735414982, -0.499279022, -0.458132267)
                },
            
                [380] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(69.7325287, -101.100616, -79.2295227, -0.66940546, 0.453771532, 0.588207662, -0.0800279528, 0.743121028, -0.664354384, -0.738574564, -0.491795361, -0.461134851)
                },
            
                [381] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(70.1691513, -101.111626, -79.9777832, -0.665950596, 0.449454665, 0.595399261, -0.0797665268, 0.750649333, -0.655868053, -0.741719007, -0.484268665, -0.464043915)
                },
            
                [382] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(70.6057816, -101.122635, -80.7260437, -0.662486553, 0.445047587, 0.602531433, -0.0794520676, 0.758082747, -0.647300422, -0.744848251, -0.476700246, -0.466859698)
                },
            
                [383] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(71.0424118, -101.133644, -81.4743042, -0.659013629, 0.440550983, 0.609603167, -0.0790846795, 0.765420437, -0.638652623, -0.74796176, -0.469090998, -0.469581723)
                },
            
                [384] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(71.4790421, -101.144661, -82.2225723, -0.655532062, 0.435965419, 0.616613269, -0.0786644369, 0.772661209, -0.629925847, -0.751059055, -0.461442113, -0.472209275)
                },
            
                [385] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(71.9156723, -101.15567, -82.9708328, -0.652042747, 0.43129167, 0.623560905, -0.0781913698, 0.779803991, -0.621121526, -0.754139781, -0.453754693, -0.474742293)
                },
            
                [386] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.3522949, -101.166679, -83.7190933, -0.648545802, 0.426530242, 0.630445004, -0.0776655525, 0.78684777, -0.612240732, -0.75720346, -0.446029842, -0.477180243)
                },
            
                [387] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [388] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681732, 0.637264371, -0.0770869851, 0.793791711, -0.603284597, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [389] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041585, 0.421681762, 0.637264371, -0.0770870149, 0.793791652, -0.603284657, -0.760249257, -0.438268483, -0.479522467)
                },
            
                [390] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041823, 0.421681792, 0.637264431, -0.0770870447, 0.793791652, -0.603284717, -0.760249317, -0.438268542, -0.479522705)
                },
            
                [391] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041347, 0.421681762, 0.637264311, -0.0770870298, 0.793791652, -0.603284597, -0.760249197, -0.438268423, -0.479522228)
                },
            
                [392] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041347, 0.421681762, 0.637264311, -0.0770870298, 0.793791652, -0.603284597, -0.760249197, -0.438268423, -0.479522228)
                },
            
                [393] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041585, 0.421681762, 0.637264371, -0.0770870149, 0.793791652, -0.603284657, -0.760249257, -0.438268483, -0.479522467)
                },
            
                [394] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041585, 0.421681762, 0.637264371, -0.0770870149, 0.793791652, -0.603284657, -0.760249257, -0.438268483, -0.479522467)
                },
            
                [395] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041585, 0.421681762, 0.637264371, -0.0770870149, 0.793791652, -0.603284657, -0.760249257, -0.438268483, -0.479522467)
                },
            
                [396] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041823, 0.421681792, 0.637264431, -0.0770870447, 0.793791652, -0.603284717, -0.760249317, -0.438268542, -0.479522705)
                },
            
                [397] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041287, 0.421681702, 0.637264311, -0.077087, 0.793791711, -0.603284538, -0.760249197, -0.438268363, -0.479522228)
                },
            
                [398] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041585, 0.421681762, 0.637264371, -0.0770870149, 0.793791652, -0.603284657, -0.760249257, -0.438268483, -0.479522467)
                },
            
                [399] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041585, 0.421681762, 0.637264371, -0.0770870149, 0.793791652, -0.603284657, -0.760249257, -0.438268483, -0.479522467)
                },
            
                [400] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041585, 0.421681762, 0.637264371, -0.0770870149, 0.793791652, -0.603284657, -0.760249257, -0.438268483, -0.479522467)
                },
            
                [401] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041585, 0.421681762, 0.637264371, -0.0770870149, 0.793791652, -0.603284657, -0.760249257, -0.438268483, -0.479522467)
                },
            
                [402] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041585, 0.421681762, 0.637264371, -0.0770870149, 0.793791652, -0.603284657, -0.760249257, -0.438268483, -0.479522467)
                },
            
                [403] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041585, 0.421681762, 0.637264371, -0.0770870149, 0.793791652, -0.603284657, -0.760249257, -0.438268483, -0.479522467)
                },
            
                [404] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041585, 0.421681762, 0.637264371, -0.0770870149, 0.793791652, -0.603284657, -0.760249257, -0.438268483, -0.479522467)
                },
            
                [405] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041347, 0.421681762, 0.637264311, -0.0770870298, 0.793791652, -0.603284597, -0.760249197, -0.438268423, -0.479522228)
                },
            
                [406] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041585, 0.421681762, 0.637264371, -0.0770870149, 0.793791652, -0.603284657, -0.760249257, -0.438268483, -0.479522467)
                },
            
                [407] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041585, 0.421681762, 0.637264371, -0.0770870149, 0.793791652, -0.603284657, -0.760249257, -0.438268483, -0.479522467)
                },
            
                [408] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041585, 0.421681762, 0.637264371, -0.0770870149, 0.793791652, -0.603284657, -0.760249257, -0.438268483, -0.479522467)
                },
            
                [409] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [410] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [411] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [412] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [413] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [414] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [415] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [416] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [417] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [418] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [419] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [420] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [421] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [422] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [423] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [424] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [425] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [426] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [427] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [428] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [429] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [430] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [431] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [432] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [433] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [434] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [435] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [436] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [437] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [438] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [439] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [440] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [441] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [442] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [443] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [444] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [445] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [446] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [447] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [448] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [449] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [450] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [451] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [452] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [453] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [454] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [455] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [456] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [457] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [458] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [459] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [460] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [461] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [462] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [463] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [464] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [465] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [466] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [467] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [468] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [469] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [470] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [471] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [472] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [473] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [474] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [475] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [476] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [477] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [478] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [479] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [480] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [481] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [482] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [483] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [484] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [485] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [486] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [487] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [488] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [489] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [490] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [491] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [492] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [493] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [494] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [495] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [496] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [497] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [498] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [499] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [500] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [501] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [502] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [503] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [504] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [505] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [506] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [507] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [508] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [509] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [510] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [511] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [512] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [513] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [514] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [515] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [516] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [517] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [518] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [519] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [520] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [521] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [522] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [523] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [524] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [525] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [526] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [527] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [528] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [529] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [530] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [531] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [532] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [533] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [534] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [535] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [536] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [537] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [538] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [539] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [540] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [541] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [542] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [543] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [544] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [545] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [546] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [547] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [548] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [549] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [550] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [551] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [552] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [553] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [554] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [555] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [556] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [557] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [558] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [559] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [560] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [561] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                },
            
                [562] = {
                    ["fov"] = 95,
                    ["cframe"] = CFrame.new(72.7889252, -101.177689, -84.4673538, -0.645041525, 0.421681792, 0.637264371, -0.0770870745, 0.793791771, -0.603284538, -0.760249257, -0.438268423, -0.479522467)
                } 
            }
            game:GetService("TweenService"):Create(game.Workspace.Camera,TweenInfo.new(1), {CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(-3.0750694274902344, 133.3799285888672, -6.500972747802734, -0.7873272895812988, -0.19337071478366852, -0.5854265093803406, 0.00002232193946838379, 0.9495328068733215, -0.31366783380508423, 0.6165358424186707, -0.2469722032546997, -0.7475888133049011) * CFrame.Angles(math.rad(-105),math.rad(0),math.rad(0))}):Play()
            Cinematic(endData)
            local player = game.Players.LocalPlayer
        local character = player.Character
        wait(0.4)
        local humanoid = character:WaitForChild("Humanoid")
        local animator = humanoid:WaitForChild("Animator")
        local Animation = Instance.new("Animation")
        Animation.AnimationId = "rbxassetid://18462894593"
            
        local playAnim = humanoid:LoadAnimation(Animation)
        Animation.AnimationId = "rbxassetid://0"
        playAnim:Play()
        local bringsound = Instance.new("Sound", game.Players.LocalPlayer.Character)
        bringsound.SoundId = "rbxassetid://18461820786"
        bringsound.Playing = true
        bringsound.Volume = 2
        FiveEffects.CharFX.TP:Clone().Parent = character.HumanoidRootPart
        print("IM TELEPORTING MAMA")
        local beamName = "1" -- Aktif hale getirmek istediÄŸiniz beam'in adÄ±
        local parent = character.HumanoidRootPart.TP -- Beamlerin bulunduÄŸu parent
        
        local function activateParticles()
            for _, child in ipairs(parent:GetDescendants()) do
                if child:IsA("ParticleEmitter") then
                    child.Enabled = true
                end
            end
        end
        character.HumanoidRootPart.TP["90"].Enabled = true
        character.HumanoidRootPart.TP.FlashStep.Enabled = true
        activateParticles()
        spawn(function()
            wait(1)
            local beamName = "1" -- Aktif hale getirmek istediÄŸiniz beam'in adÄ±
            local parent = character.HumanoidRootPart.TP -- Beamlerin bulunduÄŸu parent
            
            local function disableParticles()
                for _, child in ipairs(parent:GetDescendants()) do
                    if child:IsA("ParticleEmitter") then
                        child.Enabled = false
                    end
                end
            end
            character.HumanoidRootPart.TP["90"].Enabled = false
            character.HumanoidRootPart.TP.FlashStep.Enabled = false
            disableParticles()
        end)
        print("IM TELEPORTING MAMA")
        local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
        local Hand2 = FiveEffects.CharFX.ArmFX:Clone()
        Hand2.Parent = character["Left Arm"]
        
        
        humanoidRootPart.CFrame = CFrame.new(humanoidRootPart.Position.X, 600.716, humanoidRootPart.Position.Z)
        wait(9.5)
        
        character.HumanoidRootPart.Anchored = false
        character["Left Arm"].ArmFX:Destroy()
            end)
end)

tool.Parent = game.Players.LocalPlayer.Backpack
