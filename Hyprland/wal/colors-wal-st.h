const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#130914", /* black   */
  [1] = "#2A588E", /* red     */
  [2] = "#5D6D8D", /* green   */
  [3] = "#69959B", /* yellow  */
  [4] = "#5FAAA3", /* blue    */
  [5] = "#9BA39E", /* magenta */
  [6] = "#A8D0B0", /* cyan    */
  [7] = "#e6e4cb", /* white   */

  /* 8 bright colors */
  [8]  = "#a19f8e",  /* black   */
  [9]  = "#2A588E",  /* red     */
  [10] = "#5D6D8D", /* green   */
  [11] = "#69959B", /* yellow  */
  [12] = "#5FAAA3", /* blue    */
  [13] = "#9BA39E", /* magenta */
  [14] = "#A8D0B0", /* cyan    */
  [15] = "#e6e4cb", /* white   */

  /* special colors */
  [256] = "#130914", /* background */
  [257] = "#e6e4cb", /* foreground */
  [258] = "#e6e4cb",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
