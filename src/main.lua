-- Load some default values for our rectangle.
function mudaDireção() 
    function love.keyreleased(key)
        if key == "space" then
            if direcaoAtual == direcoes.baixo then
                direcaoAtual = direcoes.esquerda 
            end
            if direcaoAtual == direcoes.alto then
                direcaoAtual = direcoes.direita
            end
            if direcaoAtual == direcoes.direita then
                direcaoAtual = direcoes.baixo
            end
            if direcaoAtual == direcoes.esquerda then
                direcaoAtual = direcoes.alto
            end
        end
     end
end

function love.load()
    love.window.setMode(320, 480, {resizable = false})
    love.window.setTitle("jogo")
    direcoes = {
        alto = function () 
            y = y - 1
        end,
        direita = function () 
            x = x + 1
        end,
        baixo = function () 
            y = y + 1
        end,
        esquerda = function () 
            x = x - 1
        end,
    }
    direcaoAtual = direcoes.alto

    x, y, w, h = 100, 100, 60, 20
end
-- Increase the size of the rectangle every frame.
function love.update(dt)
    mudaDireção()
    direcaoAtual()
end
 
-- Draw a coloured rectangle.
function love.draw()
    love.graphics.setColor(0, 0.4, 0.4)
    love.graphics.rectangle("fill", x, y, w, h)
end