/*
 * check and add directories to a path
 * nicholas christopoulos (nereus@freemail.gr)
 *
 * PATH's penticure
 *
 * usage: setenv PATH `path++ [[new-dir] ...]`
 */

#include <stdio.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <unistd.h>
#include <stdlib.h>
#include <string.h>

typedef struct s_node node_t;
struct s_node {
	char *str;
	node_t *next;
	};

typedef struct s_list list_t;
struct s_list {
	node_t *root;
	node_t *tail;
	};

static list_t path_list;
static list_t new_dirs;

static char *strdup(const char *src)
{
	char *buf = malloc(strlen(src) + 1);
    strcpy(buf, src);
	return buf;
}

static void node_add(list_t *list, const char *str)
{
	node_t *np = (node_t *) malloc(sizeof(node_t));
	np->str = strdup(str);
	np->next = NULL;
	if ( list->root ) {
		list->tail->next = np;
		list->tail = np;
		}
	else
		list->root = list->tail = np;
}

static void dir_add(list_t *root, const char *dir)
{
	struct stat st;
	
	if ( stat(dir, &st) == 0 ) {
		if ( S_ISDIR(st.st_mode) ) {
			const node_t *cur;
			for ( cur = path_list.root; cur; cur = cur->next ) {
				if ( strcmp(cur->str, dir) == 0 )
					break;
				}
			if ( cur == NULL )
				node_add(&path_list, dir);
			}
		}
}

static void list_add(list_t *root, const list_t *source)
{
	for ( const node_t *cur = source->root; cur; cur = cur->next )
		dir_add(root, cur->str);
}

static void delete_list(list_t *list)
{
	node_t *cur, *pre;
	while ( cur ) {
		pre = cur;
		cur = cur->next;
		free(pre->str);
		free(pre);
		}
}

static char *duppath()
{
	const node_t *cur;
	int l = 1;
	char *buf;
	
	for ( cur = path_list.root; cur; cur = cur->next )
		l += strlen(cur->str) + 1;
	buf = (char *) malloc(l);
	*buf = '\0';
	for ( cur = path_list.root; cur; cur = cur->next ) {
		strcat(buf, cur->str);
		if ( cur->next )
			strcat(buf, ":");
		}
	return buf;
}

static const char *usage = "\
check and add directories to a path, nicholas christopoulos (nereus@freemail.gr)\n\
usage: setenv PATH `path++ [-s|-u|-c|-b] [dir ...]`\n\
\t-s\tadd new directories at the beginning; otherwise appends\n\
\t-c\tprint csh command\n\
\t-b\tprint sh command\n\
\tdefault\tprints the new path\n\
";

int main(int argc, char **argv)
{
	int		flags = 0;
	const char *p, *cspath = getenv("PATH");
	char *d, *dest = strdup(cspath);

	for ( int i = 1; i < argc; i ++ ) {
		if ( argv[i][0] == '-' ) {	/* option, or error */
			for ( int j = 1; argv[i][j]; j ++ ) {
				switch ( argv[i][j] ) {
				case 'c': flags |= 0x02; break;
				case 'b': flags |= 0x04; break;
				case 's': flags |= 0x08; break;
				default:  puts(usage); return 1;
					}
				}
			}
		else
			node_add(&new_dirs, argv[i]);
		}

	if ( new_dirs.root && (flags & 0x08) )
		list_add(&path_list, &new_dirs);

	for ( p = cspath, d = dest; *p; p ++ ) {
		if ( *p == ':' ) {
			*d = '\0'; d = dest;
			if ( *dest )
				dir_add(&path_list, dest);
			}
		else
			*d ++ = *p;
		}
	*d = '\0';
	if ( *dest ) 
		dir_add(&path_list, dest);
	
	if ( new_dirs.root && (flags & 0x08) == 0 )
		list_add(&path_list, &new_dirs);

	char *pathstr = duppath();

	/* ready... */
	if ( flags & 0x02 ) {	/* return c-shell text for eval */
		write(0, "setenv PATH ", 12);
		puts(pathstr);
		}
	else if ( flags & 0x04 ) {	/* return bourne-shell text for eval */
		write(0, "export PATH=", 12);
		puts(pathstr);
		}
	else
		puts(pathstr);

	/* clean-up */
	free(pathstr);
	delete_list(&new_dirs);
	delete_list(&path_list);
	
	return 0;
}
