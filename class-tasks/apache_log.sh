#!/bin/bash
# Apache Log Size Monitor
# Check if /var/log/apache2/access.log exceeds 100MB and archive it
LOG_FILE="/var/log/apache2/access.log"
MAX_SIZE=$((100*1024*1024))   # 100 MB in bytes
DATE=$(date +%Y%m%d)
# Check if log file exists
if [ ! -f "$LOG_FILE" ]; then
    echo "Log file $LOG_FILE not found!"
    exit 1
fi
# Get current log size in bytes
LOG_SIZE=$(stat -c%s "$LOG_FILE")
echo "Current log size: $LOG_SIZE bytes"
# Compare with threshold
if [ "$LOG_SIZE" -gt "$MAX_SIZE" ]; then
    echo "Log exceeds 100MB, rotating..."
    # Compress and rename old log
    mv "$LOG_FILE" "$LOG_FILE.$DATE"
    gzip "$LOG_FILE.$DATE"
    # Create new empty log file
    touch "$LOG_FILE"
    chown www-data:www-data "$LOG_FILE"
    chmod 644 "$LOG_FILE"
    # Restart Apache
    systemctl restart apache2
    echo "Log rotated and Apache restarted."
else
    echo "Log is under 100MB, no action needed."
fi