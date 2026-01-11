#!/bin/bash

OUTDIR="$HOME/Videos/Recordings"
PIDFILE="/tmp/wf-recorder.pid"

mkdir -p "$OUTDIR"

# =====================
# Audio defaults
# =====================
SYS_AUDIO=true
MIC_AUDIO=false
MIC_SOURCE="alsa_input"

# =====================
# Audio Settings Menu
# =====================
audio_settings() {
    while true; do
        choice=$(
        printf "%s\n" \
          " System Audio: $([[ $SYS_AUDIO == true ]] && echo ON || echo OFF)" \
          " Microphone: $([[ $MIC_AUDIO == true ]] && echo ON || echo OFF)" \
          "󰌍 Back" |
        fzf --prompt="Audio Settings > " --height=40% --border
        )

        case "$choice" in
            *System*) SYS_AUDIO=$([[ $SYS_AUDIO == true ]] && echo false || echo true) ;;
            *Microphone*) MIC_AUDIO=$([[ $MIC_AUDIO == true ]] && echo false || echo true) ;;
            *Back*|"") break ;;
        esac
    done
}

# =====================
# Main Menu
# =====================
MODE=$(
printf "%s\n" \
  "󰑋 Full Screen" \
  "󰍹 Select Region" \
  "󰍺 Select Monitor" \
  "󰐊 Audio Settings" \
  "󰙧 Cancel" |
fzf --prompt="Screen Recorder > " --height=40% --border
)

case "$MODE" in
    *Audio*)
        audio_settings
        exec "$0"
        ;;
    *Cancel*|"")
        exit 0
        ;;
esac

FILE="$OUTDIR/rec-$(date +'%Y-%m-%d_%H-%M-%S').mp4"

# =====================
# Build audio args
# =====================
AUDIO_ARGS=()
$SYS_AUDIO && AUDIO_ARGS+=("-a")
$MIC_AUDIO && AUDIO_ARGS+=("--audio=$MIC_SOURCE")

# =====================
# Start recording (BACKGROUND)
# =====================
case "$MODE" in
    *Full*)
        wf-recorder "${AUDIO_ARGS[@]}" -f "$FILE" >/tmp/wf-rec.log 2>&1 &
        ;;
    *Region*)
        GEOM="$(slurp)"
        [[ -z "$GEOM" ]] && exit 0
        wf-recorder "${AUDIO_ARGS[@]}" -g "$GEOM" -f "$FILE" >/tmp/wf-rec.log 2>&1 &
        ;;
    *Monitor*)
        MONITOR=$(hyprctl monitors | awk '/Monitor/{print $2}' | fzf --prompt="Select Monitor > ")
        [[ -z "$MONITOR" ]] && exit 0
        wf-recorder "${AUDIO_ARGS[@]}" -o "$MONITOR" -f "$FILE" >/tmp/wf-rec.log 2>&1 &
        ;;
esac

REC_PID=$!
echo "$REC_PID" > "$PIDFILE"

notify-send -u low "Screen Recorder" "󰻂 Recording started"

# =====================
# STOP MENU (while recording)
# =====================
while kill -0 "$REC_PID" 2>/dev/null; do
    STOP=$(
    printf "%s\n" \
      "⏹ Stop Recording" |
    fzf --prompt="Recording… > " --height=20% --border
    )

    [[ -z "$STOP" ]] && continue

    kill -INT "$REC_PID"
    rm -f "$PIDFILE"
    notify-send -u low "Screen Recorder" "⏹ Recording stopped"
    exit 0
done
