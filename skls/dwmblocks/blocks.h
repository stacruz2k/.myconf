//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
	{"",    "ipnet.sh",    60,     0},
    {"",    "vol.sh",      10,     0},
    {"",    "mem.sh",      30,     0},
    {"",    "time.sh",     60,		0},
};

//sets delimiter between status commands. NULL character ('\0') means no delimiter.
static char delim[] = " | ";
static unsigned int delimLen = 5;
