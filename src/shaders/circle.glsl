// extern number time;
extern vec2 resolution;

vec4 effect(vec4 color, Image texture, vec2 texture_coords, vec2 screen_coords){
    vec2 st = vec2(screen_coords.x / resolution.x, 1 - (screen_coords.y / resolution.y));
    float pct = 0.0;

    pct = distance(st, vec2(0.5)) * 2;

    vec3 colour = vec3(pct);
    
    return vec4(colour, 1.0);
}