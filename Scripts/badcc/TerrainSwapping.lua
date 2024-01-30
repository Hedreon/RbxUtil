--Terrain Swapping (THE Script!)
local Terrain = workspace.Terrain
local function ChangeTerrain(h,d)
    for xi = -4, 3 do
        for zi = -4, 3 do
            local r = Region3.new(Vector3.new(0+1024*xi,h-d,0+1024*zi),Vector3.new(1024+1024*xi,h,1024+1024*zi)):ExpandToGrid(4)
            local Materials, Occupancy = Terrain:ReadVoxels(r, 4)
            local Size = Materials.Size
            for x = 1,Size.X do
                for y = 1,Size.Y do
                    for z = 1,Size.Z do
                        local m = Materials[x][y][z]
                        if (m == Enum.Material.Grass) then
                            Materials[x][y][z] = Enum.Material.Snow
                        end
                    end
                end
            end
            Terrain:WriteVoxels(r, 4, Materials, Occupancy)
        end
    end
end
local Height=300
for i = 1,Height,5 do
    print(('%.2f'):format(i/Height*100))
    ChangeTerrain(i,5)
    wait(0.05)
end