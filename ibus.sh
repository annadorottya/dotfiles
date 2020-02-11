if ibus engine | grep -q hu; then
	#switch to japanese
	ibus engine mozc-jp
elif ibus engine | grep -q jp; then
	#switch to hungarian
	ibus engine xkb:hu::hun
fi