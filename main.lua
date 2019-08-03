-- Load some default values for our rectangle.
function movimenta() 
    if  love.keyboard.isDown('w', 'up') then
        y = y - 1
    end
    if  love.keyboard.isDown('a', 'left') then
        x = x - 1
    end 
    if  love.keyboard.isDown('d', 'right') then
        x = x + 1
    end
    if  love.keyboard.isDown('s', 'down') then
        y = y + 1
    end
end

function love.load()
    love.window.setMode(320, 480, {resizable = false})
    love.window.setTitle("jogo")

    x, y, w, h = 20, 20, 60, 20
end
 
-- Increase the size of the rectangle every frame.
function love.update(dt)
    
end
 
-- Draw a coloured rectangle.
function love.draw()
    love.graphics.setColor(0, 0.4, 0.4)
    love.graphics.rectangle("fill", x, y, w, h)
end