/// @description Insert description here
// You can write your code in this editor
alarm_set(0, 150);

FirstParticleSystem = part_system_create();
part_system_depth(FirstParticleSystem,-5);
//ps are drawn to screen with base position relative to (0,0)
first_particle = part_type_create();
part_type_shape(first_particle, pt_shape_square);
part_type_scale(first_particle,1,1);
part_type_size(first_particle, 0.10, 1, -0.01, 0);
part_type_color2(first_particle, 8454143, 65280);
part_type_alpha2(first_particle, 1, 0.75);
part_type_speed(first_particle, 0.1, 0.5, 0,0);
part_type_direction(first_particle,0,359,0,0);
part_type_gravity(first_particle, 0.02, 270);
part_type_orientation(first_particle, 0,359,10,0,true);
part_type_life(first_particle, 100, 150);
part_type_blend(first_particle, true);

first_emitter = part_emitter_create(FirstParticleSystem);
part_emitter_region(FirstParticleSystem, first_emitter, x-100, x+100, y-100, y+100, ps_shape_ellipse, ps_distr_gaussian);
part_emitter_stream(FirstParticleSystem, first_emitter, first_particle, 1);