local function SetGroupProperty(Group: Model | Folder, Property: string, Value: any)
    for _, Descendant: Instance in Group:GetDescendants() do
        if Descendant:IsA("BasePart") then
            Descendant[Property] = Value
        end
    end
end

SetGroupProperty(YOUR_MODEL_OR_FOLDER_HERE, "YOUR_PROPERTY_HERE", YOUR_VALUE_HERE)