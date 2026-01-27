/* See LICENSE file for copyright and license details. */

/* interval between updates (in ms) */
const unsigned int interval = 1000;

/* text to show if no value can be retrieved */
static const char unknown_str[] = "n/a";

/* maximum output string length */
#define MAXLEN 2048

/*
 * function            description                     argument (example)
 *
 * battery_perc        battery percentage              battery name (BAT0)
 * NULL on OpenBSD/FreeBSD
 * battery_state       battery charging state          battery name (BAT0)
 * NULL on OpenBSD/FreeBSD
 * battery_remaining   battery remaining HH:MM         battery name (BAT0)
 * NULL on OpenBSD/FreeBSD
 * cpu_perc            cpu usage in percent            NULL
 * cpu_freq            cpu frequency in MHz            NULL
 * datetime            date and time                   format string (%F %T)
 * disk_free           free disk space in GB           mountpoint path (/)
 * disk_perc           disk usage in percent           mountpoint path (/)
 * disk_total          total disk space in GB          mountpoint path (/)
 * disk_used           used disk space in GB           mountpoint path (/)
 * entropy             available entropy               NULL
 * gid                 GID of current user             NULL
 * hostname            hostname                        NULL
 * ipv4                IPv4 address                    interface name (eth0)
 * ipv






static const struct arg args[] = {
	/* function     format              argument */

	/* 1. CPU Usage */
	{ cpu_perc,     " %s%% | ",        NULL },

	/* 2. RAM Usage */
	{ ram_perc,     " %s%% | ",        NULL },

	/* 3. Dynamic Audio Icon */
	{ run_command,  "%s ",              "amixer sget Master | awk -F\"[][]\" '/%/ { \
                                                gsub(/%/, \"\", $2); \
                                                if ($6 == \"off\") { print \"󰝟\" } \
                                                else if ($2 < 50) { print \"\" } \
                                                else { print \"\" } \
                                              }' | head -n1" },

	/*4. Battery Percentage */
	{ battery_perc , "|Battery: %s%%",	"BAT1" },

	/* 4. Date and 24h Time */
	{ datetime,     "[%s]",             "%d %m %Y %H:%M" },
};
