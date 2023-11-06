rek = rectangle


fun flagg(farge1, farge2, farge3):

base = rek(250, 160, "solid", farge1)

stripe1 = rek(40, 160, "solid", farge2)
stripe2 = rek(250, 40, "solid", farge2)

ustripe1 = rek(250, 20, "solid", farge3)
ustripe2 = rek(20, 160, "solid", farge3)

steg1 = overlay-xy(ustripe1, 80, -70, ustripe2)
steg2 = overlay-xy(stripe2, 70, -60, stripe1)
steg3 = overlay(steg1, steg2)
steg4 = overlay(steg3, base)

frame(steg4)

end


#Finland
flagg("white", "white", "blue")

#Færøyene
flagg("white", "blue", "crimson")

#Island
flagg("navy","white", "crimson")

#Norge
flagg("crimson", "white", "blue")

#Svergie
flagg("navy", "navy", "yellow")

#Danmark
flagg("crimson", "crimson", "white")

#Orkøyenesflagg
flagg("crimson", "yellow", "blue")

#Shetlandsøyenesflagg
flagg("blue", "white", "white")

#Caithnessflagg
flagg("black", "blue", "orange")