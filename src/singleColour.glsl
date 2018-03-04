// Color represents the colour set by love.graphics.setColor()
// Texture represents the image being drawn
// texture_coords represent the normalised coordinates of the of the current pixel relative to the image
// screen_coords represent the normalised coordinates of the of the current pixel relative to the screen

vec4 red();

vec4 effect(vec4 color, Image texture, vec2 texture_coords, vec2 screen_coords){
    // return vec4(1.0, 0.0, 1.0, 1.0);
    return red();
}

vec4 red() {
    return vec4(0.75, 0.0, 0.0, 1.0);
}