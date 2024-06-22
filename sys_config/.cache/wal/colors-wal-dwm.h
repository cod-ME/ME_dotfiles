static const char norm_fg[] = "#e1cdbf";
static const char norm_bg[] = "#0A0B0F";
static const char norm_border[] = "#9d8f85";

static const char sel_fg[] = "#e1cdbf";
static const char sel_bg[] = "#5A595A";
static const char sel_border[] = "#e1cdbf";

static const char urg_fg[] = "#e1cdbf";
static const char urg_bg[] = "#30575F";
static const char urg_border[] = "#30575F";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
