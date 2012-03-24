// created by: geo (March 2012)
#ifndef GXIPMSG_H_
#define GXIPMSG_H_

#include "common.h"

// Constants
#define	GXIM_NAME_MAXLEN	100

#define GXIM_IPMSG_NOOPERATION		0x00000000UL
#define GXIM_IPMSG_BR_ENTRY			0x00000001UL
#define GXIM_IPMSG_BR_EXIT			0x00000002UL
#define GXIM_IPMSG_ANSENTRY			0x00000003UL

// Variable declerations
int GXIM_UDP_Socket;
char GXIM_Local_Hostname[GXIM_NAME_MAXLEN];
char GXIM_Local_Username[GXIM_NAME_MAXLEN];
char GXIM_Local_Handlename[GXIM_NAME_MAXLEN];

struct passwd* GXIM_Passwd;

// Function declerations

#endif /*GXIPMSG_H_*/
