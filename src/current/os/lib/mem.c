#include "mem.h"


char * 	__malloc_heap_start;
char * 	__malloc_heap_end;
char * __malloc_current_ptr;

mutex_t mutex_mem_;


void mem_init()
{
	extern char _data;
	extern char __StackTop;
	extern char _ebss;
	extern char _heap;

	__malloc_heap_start = &_heap;
	__malloc_heap_end = __malloc_heap_start + (&__StackTop - &_data) - (&_ebss - &_data);
	__malloc_current_ptr = __malloc_heap_start;

  mutex_init(&mutex_mem_);
}


void * 	malloc(unsigned int __size)
{
  if ((char*)(__size + __malloc_current_ptr) > __malloc_heap_end)
    return NULL;

	void *res = __malloc_current_ptr;

	__malloc_current_ptr+= __size;

  return res;
}

void 	free(void *__ptr)
{
  (void)__ptr;
}


void* malloc_safe(u32 size)
{
  #ifdef LIB_MUTEX
  mutex_lock(&mutex_mem_);
  #endif

  void *res = malloc(size);

  #ifdef LIB_MUTEX
  mutex_unlock(&mutex_mem_);
  #endif
  return res;
}

void free_safe(void *ptr)
{
  #ifdef LIB_MUTEX
  mutex_lock(&mutex_mem_);
  #endif

	free(ptr);

  #ifdef LIB_MUTEX
  mutex_unlock(&mutex_mem_);
  #endif
}
