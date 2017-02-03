//
//  alge-mac.cpp
//  Alge-Mac
//
//  Created by Bilal on 6/20/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#define MACOSX

#include "CANDIDATE.h"
#include "../../../SDKSRC/Base/CBaseV1_2.h"
#include <GLUT/glut.h>
//#include <glut.h>
#include <stdio.h>

//#include <OpenAL/include/al.h>
//#include <OpenAL/include/alc.h>

//http://www.e38.org/onboardmonitor.pdf //bmw
#define kWindowScale  3
#define kWindowWidth	(400*kWindowScale)
#define kWindowHeight	(234*kWindowScale)
#include CANDIDATE

#define TIMERMSECS 33

int startTime;
int prevTime;

App app;
static int elapsedTime;
#include "Timer.h"
//#include "MyOpenALSupport.h"

Timer time1;
float deltaT;
float lastTime;
float aX, aY, aZ;
/*
ALsizei nAL;
#define NUM_BUFFERS_SOURCES 16
ALuint alSources[NUM_BUFFERS_SOURCES];
ALuint alBuffers[NUM_BUFFERS_SOURCES];
float alPosition[3];


void initAL(char* respath) {
    nAL = NUM_BUFFERS_SOURCES;
    alGetError();
    
    ALCcontext		*newContext = NULL;
	ALCdevice		*newDevice = NULL;
    
	newDevice = alcOpenDevice(NULL);
	if (newDevice != NULL)
	{
		// Create a new OpenAL Context
		// The new context will render to the OpenAL Device just created 
		newContext = alcCreateContext(newDevice, 0);
		if (newContext != NULL)
		{
			// Make the new context the Current OpenAL Context
			alcMakeContextCurrent(newContext);
        }
    }
    alListenerfv(AL_POSITION, alPosition);
    
    alGenBuffers(nAL, alBuffers);
    alGenSources(nAL, alSources);
}

void deInitAL() {
        ALCcontext	*context = NULL;
        ALCdevice	*device = NULL;
        ALuint		returnedNames[NUM_BUFFERS_SOURCES];
        
        // Delete the Sources
        alDeleteSources(NUM_BUFFERS_SOURCES, returnedNames);
        // Delete the Buffers
        alDeleteBuffers(NUM_BUFFERS_SOURCES, returnedNames);
        
        //Get active context
        context = alcGetCurrentContext();
        //Get device for active context
        device = alcGetContextsDevice(context);
        //Release context
        alcDestroyContext(context);
        //Close device
        alcCloseDevice(device);
}
*/
void sndSet(char* filename, int id, int loops) {
//openal//    ALenum  error = AL_NO_ERROR;
//openal//	ALenum  format;
//openal//	ALvoid* data;
//openal//	ALsizei size;
//openal//	ALsizei freq;
	
    // Turn Looping ON
//openal//    if (loops>0) alSourcei(alSources[id], AL_LOOPING, AL_TRUE);
    // Set Source Position
//openal//    alSourcefv(alSources[id], AL_POSITION, alPosition);
    // Set Source Reference Distance
//openal//    alSourcef(alSources[id],AL_REFERENCE_DISTANCE, 5.0f);
     
    char filespec[256];
    sprintf(filespec, "%s/%s", app.rm.resourcepath, filename);
  
  /*
  CFStringRef f1 = CFStringCreateWithFileSystemRepresentation(kCFAllocatorDefault, filespec);
    CFURLRef fileURL = CFURLCreateWithString(kCFAllocatorDefault, (CFStringRef)f1, NULL);
    data = MyGetOpenALAudioData(fileURL, &size, &format, &freq);
    CFRelease(fileURL);
   */
  
//openal//    alBufferData(alBuffers[id], format, data, size, freq);
		
    // Release the audio data
 //openal//   free(data);
    

    // attach OpenAL Buffer to OpenAL Source
//openal//    alSourcei(alSources[id], AL_BUFFER, alBuffers[id]);
 //openal//   alSourcePlay(alSources[id]);
    
}

void sndPlay(int id) {
    // Start Playing Sound
 //openal//   alSourcePlay(alSources[id]);
}


extern "C" void PushP(int cmd, char* param1, char* param2) {
  app.output.pushP(cmd, (void*)param1, (void*)param2);
}

extern "C" void PushI(int cmd, int x, int y) {
  app.output.pushI(cmd,x,y);
}

extern "C" void alTriangle(float size) {
  app.AL10.Triangle(float(size));

}

extern "C" void alLoadModel(char* alx, char* tga, int id, float size) {
  app.rm.loadAlxModel(alx, tga, id,size );
}

extern "C" void alDrawModelTranslateRotate(int id, float posx , float posy, float posz, 
					   float angle,float x, float y,float z, 
 int rotatefirst = 0) 
{
  glPushMatrix();
  if (rotatefirst!=0)  {
    glRotatef(angle, x,y,z);
    glTranslatef(posx,posy,posz);
    } else {
    glTranslatef(posx,posy,posz);
    glRotatef(angle, x,y,z);
    }
    if (app.rm.models[id]->loaded) app.rm.models[id]->glDraw();
  glPopMatrix();
}

extern "C" void alDrawModel(int id) {
  app.rm.models[id]->glDraw();
}

extern "C" void alTranslateRotate( float posx , float posy, float posz, 
					             float angle,float x, float y,float z) {
     glTranslatef(posx,posy,posz);
     glRotatef(angle,x,y,z);
}

  extern "C" void alLine(float x1, float y1, float x2, float y2) {
   app.AL10.Line(x1,y1,x2,y2);
  }

  extern "C" void alCircle(float r, int segments) {
   app.AL10.Circle(r,short(segments));  
  }

  extern "C" void alRect(float w, float h) {
   app.AL10.Rect(w,h);  
  }

void processOutput() {
    PEG::CMD* c = app.output.pull();
    
    
    switch (c->command) {
        case CMD_SNDSET0:
        case CMD_SNDSET1:
        case CMD_SNDSET2:
        case CMD_SNDSET3:
        {
            sndSet((char*)c->param1, c->command-CMD_SNDSET, c->i2);
        }
      break;
       
        case CMD_SNDPLAY0:
        case CMD_SNDPLAY1:
        case CMD_SNDPLAY2:
        case CMD_SNDPLAY3:
        {
            sndPlay(c->command-CMD_SNDPLAY);
        }
            break;
    case CMD_TITLE:
      glutSetWindowTitle( (char*)c->param1 );
      break;
    }
    
}

static void HandleDisplay( )
{
    float newTime = time1.getElapsedTimeInSec();
	deltaT =  newTime - lastTime;
	if (aX==0 && aY==0 && aZ==0) aY=-9.8*100;

    app.Render(deltaT,aX,aY,aZ);
    processOutput();
    glutSwapBuffers( );
    lastTime = newTime;
}

static void animate(int value)
{
	// Set up the next timer tick (do this first)
    glutTimerFunc(TIMERMSECS, animate, 0);
    
	// Measure the elapsed time
	int currTime = glutGet(GLUT_ELAPSED_TIME);
	int timeSincePrevFrame = currTime - prevTime;
	elapsedTime = currTime - startTime;
    
	// ##### REPLACE WITH YOUR OWN GAME/APP MAIN CODE HERE #####
    
	// Rotate the triangle
	//rot = (ROTRATE / 1000) * elapsedTime;
    
	// ##### END OF GAME/APP MAIN CODE #####
    
	
    
	// Force a redisplay to render the new image
	glutPostRedisplay();
    
	prevTime = currTime;
}

static void HandleIdle() {
    glutPostRedisplay();
}


bool appintialized=false;
#define ADAHANDLING true
extern "C" void AppProcessInput(int,int,int);

static void sendInput( int cmd, int i1, int i2 )
{
  if (!appintialized) return;
  if (!ADAHANDLING) app.input.pushI(cmd,i1,i2);
  if (ADAHANDLING)  AppProcessInput(cmd,i1,i2);
}


static void HandleReshape( const int width, const int height )
{
    /*
     if (width!=320) {
     glutReshapeWindow(320, 480);
     return;
     }
     */
    
    
    if (height>0)										// Prevent A Divide By Zero By
    {
		//height=1;										// Making Height Equal One
        
        
        glViewport(0,0,width,height);						// Reset The Current Viewport
        sendInput(CMD_SCREENSIZE, width , height);
        glMatrixMode(GL_PROJECTION);						// Select The Projection Matrix
        glLoadIdentity();									// Reset The Projection Matrix
        
        // Calculate The Aspect Ratio Of The Window
        gluPerspective(45.0f,(GLfloat)width/(GLfloat)height,0.1f,100.0f);
        
        glMatrixMode(GL_MODELVIEW);							// Select The Modelview Matrix
        glLoadIdentity();
    }
}



static void exitIt() {
    app.Deinit();
 //openal//   deInitAL();
    exit(0);
}



static void HandleKeyBoard( const unsigned char inKey, const int inPosX, const int inPosY )
{
    
    if (inKey==27) {
        exitIt();
    }
  //if (inKey>='A' && inKey<='Z')   ---why restrict
  //  sendInput(CMD_KEYDOWN, inKey-49, 0);
    sendInput(CMD_KEYDOWN, inKey, 0);
}

static void HandleSpecialKey( const int inKey, const int inPosX, const int inPosY )
{
}

static void HandleMouse( const int inButton, const int inState, const int inPosX, const int inPosY )
{
    if (inButton==0) sendInput(inState==0?CMD_TOUCH_START:CMD_TOUCH_END, inPosX, inPosY);
}


static void HandleMotion( const int inPosX, const int inPosY )
{
    int x = inPosX;
    int y = inPosY;
    sendInput(CMD_TOUCHMOVE, x, y);
}

char ResPath[256];

void FindAppName() {
	FILE* f = fopen("CANDIDATE.h", "r");
	if (f)
	{
		char line[256];
        
		for (int i=0; i<100; i++) {
			fscanf(f, "%s", line);
			char* pn = strstr(line, ".hpp");
			strcpy(ResPath, line);
			if (pn) {
				int l = int(strlen(ResPath));
				ResPath[l-8]=0;
				strcat(ResPath, "/Data");
				break;
			}
		}
        
		fclose(f);
	} else {
        
    }
}


int main( int argc, char** argv )
{
    
   glutInit( &argc, argv );
    
    glutInitWindowSize( kWindowWidth, kWindowHeight );
    
    glutInitDisplayMode( GLUT_RGB | GLUT_DOUBLE | GLUT_DEPTH );
    
    int theWindowHandle = glutCreateWindow( APP_TITLE );
    glutSetWindow( theWindowHandle );
    
    glutDisplayFunc( HandleDisplay );
    glutReshapeFunc( HandleReshape );
    glutIdleFunc( HandleIdle );
    glutKeyboardFunc( HandleKeyBoard );
    glutSpecialFunc( HandleSpecialKey );
    glutMouseFunc( HandleMouse );
    glutMotionFunc( HandleMotion );
    HandleMotion( 0, 0 );
    
    // Setup default render states
    glClearColor( 0.3f, 0.3f, 0.3f, 1.0 );
    glEnable( GL_DEPTH_TEST );
    //glEnable( GL_COLOR_MATERIAL );
    
    FILE* f = fopen("CANDIDATE.h", "w");
  //  fputs(FULLYQUALIFIEDPATH, f);
    fclose(f);
    
    FindAppName();
    sprintf(app.rm.resourcepath, "%s", argv[0]);
    //char* l = strrchr(app.rm.resourcepath, '.');
    char* l = strstr(app.rm.resourcepath, PROJ_NAME);
	if (l) l[strlen(PROJ_NAME)] = 0;
    //    l = strrchr(app.rm.resourcepath, '/');
    //	if (l) l[0] = 0;
       char datadir[256];
    sprintf(datadir, "%s.app/Data",app.rm.resourcepath);// (char *) APP_SUBDIR);
    strcpy(app.rm.resourcepath, datadir);
 //openal//   initAL(app.rm.resourcepath);
   app.Init(app.rm.resourcepath);
   appintialized = true;
  
    HandleReshape(kWindowWidth, kWindowHeight);
    
    startTime = glutGet(GLUT_ELAPSED_TIME);
    deltaT = 0;
    time1.start();
    lastTime = time1.getElapsedTimeInSec();
    
    glutMainLoop( );
    app.Deinit();
    return 0;
}
