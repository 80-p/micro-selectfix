VERSION = "1.0.0"

function preCursorUp(bp)
    if bp.Cursor:HasSelection() then
        if (-bp.Cursor.OrigSelection[1]) == (-bp.Cursor.CurSelection[2]) then
                bp.Cursor:Deselect(true)
        else
            bp.Cursor:Deselect(false)
            bp:CursorRight() -- covers all but keyboard r to l case
        end
    end
    return true
end

function preCursorDown(bp)
    if bp.Cursor:HasSelection() then
        if (-bp.Cursor.OrigSelection[1]) == (-bp.Cursor.CurSelection[2]) then
                bp.Cursor:Deselect(true)
        else
            bp.Cursor:Deselect(false)
            bp:CursorRight() -- covers all but keyboard r to l case
        end
    end
    return true
end

function preCursorLeft(bp)
    if (-bp.Cursor.CurSelection[1]):GreaterThan(-bp.Cursor.CurSelection[2]) then
            bp.Cursor:Deselect(false)
            bp:CursorRight()
            bp:CursorRight()
    end
    return true
end

function preCursorRight(bp)
    if (-bp.Cursor.CurSelection[1]):GreaterThan(-bp.Cursor.CurSelection[2]) then
            bp.Cursor:Deselect(true)
            bp:CursorLeft()
    end
    return true
end
