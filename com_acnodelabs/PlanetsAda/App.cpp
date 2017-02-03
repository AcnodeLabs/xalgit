// Copyright (c) 2012 AcnodLabs Inc

/* 
   ALGE SDK Demo :: NeHeLesson03
 */

//#include "../../../ALGESDK-SRC/Base/CBaseV1_2.h"

// Ada Requirement
extern "C" void adainit(void);    
extern "C" void adafinal(void);

extern "C" void AppInit(void); //AdaCode
extern "C" void AppUpdate(float dt); //AdaCode
extern "C" void AppDeInit(void); //AdaCode
extern "C" void AppRender(void); //AdaCode


class /*Lesson03*/ App { 

public:
  CResourceManager rm;
    
  PEG output;
  PEG input;
  aL10 AL10; // To Make Desktop OpenGL style calls on an ES Platform

  void Render(float dt, int aX, int aY, int aZ) {		
    AppUpdate(dt);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);	// Clear Screen And Depth Buffer
    glLoadIdentity();									// Reset The Current Modelview Matrix
    
    glTranslatef(0.0f,0.0f,-3.0f);					// Move

    AppRender();
   
  }

  void Init(char* path) {
    rm.Init(path);
    adainit();
    //  al = & AL10;
    AppInit();
    // alInit(STANDARD);
    output.pushP(CMD_TITLE, $ "Untitled",0);
    
    
    GLfloat LightAmbient[4];//=		{ 0.5f, 0.5f, 0.5f, 1.0f };
    GLfloat LightDiffuse[4];//=		{ 1.0f, 1.0f, 1.0f, 1.0f };
    GLfloat LightPosition[4];//=		{ 0.0f, 0.0f, 2.0f, 1.0f };
    
    glEnable(GL_TEXTURE_2D);							// Enable Texture Mapping
    glShadeModel(GL_SMOOTH);							// Enable Smooth Shading
    glClearColor(0.0f, 0.0f, 0.0f, 0.5f);				// Black Background
    //glClearDepthf(1.0f);									// Depth Buffer Setup
    glEnable(GL_DEPTH_TEST);							// Enables Depth Testing
    glDepthFunc(GL_LEQUAL);								// The Type Of Depth Testing To Do
    glHint(GL_PERSPECTIVE_CORRECTION_HINT, GL_NICEST);	// Really Nice Perspective Calculations
        
    {
      LightAmbient[0] = 0.5f;	LightAmbient[1] = 0.5f;	LightAmbient[2] = 0.5f; LightAmbient[3] = 1.0f;
      LightDiffuse[0] = LightDiffuse[1]	= LightDiffuse[2] = LightDiffuse[3] = 1;
      LightPosition[0]  =	0.0f; LightPosition[1]  =	0.0f;LightPosition[2]  =	2.0f;LightPosition[3]  =	1.0f;
    }
        
    glLightfv(GL_LIGHT1, GL_AMBIENT, LightAmbient);
    glLightfv(GL_LIGHT1, GL_DIFFUSE, LightDiffuse);
    glLightfv(GL_LIGHT1, GL_POSITION,LightPosition);
        
    glColor4f(1.0f, 1.0f, 1.0f, 0.5);
    glBlendFunc(GL_SRC_ALPHA,GL_ONE);
  }

  void Deinit() {
    AppDeInit();
    adafinal();
  }


};
