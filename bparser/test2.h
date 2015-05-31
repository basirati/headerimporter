#  define NI_IDN_ALLOW_UNASSIGNED 64 /* Don't reject unassigned Unicode
					code points.  */

int __return;
int __glibc_reserved[5];

typedef void (*__sighandler_t) (int);
extern int sigpause (int __sig) __asm__ ("__xpg_sigpause");

/* The following constants should be used for the second parameter of
   `shutdown'.  */
enum
{
  SHUT_RD = 0,		/* No more receptions.  */
#define SHUT_RD		SHUT_RD
  SHUT_WR,		/* No more transmissions.  */
#define SHUT_WR		SHUT_WR
  SHUT_RDWR		/* No more receptions or transmissions.  */
#define SHUT_RDWR	SHUT_RDWR
};

typedef union { __SOCKADDR_ALLTYPES
	      } __SOCKADDR_ARG __attribute__ ((__transparent_union__));

typedef union { __SOCKADDR_ALLTYPES
	      } __CONST_SOCKADDR_ARG __attribute__ ((__transparent_union__));

extern int socketpair (int __domain, int __type, int __protocol,
		       int __fds[2]) __THROW;


#elif defined __USE_XOPEN2K

extern int utimensat (int __fd, const char *__path,
		      const struct timespec __times[2],
		      int __flags)
     __THROW __nonnull ((2));

extern int futimens (int __fd, const struct timespec __times[2]) __THROW;

__extern_inline int
__NTH (stat (const char *__path, struct stat *__statbuf))
{
  return __xstat (_STAT_VER, __path, __statbuf);
}


__intN_t (8, __QI__);
__intN_t (16, __HI__);
__intN_t (32, __SI__);
__intN_t (64, __DI__);

typedef union
  {
    union wait *__uptr;
    int *__iptr;
  } __WAIT_STATUS __attribute__ ((__transparent_union__));

__extern_inline int
__NTH (atoi (const char *__nptr))
{
  return (int) strtol (__nptr, (char **) NULL, 10);

