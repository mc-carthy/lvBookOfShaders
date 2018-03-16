extern number time;
vec3 colourA = vec3(0.149, 0.141, 0.912);
vec3 colourB = vec3(1.000, 0.833, 0.224);

vec4 effect(vec4 color, Image texture, vec2 texture_coords, vec2 screen_coords){
    vec3 colour = vec3(0.0);
    float pct = abs(sin(time));

    colour = mix(colourA, colourB, pct);
    
    return vec4(colour, 1.0);
}