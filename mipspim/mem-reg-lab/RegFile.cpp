/*
 * RegFile.cpp
 *
 *  Created on: Sep 14, 2015
 *      Author: jbb
 */

#include "RegFile.h"

RegFile::RegFile() {

}

uint32_t& RegFile::operator [](unsigned i) {


	if (i == 0) { //checks to see if register 0
		A[i] = 0; //if is register 0, set value as 0
  	}
	return A[i]; //return address in memory


/*
	switch(i) {
		case 0: A[i] = 0;
		default:
			break;
	}
	return A[i];
*/
}

