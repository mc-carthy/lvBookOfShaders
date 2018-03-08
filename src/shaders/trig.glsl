extern vec2 resolution;
extern number time;

float plot(vec2, float);

float plot(vec2 st, float pct) {
    return smoothstep(pct - 0.02, pct, st.y) - smoothstep(pct, pct + 0.02, st.y);
}

vec4 effect(vec4 color, Image texture, vec2 texture_coords, vec2 screen_coords){
    vec2 st = vec2(screen_coords.x / resolution.x, 1 - (screen_coords.y / resolution.y));
    float x = st.x;
    float y = (sin((x + time)) + 1) / 2;

    // y = mod(x,0.25); // return x modulo of 0.25
    // y = fract(x); // return only the fraction part of a number
    // y = ceil(x);  // nearest integer that is greater than or equal to x
    // y = floor(x); // nearest integer less than or equal to x
    // y = sign(x);  // extract the sign of x
    // y = abs(x);   // return the absolute value of x
    // y = clamp(x,0.25,0.75); // constrain x to lie between 0.0 and 1.0
    // y = min(0.0,x);   // return the lesser of x and 0.0
    // y = max(0.0,x);   // return the greater of x and 0.0 

    vec3 colour = vec3(y);

    float pct = plot(st, y);
    colour = (1.0 - pct) * colour + pct * vec3(0.0, 1.0, 0.0);
    
    return vec4(colour, 1.0);
}