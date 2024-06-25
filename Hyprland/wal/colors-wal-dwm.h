static const char norm_fg[] = "#f4c8d7";
static const char norm_bg[] = "#0A000B";
static const char norm_border[] = "#aa8c96";

static const char sel_fg[] = "#f4c8d7";
static const char sel_bg[] = "#C47BC2";
static const char sel_border[] = "#f4c8d7";

static const char urg_fg[] = "#f4c8d7";
static const char urg_bg[] = "#B26EC2";
static const char urg_border[] = "#B26EC2";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
