function i_plr()
    plr={
        x=15*8,
        y=64*8,
        sp=1,
        dx=0,
        dy=0,
        flp=false,
        spd=1,
        
    }
    anim_timer=0
    move=false
end

function u_plr()

    --movement
    if btn(0) then
        move=true
        plr.dx=-plr.spd
        plr.sp=2
        plr.flp=true
    elseif btn(1) then
        move=true
        plr.dx=plr.spd
        plr.sp=2
        plr.flp=false
    else
        plr.dx=0
        move=false
    end

    if btn(2) then
        move=true
        plr.dy=-plr.spd
        plr.sp=1
    elseif btn(3) then
        move=true
        plr.dy=plr.spd
        plr.sp=1
    else
        plr.dy=0
        -- move=false
    end
    
    if move==false then
        plr.sp=1
    end
    

    plr.x+=plr.dx
    plr.y+=plr.dy

end

function d_plr()
    spr(plr.sp,plr.x,plr.y,1,1,plr.flp)
end