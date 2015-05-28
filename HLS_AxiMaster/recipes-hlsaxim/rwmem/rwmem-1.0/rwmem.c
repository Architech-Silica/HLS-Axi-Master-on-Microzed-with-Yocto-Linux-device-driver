/*
 * Copyright (c) 2012 Xilinx, Inc.  All rights reserved.
 *
 * Xilinx, Inc.
 * XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" AS A
 * COURTESY TO YOU.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION AS
 * ONE POSSIBLE   IMPLEMENTATION OF THIS FEATURE, APPLICATION OR
 * STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION
 * IS FREE FROM ANY CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE
 * FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.
 * XILINX EXPRESSLY DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO
 * THE ADEQUACY OF THE IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO
 * ANY WARRANTIES OR REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE
 * FROM CLAIMS OF INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY
 * AND FITNESS FOR A PARTICULAR PURPOSE.
 *
 */

#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <byteswap.h>
#include <unistd.h>
#include <stdlib.h>
#include <stdio.h>
#include <stdint.h>
#include <errno.h>
#include <sys/mman.h>

#define PAGE_SIZE ((size_t)getpagesize())
#define PAGE_MASK ((uint64_t)(long)~(PAGE_SIZE - 1))

int main(int argc, char **argv)
{
    int c, fd;
    uint64_t offset, base;
    uint32_t value;
    volatile uint8_t *mm;
    int cached = 0;
    int swab = 0;
    int dump = 1;
    int i;

    while (1) {
        c = getopt(argc, argv, "csd");
        if (c < 0)
            break;

        switch (c) {
            case 'c':
                cached = 1;
                break;
            case 's':
                swab = 1;
                break;
            case 'd':
                dump = 16;
                break;
            default:
                fprintf(stderr, "Bad command line option.\n");
                exit(1);
        }
    }

    argc -= optind;

    if ((argc != 1) && (argc != 2)) {
        fprintf(stderr, "usage: %s OFFSET [VALUE]\n", argv[0]);
        return 1;
    }

    fd = open("/dev/mem", O_RDWR|(!cached ? O_SYNC : 0));
    if (fd < 0) {
        fprintf(stderr, "open(/dev/mem) failed (%d)\n", errno);
        return 1;
    }

    offset = strtoull(argv[optind+0], NULL, 0);
    if (argc == 2)
        value = strtoull(argv[optind+1], NULL, 0);

    base = offset & PAGE_MASK;
    offset &= ~PAGE_MASK;

    mm = mmap(NULL, PAGE_SIZE, PROT_READ | PROT_WRITE, MAP_SHARED, fd, base);
    if (mm == MAP_FAILED) {
        fprintf(stderr, "mmap64(0x%x@0x%lx) failed (%d)\n",
                PAGE_SIZE, base, errno);
        return 1;
    }


    if (argc == 1) {
	for(i=0;i<dump;i++) {
            value = *(volatile uint32_t *)(mm + offset + i*4);
            if (swab)
                value = bswap_32(value);
            printf("0x%016llx = 0x%08lx\n", (base + offset + i*4), value);
        }
    } else {
        if (swab)
            value = bswap_32(value);
        *(volatile uint32_t *)(mm + offset) = value;
    }

    munmap((void *)mm, PAGE_SIZE);
    close(fd);

    return 0;
}
