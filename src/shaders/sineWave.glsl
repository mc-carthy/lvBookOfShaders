extern number time;
vec4 effect(vec4 color, Image texture, vec2 texture_coords, vec2 screen_coords){
    return vec4(abs(sin(time)), abs(sin(0.2 * time + 0.25)), abs(sin(0.5 * time + 0.5)), 1.0);
}