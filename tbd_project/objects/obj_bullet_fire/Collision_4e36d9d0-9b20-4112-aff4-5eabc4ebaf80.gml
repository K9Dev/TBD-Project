
other.hp = scr_get_hp_after_hit(dmg, other.hp);
scr_animate_impact(obj_bullet, 0, x, y, other);

log("Enemy Tower HP left: " + string(other.hp));


instance_destroy();