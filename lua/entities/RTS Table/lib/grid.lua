--[[
grid

The grid will be a 2d table containing informations about the logical space on the game.
Every grid will be a "Node", a node will be a table/metatable type which will contain informations about that block.
Those informations are:
 - Occupied (bool)
 - Other things later lmao.
]]

-- setNode
-- occupied : bool   -  some construction / prop / anything on this terrain

function setNode(occupied)
    local nodeInfo = {}

    nodeInfo.occupied = occupied

    return nodeInfo
end

function initGrid(x, y)
    local grid = {}
    
    for j=0, y do
        for i=0, x do
            grid[j] = {}
            grid[j][i] = setNode(false)
        end
    end

    return grid
end
