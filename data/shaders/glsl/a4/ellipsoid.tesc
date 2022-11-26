/* Start Header *****************************************************************/ 

/*! \file ellipsoid.tesc

     \author Ho Yi Guan, yiguan.ho

     \par email: yiguan.ho@digipen.edu) 

     \date Nov 25, 2022

     \brief Tesellation control for tess level settings
     Copyright (C) 2022 DigiPen Institute of Technology. 

  Reproduction or disclosure of this file or its contents without the prior written consent of DigiPen Institute of Technology is prohibited. */ 

/* End Header *******************************************************************/ 
#version 450

layout (binding = 0) uniform UBO 
{
	float innerTessLevel;
	float outerTessLevel;
} ubo; 
 
layout (vertices = 3) out;

 
void main()
{
	//set tesse settings once
	if (gl_InvocationID == 0)
	{
		gl_TessLevelInner[0] = ubo.innerTessLevel;
		gl_TessLevelInner[1] = ubo.innerTessLevel;

		gl_TessLevelOuter[0] = ubo.outerTessLevel;
		gl_TessLevelOuter[1] = ubo.outerTessLevel;
		gl_TessLevelOuter[2] = ubo.outerTessLevel;		
		gl_TessLevelOuter[3] = ubo.outerTessLevel;		
	}

} 