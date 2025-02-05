#define HAVE_LIBUTIL 1
#define HAVE_PTY_H 1

// openpty and forkpty are non standard bsd functions present in glibc
#define HAVE_OPENPTY 1
#define HAVE_FORKPTY 1

#define HAVE_SYS_IOCTL_H 1
#define HAVE_SYS_RESOURCE_H 1
#define HAVE_SYS_TIME_H 1
#define HAVE_UNISTD_H 1

#define PACKAGE_BUGREPORT "theo.cavignac+dev@gmail.com"
#define PACKAGE_NAME "dtach"
#define PACKAGE_STRING "dtach 0.9"
#define PACKAGE_TARNAME "dtach"
#define PACKAGE_URL "https://github.com/Lattay/dtach"
#define PACKAGE_VERSION "0.9"
#define RETSIGTYPE void

#define REDRAW_DEFAULT REDRAW_WINCH
