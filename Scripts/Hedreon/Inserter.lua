local InsertService = game:GetService("InsertService")

local function InsertAsset(AssetID: number)
    local InsertedAsset = InsertService:LoadAsset(AssetID)
    local ThumbnailConfiguration = InsertedAsset:FindFirstChild("ThumbnailConfiguration", true)

    if ThumbnailConfiguration then
        ThumbnailConfiguration:Destroy()
    end

    InsertedAsset.Parent = workspace

    for _, Child in InsertedAsset:GetChildren() do
        Child.Parent = workspace
        InsertedAsset:Destroy()
    end
end

InsertAsset(ID_HERE)