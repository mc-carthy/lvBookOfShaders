extern number time;
extern vec2 resolution;

vec4 effect(vec4 color, Image texture, vec2 texture_coords, vec2 screen_coords){
    vec2 st = vec2(screen_coords.x / resolution.x, 1 - (screen_coords.y / resolution.y));
    vec2 pos = vec2(0.5) - st;
    float r = length(pos) * 2.0;
    float a = atan(pos.y, pos.x);
    vec3 colour = vec3(0.0);
    float f = 0.0;

    a += time;
    // f = cos(a * 3.0);
    // f = abs(cos(a * 3.0));
    // f = abs(cos(a * 2.5)) * 0.5 + 0.3;
    // f = abs(cos(a * 12.0) * sin(a * 3.0)) * 0.8 + 0.1;
    f = smoothstep(-0.5, 1.0, cos(a * 10.0)) * 0.2 + 0.5;

    colour = vec3(1.0 - smoothstep(f, f + 0.02, r));
    
    return vec4(colour, 1.0);
}