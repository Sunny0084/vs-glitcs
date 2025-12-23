from random import randint

#Változtatások (info menüpont)
changelog = """
:::0.7.2 Változtatások:::
\t-Halál után már NEM szexelhetsz
\t-Ha élve elszabadulsz, több lesz a végső pontszámod (2x)
\t-Egy pár komment
\t-információ menüpont, changelog
\t-Meghalsz ha nincs faszod

:::0.7.2e9:::
\t-optimalizálás
\t-High-score system

:::0.7.2e10:::
\tbug fixing

:::0.7.2e11:::
\tHP-rendszer
"""

#Főmenü
version = "0.7.2e11"
print("""
\t>>>Sex 2<<<

play : Játék kezdése
info : játék info stb stb.
quit : kilépés
""")

#perma paraméterek
fail = False
times_played = 0
final_score = 0
bonus = 0

health = 100

#play/info/quit input
cmdline = input("> ")

while True:
    #ideiglenes pontszám, halál checker
    score = 0
    nice = False

    if health <= 0:
        print("Meghaltál!")
        fail = True
        if health < 0:
            print("Overkill!", health)
    if fail == True:
        break

    if cmdline == "play":

        print("HP:", health)
        dicksize = input("Mekkora lesz a faszod? (1-13cm)\n> ")

        if dicksize == "quit":
            break
        if dicksize is not int:
            dicksize = int(dicksize)
        if dicksize > 13:
            print("Buzi vagy")
            break
        elif dicksize < 1:
            print("nincs faszod!!!!!!!!")
            fail = True
            break

        if dicksize >= 10:
            bonus += 6
            print("*Nagy Fasz Bónusz! +6pont")
        elif dicksize > 5:
            bonus += 3
            print("*Bátor bónusz! +3pont")

        pussyhole = randint(5, 13)


        def pontozas():
            print("Pussy hole:", pussyhole)
            print("Dick:", dicksize)
            global score
            global nice
            pscore = score
            score += round((dicksize/pussyhole)*100)
            print(f"({pscore})+{dicksize}/{pussyhole}*100={score}")
            if nice == True:
                print("*Nice Fit multiplier (+25%)")
                score += score/4
            print("\nScore:", round(score))
            global times_played
            times_played += 1


        def baszas(pussy = pussyhole, dick = dicksize):
            global health
            if dick > pussy:
                print(f"Ouch! Nem fért bele a faszod. ({dick} > {pussy})")
                health -= 100*(dick-pussy)/6.5
                health = round(health)
            elif dick == pussyhole:
                print("*Nice Fit! +25HP")
                health += 25
                if health > 100:
                    health = 100
                global nice
                nice = True
                pontozas()
            else:
                global score
                score -= pussy - dick
                pontozas()


        baszas()

        final_score += score
        
    elif cmdline == "quit":
        break
    elif cmdline == "info":
        print("\tJáték verzió:", version)
        print(changelog)
        print("\t >>>Sex 2<<<")
        cmdline = input("> ")

    else:
        print("Nem létezik")
        cmdline = input("> ")

#Halál checker 2.0
if fail == True:
    print("\n\t***Meghaltál.***")
    if times_played != 0:
        final_score /= times_played * 10
    final_score += bonus/10
    print("pontszám:", round(final_score))


if times_played != 0:
    print("\nÖsszpontszám:", round(final_score))
    print(times_played, "alkalommal kúrtál sikeresen.")

    if fail == False:
        print("\t---Gratulálok! Elszöktél az életeddel!---")
        final_score /= times_played * 5
        final_score += bonus/10 + (100-health)/10
        print("\tpontszám:", round(final_score))

    #Szöveges pontozás
    if final_score == 0:
        print("Elképesztő.")
    else:
        pass


    with open("highScore.txt", "a") as faszom:
        pass


    with open("highScore.txt", "r+") as ff:
        high_score = ff.readline().strip()
        print("High-score:",high_score)
        if not high_score:
            print("nincs")
            print(round(final_score), file=ff)
        elif final_score > int(high_score):
            with open("highScore.txt", "w") as overwrite:
                print(round(final_score), file=overwrite)
            print("\t-Új High-score!-")


    end = input("Újra próbálod? (i/n)\n> ")

    if end == "i":
        dicksize = input("Mekkora lesz a faszod? (1-13 cm)\n> ")

    elif end == "n":
        pass
