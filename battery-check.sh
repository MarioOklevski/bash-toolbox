#!/bin/bash

# Check if acpi is installed
if ! command -v acpi &> /dev/null; then
    echo "acpi command not found. Please install 'acpi' package."
    exit 1
fi

# Get battery info
battery_info=$(acpi -b)

# Extract battery level and status
battery_level=$(echo "$battery_info" | grep -oP '\d+(?=%)' | head -n1)
battery_status=$(echo "$battery_info" | awk '{print $3}' | tr -d ',')

# Only notify if battery is discharging and below threshold
if [[ "$battery_status" == "Discharging" && "$battery_level" -le 20 && "$battery_level" -ge 16 ]]; then
    notify-send \
        -u normal \
        -h string:x-canonical-private-synchronous:battery \
        "⚠️ Low Battery" \
        "Battery level is at ${battery_level}%.\nPlease plug in your charger."
fi

if [[ "$battery_status" == "Discharging" && "$battery_level" -le 15 ]]; then
    notify-send \
        -u critical \
        -h string:x-canonical-private-synchronous:battery \
        "⚠️ Low Battery" \
        "Battery level is at ${battery_level}%.\nPlease plug in your charger."
fi