/// @description Insert description here
// You can write your code in this editor
part_system_clear(first_emitter);
part_emitter_clear(FirstParticleSystem, first_emitter);
part_system_destroy(FirstParticleSystem);
part_emitter_destroy_all(first_emitter);