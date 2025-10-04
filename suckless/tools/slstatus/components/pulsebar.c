#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "../util.h"

const char* pulsebar(const char* unused)
{
    static char bar[64];
    char buf[16];
    int vol = 0;
    int is_muted = 0;

    // Get mute status
    FILE* fp = popen("pamixer --get-mute", "r");
    if (!fp)
        return NULL;
    if (fgets(buf, sizeof(buf), fp))
        is_muted = (strncmp(buf, "true", 4) == 0);
    pclose(fp);

    if (!is_muted)
    {
        fp = popen("pamixer --get-volume", "r");
        if (!fp)
            return NULL;
        if (fgets(buf, sizeof(buf), fp))
            vol = atoi(buf);
        if (vol > 100)
            vol = 100; // cap at 100
        if (vol < 0)
            vol = 0; // Just in case
        pclose(fp);
    }

    int filled = is_muted ? 0 : vol / 10;
    int empty = 10 - filled;

    char bar_display[32] = "";
    for (int i = 0; i < filled; i++)
        strcat(bar_display, "█");
    for (int i = 0; i < empty; i++)
        strcat(bar_display, "░");

    snprintf(bar, sizeof(bar), "%s %s", is_muted ? "🔇" : "🔊", bar_display);
    return bar;
}
