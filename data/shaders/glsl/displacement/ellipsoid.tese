/* Start Header *****************************************************************/ 

/*! \file ellipsoid.tese

     \author Ho Yi Guan, yiguan.ho

     \par email: yiguan.ho@digipen.edu) 

     \date Nov 25, 2022

     \brief Tesellation evaulation for sphere generation
     Copyright (C) 2022 DigiPen Institute of Technology. 

  Reproduction or disclosure of this file or its contents without the prior written consent of DigiPen Institute of Technology is prohibited. */ 

/* End Header *******************************************************************/ 
#version 450

layout(quads, equal_spacing, ccw) in;
 
layout (location = 1) out vec3 outPos;

layout (std140, binding = 1) uniform UBO 
{
	mat4 projection;
	mat4 modelview;
	vec3 center;
	vec3 baryCoord; //a,b,c
} ubo; 

const float PI = 3.14159265;

void main()
{
  //map to -pi/2 0 pi/2
  float phi = PI * (gl_TessCoord.x - 0.5);
  //map to -pi to pi
  float theta = ((2.0 * gl_TessCoord.y) - 1.0) * PI ;

  //spherical coord
  outPos.x = ubo.baryCoord.x * cos(phi) * cos(theta) + ubo.center.x;
  outPos.y = ubo.baryCoord.y * sin(phi) + ubo.center.y;
  outPos.z = ubo.baryCoord.z * cos(phi) * sin(theta) + ubo.center.z ;

  gl_Position = ubo.projection * ubo.modelview * vec4(outPos, 1.0);
}