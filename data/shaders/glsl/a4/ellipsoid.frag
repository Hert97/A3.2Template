
/* Start Header *****************************************************************/ 

/*! \file ellipsoid.frag

     \author Ho Yi Guan, yiguan.ho

     \par email: yiguan.ho@digipen.edu) 

     \date Nov 25, 2022

     \brief Fragment shader for ellipsoid frag output
     Copyright (C) 2022 DigiPen Institute of Technology. 

  Reproduction or disclosure of this file or its contents without the prior written consent of DigiPen Institute of Technology is prohibited. */ 

/* End Header *******************************************************************/

#version 450

layout (location = 1) in vec3 inPos;

layout (location = 0) out vec4 outFragColor;

void main()
{
	outFragColor.rgb = inPos;
}