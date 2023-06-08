#ifndef SEVENSEG_H_
#define SEVENSEG_H_

#define  GPIO_BASE      0xFFFF2000
#define  Button_Status  GPIO_BASE + 0
#define  SW_Status      GPIO_BASE + 1   //if pointer of int, increment(+1) is equal to address(+4)
#define  LEDG           GPIO_BASE + 2
#define  SevenSeg0      GPIO_BASE + 3
#define  SevenSeg1      GPIO_BASE + 4
#define  SevenSeg2      GPIO_BASE + 5
#define  SevenSeg3      GPIO_BASE + 6
#define  SevenSeg4      GPIO_BASE + 7
#define  SevenSeg5      GPIO_BASE + 8
#define  SEG_0      0x7E    /* Display "0" on 7 Segment */
#define  SEG_1      0x30    /* Display "1" on 7 Segment */
#define  SEG_2      0x6D    /* Display "2" on 7 Segment */
#define  SEG_3      0x79    /* Display "3" on 7 Segment */
#define  SEG_4      0x33    /* Display "4" on 7 Segment */
#define  SEG_5      0x5B    /* Display "5" on 7 Segment */
#define  SEG_6      0x5F    /* Display "6" on 7 Segment */
#define  SEG_7      0x72    /* Display "7" on 7 Segment */
#define  SEG_8      0x7F    /* Display "8" on 7 Segment */
#define  SEG_9      0x7B    /* Display "9" on 7 Segment */
#define  SEG_A      0x77    /* Display "A" on 7 Segment */
#define  SEG_B      0x1F    /* Display "B" on 7 Segment */
#define  SEG_C      0x4E    /* Display "C" on 7 Segment */
#define  SEG_D      0x3D    /* Display "D" on 7 Segment */
#define  SEG_E      0x4F    /* Display "E" on 7 Segment */
#define  SEG_F      0x47    /* Display "F" on 7 Segment */
#define  SEG_       0x01    /* Display "-" on 7 Segment */

#endif /* SEVENSEG_H_ */

