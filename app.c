#include <stdio.h>

int main () {
	printf("Options:\n-----\n1)Easy package creator\n2)Make blank project\n3)Build and install from project dir\n");
	int c;
	scanf("%i",&c);
	if (c == 1) {
		system("./create_pkg.sh");
	}
	if (c == 2) {
		system("./blankproject.sh");
	}
	if (c == 3) {
		system("./create_and_install.sh");
	}
}
