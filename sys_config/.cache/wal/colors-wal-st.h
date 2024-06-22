const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#0A0B0F", /* black   */
  [1] = "#30575F", /* red     */
  [2] = "#5A595A", /* green   */
  [3] = "#A56039", /* yellow  */
  [4] = "#BD8D6D", /* blue    */
  [5] = "#407E81", /* magenta */
  [6] = "#549596", /* cyan    */
  [7] = "#e1cdbf", /* white   */

  /* 8 bright colors */
  [8]  = "#9d8f85",  /* black   */
  [9]  = "#30575F",  /* red     */
  [10] = "#5A595A", /* green   */
  [11] = "#A56039", /* yellow  */
  [12] = "#BD8D6D", /* blue    */
  [13] = "#407E81", /* magenta */
  [14] = "#549596", /* cyan    */
  [15] = "#e1cdbf", /* white   */

  /* special colors */
  [256] = "#0A0B0F", /* background */
  [257] = "#e1cdbf", /* foreground */
  [258] = "#e1cdbf",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
