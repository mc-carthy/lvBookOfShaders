// extern number time;
extern vec2 resolution;

float circle(in vec2 _st, in float _radius){
    vec2 dist = _st-vec2(0.5);
    return 1.-smoothstep(
        _radius-(_radius * 0.01),
        _radius+(_radius * 0.01),
        dot(dist, dist) * 4.0
    );
}

vec4 effect(vec4 color, Image texture, vec2 texture_coords, vec2 screen_coords){
    vec2 st = vec2(screen_coords.x / resolution.x, 1 - (screen_coords.y / resolution.y));

    vec3 colour = vec3(circle(st, 0.9));
    
    return vec4(colour, 1.0);
}