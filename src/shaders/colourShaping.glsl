extern number time;
extern vec2 resolution;

float PI = 3.14159;
vec3 colourA = vec3(0.149, 0.141, 0.912);
vec3 colourB = vec3(1.000, 0.833, 0.224);

float plot(vec2 st, float pct){
    return smoothstep(pct - 0.01, pct, st.y) - smoothstep(pct, pct + 0.01, st.y);
}

vec4 effect(vec4 color, Image texture, vec2 texture_coords, vec2 screen_coords){
    vec2 st = vec2(screen_coords.x / resolution.x, 1 - (screen_coords.y / resolution.y));
    vec3 colour = vec3(0.0);
    vec3 pct = vec3(st.x);

    pct.r = smoothstep(0.0, 1.0, st.x);
    pct.g = sin(st.x * PI + time) * 0.5 + 0.5;
    pct.b = pow(st.x,0.5);

    colour = mix(colourA, colourB, pct);

    // Plot transition lines for each channel
    // colour = mix(colour,vec3(1.0,0.0,0.0),plot(st, pct.r));
    // colour = mix(colour,vec3(0.0,1.0,0.0),plot(st, pct.g));
    // colour = mix(colour,vec3(0.0,0.0,1.0),plot(st, pct.b));
    
    return vec4(colour, 1.0);
}