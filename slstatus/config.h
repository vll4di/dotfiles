    /* See LICENSE file for copyright and license details. */

unsigned int interval = 1000;

/* text to show if no value can be retrieved */
static const char unknown_str[] = "n/a";

/* maximum output string length */
#define MAXLEN 2048

/*
 *  * args array:
 *   * function            format          argument
 *    */

static const struct arg args[] = {
		/* function     format               argument */
		{ run_command, " %s ", "/home/vll4di/.local/bin/now_playing.sh" },
		{ run_command,  " %s ",         "/home/vll4di/.local/bin/net_status.sh" },

		{ cpu_perc,     " 💻 %s%% ",         NULL           },
		{ ram_perc,     " 󰘚 %s%% ",         NULL           },
		{ battery_perc, " 🔋 %s%% ",         "BAT0"         }, 
		{ run_command,  " %s ",         "/home/vll4di/.local/bin/status_audio.sh" },	
		{ datetime,     " 📅 %s ",           "%d-%m-%Y %H:%M" },

};

