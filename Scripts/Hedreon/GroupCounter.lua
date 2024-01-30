local function CountGroup(Group: Model | Folder) : number
    local Count: number = 0

    for _, Descendant: Instance in Group:GetDescendants() do
        if Descendant:IsA("BasePart") then
            Count += 1
        end
    end

    return Count
end

print(CountGroup(YOUR_MODEL_OR_FOLDER_HERE))