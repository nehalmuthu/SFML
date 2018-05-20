attribute vec2 positionAttribute;
attribute vec4 colorAttribute;
attribute vec2 texCoordAttribute;

uniform mat4 modelViewProjectionMatrix;

varying vec4 frontColor;

varying vec3 normal;

void main()
{
    gl_Position = modelViewProjectionMatrix * vec4(positionAttribute, 0.0, 1.0);
    frontColor = colorAttribute;
    normal = vec3(texCoordAttribute, 1.0);
}
