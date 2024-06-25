const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#0A000B", /* black   */
  [1] = "#B26EC2", /* red     */
  [2] = "#C47BC2", /* green   */
  [3] = "#F56BFB", /* yellow  */
  [4] = "#DF8CB9", /* blue    */
  [5] = "#D789C1", /* magenta */
  [6] = "#EB97C1", /* cyan    */
  [7] = "#f4c8d7", /* white   */

  /* 8 bright colors */
  [8]  = "#aa8c96",  /* black   */
  [9]  = "#B26EC2",  /* red     */
  [10] = "#C47BC2", /* green   */
  [11] = "#F56BFB", /* yellow  */
  [12] = "#DF8CB9", /* blue    */
  [13] = "#D789C1", /* magenta */
  [14] = "#EB97C1", /* cyan    */
  [15] = "#f4c8d7", /* white   */

  /* special colors */
  [256] = "#0A000B", /* background */
  [257] = "#f4c8d7", /* foreground */
  [258] = "#f4c8d7",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
