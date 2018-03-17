extern number time;
extern vec2 resolution;
vec3 colourA = vec3(0.8, 0.0, 0.0);
vec3 colourB = vec3(0.0, 0.8, 0.8);

vec4 effect(vec4 color, Image texture, vec2 texture_coords, vec2 screen_coords){
    vec2 st = vec2(screen_coords.x / resolution.x, 1 - (screen_coords.y / resolution.y));
    
    float d = 0.0;

    st = (st * 2) - 1;

    d = length(abs(st) - 0.0);
    // d = length(min(abs(st) - 0.3, 0.0));
    // d = length(max(abs(st) - 0.3, 0.0));

    d += sin(time * 0.75);

    vec3 colour = mix(colourA, colourB, d);
    
    return vec4(vec3(fract(d * 7.5)) * colour, 1.0);
    // return vec4(vec3(step(0.3, d)), 1.0);
    // return vec4(vec3(step(0.3, d) * step(d, 0.4)), 1.0);
    // return vec4(vec3(smoothstep(0.3, 0.4, d) * smoothstep(0.6, 0.5, d)), 1.0);
}