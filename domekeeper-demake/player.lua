function i_plr()
    plr={
        x=15,
        y=64,
        sp=1,
        dx=0,
        dy=0,
        flp=false,
        spd=1,
        state="idle"
    }
    anim_timer=0
end

function u_plr()

    --movement
    if btn(0) then
        plr.dx=-plr.spd
        plr.state="side"
    elseif btn(1) then
        plr.dx=plr.spd
        plr.state="side"
    else
        plr.dx=0
        
    end
    if btn(2) then
        plr.dy=-plr.spd
        plr.state="idle"
    elseif btn(3) then
        plr.dy=plr.spd
        plr.state="idle"
    else
        plr.dy=0
        
    end
    if plr.dx==0 then
        plr.state="idle"
    end
    plr.x+=plr.dx
    plr.y+=plr.dy
    anim_state("idle")
    anim_state("side")
end

function d_plr()
    spr(plr.sp,plr.x,plr.y)
end

--anim state
function anim_state(state)
    if anim_timer<0 then
        if plr.state==state then
            plr.sp+=1
            if plr.sp>3 then
                plr.sp=1
            end
        end
        anim_timer=6
    end
    anim_timer-=1
end