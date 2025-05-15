#!/bin/bash

typewriter() {
  text="$1"
  delay="${2:-0.02}"
  for ((i=0; i<${#text}; i++)); do
    echo -n "${text:$i:1}"
    sleep $delay
  done
  echo
}

clear
typewriter "Motorcycle Truths about safety." 0.05
sleep 1

typewriter ""
typewriter "[BIKE CLASSIFICATION]" 0.03
typewriter "✅ Ninja 400 (300cc) = Low-mid cc category." 0.01
typewriter "➤ No significant difference in risk from 250cc per NHTSA." 0.01
typewriter "➤ Can have a special exhaust to indicate to other drivers that a motorcycle is near. (Both a Joke and Not a Joke)" 0.01
sleep 1

typewriter ""
typewriter "[RISK FACTORS & CRASH CONTRIBUTIONS]" 0.03
typewriter "✔ DOT Helmet:             ×0.63 risk  — Head injury = 37% of fatal crashes (Helmets are cool)" 0.01
typewriter "✔ MSF Safety Course:      ×0.5 risk   — 50% of crashes involve untrained riders" 0.01
typewriter "✔ No Alcohol:             ×0.72 risk  — 28% of fatalities involve alcohol (I am not 21 yet)" 0.01
typewriter "✔ Daylight Riding:        ×0.5 risk   — 50% less accidents in daylight (None of my events are at night)" 0.01
typewriter "✔ Full Gear:              ×0.9 injury — 10% of severe injuries avoidable w/ gear (Gear is cool)" 0.01
typewriter "✔ High-Vis Gear:          ×0.85 risk  — Visibility issues = 25% of crashes due to dark bikes (mine would be white)." 0.01
typewriter "✔ Defensive Riding:       ×0.8 risk   — 20% of crashes = Tired Riding" 0.01
typewriter "✔ Tire Checks Weekly:     ×0.95 risk  — Tire issues = 5% of crashes" 0.01
typewriter "✔ Mirror & Signal Checks: ×0.92 risk  — Poor signaling = 8% of urban crashes" 0.01
typewriter "✔ No Passenger:           ×0.96 risk  — Passengers increase accident odds by 4%" 0.01
typewriter "✔ Under 50mph Speeds:     ×0.8 risk   — Most fatalities = 55mph+ roads" 0.01
sleep 1

typewriter ""
typewriter "[SCENARIO]" 0.03
typewriter "🛣️  Daily commute: 50 minutes" 0.01
typewriter "🚫 No freeway, no traffic — side roads only" 0.01
typewriter "📍 Familiar route = reduced accident likelihood" 0.01
sleep 1

typewriter ""
typewriter "[CALCULATING ADJUSTED RISK...]" 0.03
base=25.2
adjusted=$(echo "$base * 0.63 * 0.5 * 0.72 * 0.5 * 0.9 * 0.85 * 0.8 * 0.95 * 0.92 * 0.96 * 0.8" | bc -l)
percent=$(printf "%.1f" $(echo "$adjusted * 100" | bc -l))
sleep 1

typewriter ""
typewriter "➤ ➤ ➤ FINAL RISK PERCENT VS CAR: $percent%" 0.05
typewriter "    (Based on same trip, safe riding, training & gear)" 0.01
sleep 1

typewriter ""
typewriter "VISUAL SCALE:" 0.03
echo ""
echo -e "Car  : [■■■■■■■■■■] 100%"
echo -n "Bike : [■■■■■■■■■■■] "
echo "${percent}%"
echo ""
sleep 1

# ASCII Art
cat << "EOF"

 ___ ___   ___   ______   ___   ____      __  __ __    __  _        ___ 
|   |   | /   \ |      | /   \ |    \    /  ]|  |  |  /  ]| |      /  _]
| _   _ ||     ||      ||     ||  D  )  /  / |  |  | /  / | |     /  [_ 
|  \_/  ||  O  ||_|  |_||  O  ||    /  /  /  |  ~  |/  /  | |___ |    _]
|   |   ||     |  |  |  |     ||    \ /   \_ |___, /   \_ |     ||   [_ 
|   |   ||     |  |  |  |     ||  .  \\     ||     \     ||     ||     |
|___|___| \___/   |__|   \___/ |__|\_| \____||____/ \____||_____||_____|
                                                                        

EOF

echo
typewriter "Please let me get a motorcycle." 0.06
