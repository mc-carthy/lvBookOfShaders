extern number time;
extern vec2 resolution;

float twoPI = 6.28318530718;

vec3 rgbToHsv(in vec3 c){
    vec4 k = vec4(0.0, -1.0 / 3.0, 2.0 / 3.0, -1.0);
    vec4 p = mix(
        vec4(c.bg, k.wz),
        vec4(c.gb, k.xy),
        step(c.b, c.g)
    );
    vec4 q = mix(
        vec4(p.xyw, c.r),
        vec4(c.r, p.yzx),
        step(p.x, c.r)
    );
    float d = q.x - min(q.w, q.y);
    float e = 1.0e-10;
    return vec3(
        abs(q.z + (q.w - q.y) / (6.0 * d + e)),
        d / (q.x + e),
        q.x
    );
}

vec3 hsvToRgb(in vec3 c){
    vec3 rgb = clamp(
        abs(
            mod(c.x * 6.0 + vec3(0.0, 4.0, 2.0), 6.0) - 3.0
        ) -1.0, 
        0.0, 
        1.0
    );
    rgb = rgb * rgb * (3.0 - 2.0 * rgb);
    return c.z * mix(vec3(1.0), rgb, c.y);
}

vec4 effect(vec4 color, Image texture, vec2 texture_coords, vec2 screen_coords){
    vec2 st = vec2(screen_coords.x / resolution.x, 1 - (screen_coords.y / resolution.y));
    vec3 colour = vec3(0.0);

    vec2 toCentre = vec2(0.5) - st;
    float angle = atan(toCentre.y, toCentre.x);
    angle += sin(time);
    float radius = length(toCentre) * 2.0;

    colour = hsvToRgb(vec3((angle / twoPI) + 0.5, radius, 1.0));
    
    return vec4(colour, 1.0);
}