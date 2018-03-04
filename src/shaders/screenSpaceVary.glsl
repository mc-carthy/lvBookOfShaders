extern number screen_width;
extern number screen_height;
extern number mouse_x;
extern number mouse_y;

vec4 effect(vec4 color, Image texture, vec2 texture_coords, vec2 screen_coords){
    // The 1 - screen_coords is to make up for the fact that with Löve, the y-axis is inverted
    // return vec4(screen_coords.x / screen_width, 1 - (screen_coords.y / screen_height), 0.0, 1.0);
    return vec4(mouse_x / screen_width, 1 - (mouse_y / screen_height), 0.0, 1.0);
}