# SPDX-FileCopyrightText: 2023 Dominik Lammers
# SPDX-License-Identifier: GPL-3.0-or-later

import matplotlib.pyplot as plt
import numpy as np
from scipy import interpolate
import pandas as pd
import os

# Berechnet automatisch die tägliche Foragezeit und tägliche Durchschnittstemperatur über mehrere Jahre.
# Liest .csv Datei ein, die mit PVGIS Tool erstellt wurde. Erstellt automatisch Subordner mit Output .csv Dateien.



# Dateinamen ohne ".csv" angeben (im selben Ordner wie Python Datei, also ohne Pfad):
filename_0 = "EfsaSpanien_2005_2016"

#Anzahl der Jahre in der Datei angeben:
YearsAmount = 12









# Funktion liest Temperatur und Irridation ein. Wenn Irridation über dem Grenzwert ist, kann geforaged werden.
def check_Forage(tempfunc,irrfunc,timestep):
    a = 825760.3485823541
    b = -3.1406263763050557
    treshold = a * tempfunc[timestep] ** b

    if irrfunc[timestep] > treshold:
        return 1
    else :
        return 0


def AvgTemps(filename, years):

    filename_0 = filename
    filename = filename_0 + ".csv"

    #Number of Years in the File
    YearsAmount = years


    Full_Data = pd.read_csv(filename, delimiter=",", header=0,
                            skiprows=8, skipfooter = 10)
    #print(Full_Data)

    DF_len = Full_Data.shape[0]


    #Dataframes für Irridation, und dann für Temperaturen
    Temp_data = Full_Data.loc[0:DF_len-1,'T2m']

    #Zu numpy arrays verarbeiten, um sie interpolieren zu können
    Temp = Temp_data.to_numpy()
    #print(Temp)

    x = np.arange(0,DF_len)
    nrDays = np.arange(0,DF_len/24)


    avgDailyTemp = np.zeros((365,YearsAmount))
    for i in range(0,YearsAmount*365):
        start = (i*24)
        end = ((i+1)*24)
        np.int(i/365)
        avgDailyTemp[i%365,np.int(i/365)] = np.average(Temp[start:end])
    MultiYearAverage = np.zeros(365)
    for i in range(0,365):
        MultiYearAverage[i] = np.average(avgDailyTemp[i,0:YearsAmount-1])

    return MultiYearAverage
    #print(avgDailyTemp)
    #print(MultiYearAverage)







filename = filename_0 + ".csv"
Full_Data = pd.read_csv(filename, delimiter=",", header=0,
                        skiprows=8, skipfooter = 10)

DF_len = Full_Data.shape[0]

#Dataframes für Irridation, und dann für Temperaturen
Irr_data = Full_Data.loc[0:DF_len-1,'G(i)']
Temp_data = Full_Data.loc[0:DF_len-1,'T2m']

#Zu numpy arrays verarbeiten, um sie interpolieren zu können
Irr = Irr_data.to_numpy()
Temp = Temp_data.to_numpy()

#print(Irr_data)
#print(Temp_data)

# länge von 1 Jahr an ablesedaten, 24*366 (Tag 0 bis Tag 365)
x = np.arange(0,DF_len)

#Interpolationsfunktion
f_temp = interpolate.interp1d(x,Temp)
f_Irr = interpolate.interp1d(x,Irr)

#Funktionen im Minutentakt ablesen
xnew = np.arange(0,DF_len-1,1/60)
Temp_Interpol = f_temp(xnew)
Irr_Interpol = f_Irr(xnew)

#Optional Interpolierte Funktion plotten (Interpolation sieht genau so aus wie automatische plot Funktion)
plot_Inter = False
if plot_Inter :
    plt.scatter(x,Temp)
    plt.plot(xnew,Temp_Interpol, "r")
    plt.show()

    plt.scatter(x,Irr)
    plt.plot(xnew,Irr_Interpol, "r")
    plt.show()



#Für jede Minute einlesen, ob geforaged werden kann.
canForage = np.zeros(len(xnew))
for i in range(len(xnew)):
    canForage[i] = check_Forage(Temp_Interpol, Irr_Interpol, i)



# Jeden Tag summieren, um die täglichen Forage-Minuten zu erhalten.



ForageTimes = np.zeros(366 * YearsAmount)
for i in range(366 * YearsAmount):

    start = i * 60 *24
    end = (i+1)*60 * 24 - 1
    ForageTimes[i] = np.sum(canForage[start:end])


#Bei mehreren Jahren, jedes Jahr in die nächste Spalte (Nächster Array schritt) stecken
ForageTimes_2d = np.zeros((366,YearsAmount))
ForageTimes_average = np.zeros(366)
if YearsAmount > 1:
    for i in range(366):
        for j in range(YearsAmount):
            ForageTimes_2d[i,j] = ForageTimes[i + j * 366]
            ForageTimes_average[i] = ForageTimes_average[i] + ForageTimes[i + j * 366] / YearsAmount


#plt.plot(ForageTimes/60)
#plt.show()


for i in range(0,len(ForageTimes)):
    ForageTimes[i] = np.around(ForageTimes[i],2)


for i in range(0, len(ForageTimes_average)):
    ForageTimes_average[i] = np.around(ForageTimes_average[i]/60, 2)

AverageTemps = AvgTemps(filename_0 , YearsAmount)
for i in range(0, len(AverageTemps)):
    AverageTemps[i] = np.around(AverageTemps[i], 2)



os.makedirs("NewForagetimes/" + filename_0, exist_ok=True)

np.savetxt("NewForagetimes/"+ filename_0 + "/AllYearsDailyForagetime.csv",ForageTimes/60, delimiter = ",")
if YearsAmount > 1:
    np.savetxt("NewForagetimes/"+ filename_0 + "/DailyForageTimes_2D.csv",ForageTimes_2d/60, delimiter = ",")
    np.savetxt("NewForagetimes/"+ filename_0 + "/AverageForagetimes.csv",np.array([ForageTimes_average]), delimiter = ",")


np.savetxt("NewForagetimes/"+ filename_0 + "/AverageTemperatures.csv",np.array([AverageTemps]), delimiter = ",")

