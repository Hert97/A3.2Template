#version 450

layout(quads, equal_spacing, ccw) in;
 
layout (location = 1) out vec3 outPos;

layout (std140, binding = 1) uniform UBO 
{
	mat4 projection;
	mat4 modelview;
	vec4 center;
	vec4 pValues; //parametric values (A, B and C)
} ubo; 

const float PI = 3.14159265;

void main()
{
  vec3 center = ubo.center.xyz;
  //map to -pi/2 0 pi/2
  float phi = PI * (gl_TessCoord.x - 0.5);
  //map to -pi to pi
  float theta = 2 * PI * gl_TessCoord.y - PI;

  vec3 finalPos = vec3(
	ubo.pValues.x * cos(phi) * cos(theta),
    ubo.pValues.y * sin(phi),
    ubo.pValues.z * cos(phi) * sin(theta)
  );
  finalPos += ubo.center.xyz;
  outPos = vec3(finalPos * 2.0);

  
  gl_Position = ubo.projection * ubo.modelview * vec4(finalPos, 1.0);
}