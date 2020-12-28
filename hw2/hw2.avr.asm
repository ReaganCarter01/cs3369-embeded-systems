
hw2.avr:     file format elf32-avr


Disassembly of section .data:

00800100 <__data_start>:
  800100:	68 65       	ori	r22, 0x58	; 88
  800102:	6c 6c       	ori	r22, 0xCC	; 204
  800104:	6f 20       	and	r6, r15
  800106:	77 6f       	ori	r23, 0xF7	; 247
  800108:	72 6c       	ori	r23, 0xC2	; 194
  80010a:	64 21       	and	r22, r4
  80010c:	0a 00       	.word	0x000a	; ????
  80010e:	68 65       	ori	r22, 0x58	; 88
  800110:	6c 6c       	ori	r22, 0xCC	; 204
  800112:	6f 20       	and	r6, r15
  800114:	65 6d       	ori	r22, 0xD5	; 213
  800116:	62 65       	ori	r22, 0x52	; 82
  800118:	64 21       	and	r22, r4
	...

Disassembly of section .text:

00000000 <__vectors>:
   0:	0c 94 46 00 	jmp	0x8c	; 0x8c <__ctors_end>
   4:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
   8:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
   c:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  10:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  14:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  18:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  1c:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  20:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  24:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  28:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  2c:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  30:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  34:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  38:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  3c:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  40:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  44:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  48:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  4c:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  50:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  54:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  58:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  5c:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  60:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  64:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  68:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  6c:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  70:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  74:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  78:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  7c:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  80:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  84:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  88:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>

0000008c <__ctors_end>:
  8c:	11 24       	eor	r1, r1
  8e:	1f be       	out	0x3f, r1	; 63
  90:	cf ef       	ldi	r28, 0xFF	; 255
  92:	d0 e1       	ldi	r29, 0x10	; 16
  94:	de bf       	out	0x3e, r29	; 62
  96:	cd bf       	out	0x3d, r28	; 61

00000098 <__do_copy_data>:
  98:	11 e0       	ldi	r17, 0x01	; 1
  9a:	a0 e0       	ldi	r26, 0x00	; 0
  9c:	b1 e0       	ldi	r27, 0x01	; 1
  9e:	e2 e9       	ldi	r30, 0x92	; 146
  a0:	f1 e0       	ldi	r31, 0x01	; 1
  a2:	00 e0       	ldi	r16, 0x00	; 0
  a4:	0b bf       	out	0x3b, r16	; 59
  a6:	02 c0       	rjmp	.+4      	; 0xac <__do_copy_data+0x14>
  a8:	07 90       	elpm	r0, Z+
  aa:	0d 92       	st	X+, r0
  ac:	ac 31       	cpi	r26, 0x1C	; 28
  ae:	b1 07       	cpc	r27, r17
  b0:	d9 f7       	brne	.-10     	; 0xa8 <__do_copy_data+0x10>

000000b2 <__do_clear_bss>:
  b2:	21 e0       	ldi	r18, 0x01	; 1
  b4:	ac e1       	ldi	r26, 0x1C	; 28
  b6:	b1 e0       	ldi	r27, 0x01	; 1
  b8:	01 c0       	rjmp	.+2      	; 0xbc <.do_clear_bss_start>

000000ba <.do_clear_bss_loop>:
  ba:	1d 92       	st	X+, r1

000000bc <.do_clear_bss_start>:
  bc:	a2 32       	cpi	r26, 0x22	; 34
  be:	b2 07       	cpc	r27, r18
  c0:	e1 f7       	brne	.-8      	; 0xba <.do_clear_bss_loop>
  c2:	0e 94 67 00 	call	0xce	; 0xce <main>
  c6:	0c 94 c7 00 	jmp	0x18e	; 0x18e <_exit>

000000ca <__bad_interrupt>:
  ca:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

000000ce <main>:
#include <stdio.h>
#include <string.h>
int main() {
  ce:	cf 93       	push	r28
  d0:	df 93       	push	r29
  d2:	cd b7       	in	r28, 0x3d	; 61
  d4:	de b7       	in	r29, 0x3e	; 62
  d6:	64 97       	sbiw	r28, 0x14	; 20
  d8:	0f b6       	in	r0, 0x3f	; 63
  da:	f8 94       	cli
  dc:	de bf       	out	0x3e, r29	; 62
  de:	0f be       	out	0x3f, r0	; 63
  e0:	cd bf       	out	0x3d, r28	; 61
  char buf[20];
  strncpy(buf, "hello world!\n", 20);
  e2:	44 e1       	ldi	r20, 0x14	; 20
  e4:	50 e0       	ldi	r21, 0x00	; 0
  e6:	60 e0       	ldi	r22, 0x00	; 0
  e8:	71 e0       	ldi	r23, 0x01	; 1
  ea:	ce 01       	movw	r24, r28
  ec:	01 96       	adiw	r24, 0x01	; 1
  ee:	0e 94 88 00 	call	0x110	; 0x110 <strncpy>
  printf("hello embed!\n");
  f2:	8e e0       	ldi	r24, 0x0E	; 14
  f4:	91 e0       	ldi	r25, 0x01	; 1
  f6:	0e 94 97 00 	call	0x12e	; 0x12e <puts>
  fa:	80 e0       	ldi	r24, 0x00	; 0
  fc:	90 e0       	ldi	r25, 0x00	; 0
}
  fe:	64 96       	adiw	r28, 0x14	; 20
 100:	0f b6       	in	r0, 0x3f	; 63
 102:	f8 94       	cli
 104:	de bf       	out	0x3e, r29	; 62
 106:	0f be       	out	0x3f, r0	; 63
 108:	cd bf       	out	0x3d, r28	; 61
 10a:	df 91       	pop	r29
 10c:	cf 91       	pop	r28
 10e:	08 95       	ret

00000110 <strncpy>:
 110:	fb 01       	movw	r30, r22
 112:	dc 01       	movw	r26, r24
 114:	41 50       	subi	r20, 0x01	; 1
 116:	50 40       	sbci	r21, 0x00	; 0
 118:	48 f0       	brcs	.+18     	; 0x12c <strncpy+0x1c>
 11a:	01 90       	ld	r0, Z+
 11c:	0d 92       	st	X+, r0
 11e:	00 20       	and	r0, r0
 120:	c9 f7       	brne	.-14     	; 0x114 <strncpy+0x4>
 122:	01 c0       	rjmp	.+2      	; 0x126 <strncpy+0x16>
 124:	1d 92       	st	X+, r1
 126:	41 50       	subi	r20, 0x01	; 1
 128:	50 40       	sbci	r21, 0x00	; 0
 12a:	e0 f7       	brcc	.-8      	; 0x124 <strncpy+0x14>
 12c:	08 95       	ret

0000012e <puts>:
 12e:	0f 93       	push	r16
 130:	1f 93       	push	r17
 132:	cf 93       	push	r28
 134:	df 93       	push	r29
 136:	e0 91 1e 01 	lds	r30, 0x011E	; 0x80011e <__data_end+0x2>
 13a:	f0 91 1f 01 	lds	r31, 0x011F	; 0x80011f <__data_end+0x3>
 13e:	23 81       	ldd	r18, Z+3	; 0x03
 140:	21 ff       	sbrs	r18, 1
 142:	1b c0       	rjmp	.+54     	; 0x17a <puts+0x4c>
 144:	8c 01       	movw	r16, r24
 146:	d0 e0       	ldi	r29, 0x00	; 0
 148:	c0 e0       	ldi	r28, 0x00	; 0
 14a:	f8 01       	movw	r30, r16
 14c:	81 91       	ld	r24, Z+
 14e:	8f 01       	movw	r16, r30
 150:	60 91 1e 01 	lds	r22, 0x011E	; 0x80011e <__data_end+0x2>
 154:	70 91 1f 01 	lds	r23, 0x011F	; 0x80011f <__data_end+0x3>
 158:	db 01       	movw	r26, r22
 15a:	18 96       	adiw	r26, 0x08	; 8
 15c:	ed 91       	ld	r30, X+
 15e:	fc 91       	ld	r31, X
 160:	19 97       	sbiw	r26, 0x09	; 9
 162:	88 23       	and	r24, r24
 164:	31 f0       	breq	.+12     	; 0x172 <puts+0x44>
 166:	09 95       	icall
 168:	89 2b       	or	r24, r25
 16a:	79 f3       	breq	.-34     	; 0x14a <puts+0x1c>
 16c:	df ef       	ldi	r29, 0xFF	; 255
 16e:	cf ef       	ldi	r28, 0xFF	; 255
 170:	ec cf       	rjmp	.-40     	; 0x14a <puts+0x1c>
 172:	8a e0       	ldi	r24, 0x0A	; 10
 174:	09 95       	icall
 176:	89 2b       	or	r24, r25
 178:	19 f0       	breq	.+6      	; 0x180 <puts+0x52>
 17a:	8f ef       	ldi	r24, 0xFF	; 255
 17c:	9f ef       	ldi	r25, 0xFF	; 255
 17e:	02 c0       	rjmp	.+4      	; 0x184 <puts+0x56>
 180:	8d 2f       	mov	r24, r29
 182:	9c 2f       	mov	r25, r28
 184:	df 91       	pop	r29
 186:	cf 91       	pop	r28
 188:	1f 91       	pop	r17
 18a:	0f 91       	pop	r16
 18c:	08 95       	ret

0000018e <_exit>:
 18e:	f8 94       	cli

00000190 <__stop_program>:
 190:	ff cf       	rjmp	.-2      	; 0x190 <__stop_program>

