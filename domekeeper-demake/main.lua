function _init()
    i_plr()

    --cam
    camx=0
    camy=0
end

function _update()
    camx=plr.x+8-63
    camy=plr.y+8-63
    u_plr()
end

function _draw()
    camera(camx,camy)
    cls()
    map()
    d_plr()

end