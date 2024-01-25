/*
 * ----------------------------------------------------------------------------------
 * Filename     :	STD_TYPES.h
 *
 * Author       :	Abdelrhman Nasr
 * Version      :	v1.0
 * C Standard   :	C99
 * Compiler     :	AVR GCC
 * ----------------------------------------------------------------------------------
 *
 * ----------------------------------------------------------------------------------
 * Version		     Author		        Description
 * v1.0		    	Abdelrhman Nasr		Initial Creation
 * ----------------------------------------------------------------------------------
 */

#ifndef STD_TYPES_H
#define STD_TYPES_H

typedef unsigned char u8 ;
typedef signed char s8 ;

typedef unsigned short u16 ;
typedef signed short s16 ;

typedef unsigned long int u32 ;
typedef signed long int s32 ;

typedef float f32 ;
typedef double f64 ;

#define  NULL  0

#define  Ok           0
#define  NOT_OK       1
#define  NULL_POINTER 2

#endif /* STD_TYPES_H */
