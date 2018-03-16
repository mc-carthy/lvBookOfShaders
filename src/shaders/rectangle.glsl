// extern number time;
extern vec2 resolution;

vec4 effect(vec4 color, Image texture, vec2 texture_coords, vec2 screen_coords){
    vec2 st = vec2(screen_coords.x / resolution.x, 1 - (screen_coords.y / resolution.y));
    vec3 colour = vec3(0.0);

    vec2 bottomLeft = step(vec2(0.1), st);
    float pct = bottomLeft.x * bottomLeft.y;
    vec2 topRight = step(vec2(0.1), 1 - st);
    pct *= topRight.x * topRight.y;

    colour = vec3(pct);
    
    return vec4(colour, 1.0);
}