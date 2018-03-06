extern vec2 resolution;

float plot(vec2, float);

float plot(vec2 st, float pct) {
    return smoothstep(pct - 0.02, pct, st.y) - smoothstep(pct, pct + 0.02, st.y);
}

vec4 effect(vec4 color, Image texture, vec2 texture_coords, vec2 screen_coords){
    vec2 st = vec2(screen_coords.x / resolution.x, 1 - (screen_coords.y / resolution.y));
    float y = abs(sin(st.x * 10));
    vec3 colour = vec3(y);

    // Plot a line
    float pct = plot(st, y);
    colour = (1.0 - pct) * colour + pct * vec3(0.0, 1.0, 0.0);
    
    return vec4(colour, 1.0);
}