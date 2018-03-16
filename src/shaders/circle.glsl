extern number time;
extern vec2 resolution;

vec4 effect(vec4 color, Image texture, vec2 texture_coords, vec2 screen_coords){
    vec2 st = vec2(screen_coords.x / resolution.x, 1 - (screen_coords.y / resolution.y));
    float pct = 0.0;

    pct = distance(st, vec2(0.5)) * 2;
    pct *= (sin(5 * time) + 1) * 0.5;
    pct = smoothstep(0.05, 0.1, pct);
    vec3 red = vec3(1, 0, 0);

    vec3 colour = vec3((1 - pct) * red);
    
    return vec4(colour, 1.0);
}