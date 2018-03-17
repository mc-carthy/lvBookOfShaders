extern number time;
extern vec2 resolution;

float box(in vec2 _st, in vec2 _size){
    _size = vec2(0.5) - _size * 0.5;
    vec2 uv = smoothstep(_size, _size + vec2(0.001), _st);
    uv *= smoothstep(_size, _size + vec2(0.001), vec2(1.0) - _st);
    return uv.x * uv.y;
}

float cross(in vec2 _st, in float _size){
    return box(_st, vec2(_size, _size / 4.0)) + box(_st, vec2(_size / 4.0, _size));
}

vec4 effect(vec4 color, Image texture, vec2 texture_coords, vec2 screen_coords){
    vec2 st = vec2(screen_coords.x / resolution.x, 1 - (screen_coords.y / resolution.y));
    vec3 colour = vec3(0.0);
    float t = time;

    vec2 translate = vec2(cos(t), sin(2 * t));
    st += translate * 0.35;

    colour += vec3(st.x, st.y, 0.0);

    colour += vec3(cross(st, 0.25));
    
    return vec4(colour, 1.0);
}