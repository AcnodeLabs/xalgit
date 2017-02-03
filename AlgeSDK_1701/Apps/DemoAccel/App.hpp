// Copyright (c) 2012 AcnodeLabs Inc

#include "../../Base/CBaseV1_2.h"

#define MDL_COLORCUBE	0

//DemoAccel
class App { 

	CControls controls;
    CResourceManager rm;

public:
	PEG output;
	PEG input;
	
	void Render(float dt, int aX, int aY, int aZ) {
		glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);	// Clear Screen And Depth Buffer
		glLoadIdentity();									// Reset The Current Modelview Matrix
		glTranslatef(0.f,0.f,-5.f);
		controls.RealWorldOrientation(aX, aY, aZ);
		rm.models[MDL_COLORCUBE]->glDraw();
	}

	void Init(char* path) {
		rm.Init(path);
		alInit(STANDARD);
		output.pushP(CMD_TITLE, $ "Accelerometer Demo",0);
		rm.loadAlxModel((char*) "colorcube.alx",AUTO, MDL_COLORCUBE, 1);
	}

	void Deinit() {
	}

};
