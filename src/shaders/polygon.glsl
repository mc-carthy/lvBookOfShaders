extern number time;
extern vec2 resolution;
float pi = 3.14159265359;

vec4 effect(vec4 color, Image texture, vec2 texture_coords, vec2 screen_coords){
    vec2 st = vec2(screen_coords.x / resolution.x, 1 - (screen_coords.y / resolution.y));
    st.x *= resolution.x / resolution.y;
    vec3 colour = vec3(0.0);
    float d = 0.0;

    st = st * 2.0 - 1.0;

    int N = 7;

    float a = atan(st.x, st.y) + pi;
    float r = pi * 2.0 / N;

    a += time;

    d = cos(floor(0.5 + a / r) * r - a) * length(st);
    colour = vec3(1.0 - smoothstep(0.4, 0.41, d));
    
    return vec4(colour, 1.0);
}