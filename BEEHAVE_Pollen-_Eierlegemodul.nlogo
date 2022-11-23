__includes [] ; This line is only there to speed up the interpretation process. If the line is not there checking the code takes two or three times longer


breed [ hives hive ]
breed [ eggCohorts eggCohort]
breed [ larvaeCohorts larvaeCohort]
breed [ pupaeCohorts pupaeCohort]
breed [ IHbeeCohorts IHbeeCohort]  ; in-hive bee
breed [ droneEggCohorts droneEggCohort]
breed [ droneLarvaeCohorts droneLarvaeCohort]
breed [ dronePupaeCohorts dronePupaeCohort]
breed [ droneCohorts droneCohort]
breed [ foragerSquadrons foragerSquadron ]
   ; small group of foragers, groupsize: SQUADRON_SIZE
breed [ miteOrganisers miteOrganiser ]
   ; keep track of mites in brood cells
breed [ flowerPatches flowerPatch]
breed [ Signs Sign ]
   ; signs to inform the user

globals [
  ABANDON_POLLEN_PATCH_PROB_PER_S
  AFF
  AFF_BASE
  AllDaysAllPatchesList
  BugAlarm
  ColonyDied
  ColonyTripDurationSum
  ColonyTripForagersSum
  CROPVOLUME
  CumulativeHoneyConsumption
  DailyForagingPeriod
  DailyHoneyConsumption
  DailyMiteFall
  DailyPollenConsumption_g
  Day
  DeathsAdultWorkers_t
  DeathsForagingToday
  DecentHoneyEnergyStore
  DRONE_EGGLAYING_START
  DRONE_EGGLAYING_STOP
  DRONE_EMERGING_AGE
  DRONE_HATCHING_AGE
  DRONE_LIFESPAN
  DRONE_PUPATION_AGE
  DRONE_EGGS_PROPORTION
  EMERGING_AGE
  EmptyFlightsToday
  ENERGY_HONEY_per_g
  ENERGY_SUCROSE
  ExcessBrood
  FIND_DANCED_PATCH_PROB
  FLIGHT_VELOCITY
  FLIGHTCOSTS_PER_m
  FORAGER_NURSING_CONTRIBUTION
  FORAGING_STOP_PROB
  ForagingRounds
  ForagingSpontaneousProb
  HarvestedHoney_kg
  HATCHING_AGE
  HONEY_STORE_INIT
  HoneyEnergyStore
  HoneyEnergyStoreYesterday
  HoPoMo_seasont
  IdealPollenStore_g
  InhivebeesDiedToday
  INVADING_DRONE_CELLS_AGE
  INVADING_WORKER_CELLS_AGE
  InvadingMitesDroneCellsReal
    ; actual number of mites invading the cells, might be
    ; lower than theor. number, if brood cells are crowded with mites
  InvadingMitesDroneCellsTheo
    ; theoretical number of mites invading the cells
  InvadingMitesWorkerCellsReal
  InvadingMitesWorkerCellsTheo
  LIFESPAN
  LostBroodToday
    ; brood that die due to lack of nursing or lack of pollen today
  LostBroodTotal  ; .. and summed up
  MAX_AFF
  MAX_BROOD_NURSE_RATIO
  MAX_DANCE_CIRCUITS
  ;MAX_EGG_LAYING
  MAX_HONEY_ENERGY_STORE
  MAX_INVADED_MITES_DRONECELL
  MAX_INVADED_MITES_WORKERCELL
  MAX_PROPORTION_POLLEN_FORAGERS
  MAX_TOTAL_KM
  MIN_AFF
  MIN_IDEAL_POLLEN_STORE
  MITE_FALL_DRONECELL
  MITE_FALL_WORKERCELL
  MITE_MORTALITY_BROODPERIOD
  MITE_MORTALITY_WINTER
  MORTALITY_DRONE_EGGS
  MORTALITY_DRONE_LARVAE
  MORTALITY_DRONE_PUPAE
  MORTALITY_DRONES
  MORTALITY_DRONES_INFECTED_AS_PUPAE
  MORTALITY_EGGS
  MORTALITY_FOR_PER_SEC
  MORTALITY_INHIVE
  MORTALITY_INHIVE_INFECTED_AS_ADULT
  MORTALITY_INHIVE_INFECTED_AS_PUPA
  MORTALITY_LARVAE
  MORTALITY_PUPAE
  N_FLOWERPATCHES
  N_GENERIC_PLOTS
  NectarFlightsToday
  NewDroneEggs
  NewDroneLarvae
  NewDronePupae
  NewDrones
  NewDrones_healthy
  NewForagerSquadronsHealthy
  NewForagerSquadronsInfectedAsAdults
  NewForagerSquadronsInfectedAsPupae
  NewIHbees
  NewIHbees_healthy
  NewReleasedMitesToday
    ; all (healthy and infected) mites released from cells (mothers+offspring)
    ; on current day (calculated after MiteFall!)
  NewWorkerEggs
  NewWorkerLarvae
  NewWorkerPupae
  PATCHCOLOR
  PhoreticMites   ; all phoretic mites, healthy and infected
  PhoreticMitesHealthyRate
  POLLEN_DANCE_FOLLOWERS
  POLLEN_STORE_INIT
  PollenFlightsToday
  POLLENLOAD
  PollenStore_g
  PollenStore_g_Yesterday
  POST_SWARMING_PERIOD
  PRE_SWARMING_PERIOD
  ProbPollenCollection
  PropNewToAllPhorMites
  PROTEIN_STORE_NURSES_d
  ProteinFactorNurses
  Pupae_W&D_KilledByVirusToday
    ; number of drone + worker pupae that were killed by the virus today
  PUPATION_AGE
  Queenage
  RecruitedFlightsToday
  SaveInvadedMODroneLarvaeToPupae
  SaveInvadedMOWorkerLarvaeToPupae
  SaveWhoDroneLarvaeToPupae
  SaveWhoWorkerLarvaeToPupae
  SEARCH_LENGTH_M
  SearchingFlightsToday
  SEASON_START             ; defines beginning of foraging period
  SEASON_STOP              ; end of foraging period & latest end of drone production
  SimpleDancing
  STEPWIDTH
  STEPWIDTHdrones
  SumLifeSpanAdultWorkers_t
  SummedForagerSquadronsOverTime
  SwarmingDate
  TIME_UNLOADING
  TIME_UNLOADING_POLLEN
  TodaysAllPatchesList
  TodaysSinglePatchList
  TotalBeesAdded
    ; beekeeper can add bees in autumn, these are added up as long
    ; as simulation runs
  TotalDroneEggs
  TotalDroneLarvae
  TotalDronePupae
  TotalDrones
  TotalEggs
  TotalEventsToday         ; sum of todays "xxxFlightsToday"
  TotalForagers
  TotalFPdetectionProb
  TotalHoneyFed_kg
    ; if "beekeeper" has to feed the colony, fed honey is added up as long
    ; as simulation runs
  TotalHoneyHarvested_kg
  TotalIHbees
  TotalLarvae
  TotalMites
  TotalPollenAdded
    ; beekeeper can add pollen in spring, which is added up as long
    ; as simulation runs
  TotalPupae
  TotalWeightBees_kg ; weight of all bees (brood, adults, drones..)
  TotalWorkerAndDroneBrood
  VIRUS_KILLS_PUPA_PROB
  VIRUS_TRANSMISSION_RATE_MITE_TO_PUPA
    ; probability for an infected invaded mite to infect the bee pupa
  VIRUS_TRANSMISSION_RATE_PUPA_TO_MITES
    ; probability for an infected bee pupa to infect healthy invaded mites
  WEIGHT_WORKER_g


  ;##############################################################PollenModule / ELRtModule##############################################################################
  ;PollenModule Globals used for the updated Pollenstore
  PollenStoreList_g

  PollenForagersToday
  NectarForagersToday
  EggsAddedToday

  ;ELRtModule Globals used for the new Egg Laying Rate
  AverageEggsList
  BroodPheromone
  AdultComparison
  AdultDif
  SummerForagers
  AverageIdealPollenList

  dailyTemp

  BPRatio_report
  winterbeeCount
  ;###########################################################################################################################################################




     AllBeeMappCorrectionsList   ;   ***NEW FOR BEEHAVE_BEEMAPP2015***
     AssessmentNumber            ;   ***NEW FOR BEEHAVE_BEEMAPP2015***
     WeatherDataList             ;   ***NEW FOR BEEHAVE_BEEMAPP2015***


]

turtles-own ; all cohorts below have these variables too
[
  age
  ploidy
  number
  numberDied
  invadedByMiteOrganiserID
]

pupaeCohorts-own
[
  number_infectedAsPupa
  number_healthy
]

dronePupaeCohorts-own
[
  number_infectedAsPupa
  number_healthy
]

IHbeeCohorts-own
[
  number_infectedAsPupa
  number_infectedAsAdult
  number_healthy
  ]

droneCohorts-own
[
  number_infectedAsPupa
  number_healthy
]

foragerSquadrons-own
[
  activity
  activityList
  knownNectarPatch
  knownPollenPatch
  pollenForager
  cropEnergyLoad
  collectedPollen
  mileometer
  km_today
  infectionState

  ;ELRtModule New attribute, used to denote foragers as Winterbees (born in the previous year) Winterbees aren't counted for Brood Pheromone Concentration
  winterBee
  ;;;;;;;;;;;;
]

flowerPatches-own
[
  patchType
  distanceToColony
  xcorMap
  ycorMap
  oldPatchID
  size_sqm
  quantityMyl
  amountPollen_g
  nectarConcFlowerPatch
  detectionProbability
  flightCostsNectar
  flightCostsPollen
  EEF
  danceCircuits
  danceFollowersNectar
  summedVisitors
  nectarVisitsToday
  pollenVisitsToday
  tripDuration
  tripDurationPollen
  mortalityRisk
  mortalityRiskPollen
  handlingTimeNectar
  handlingTimePollen
]

miteOrganisers-own
[
  workerCellListCondensed
  droneCellListCondensed
  cohortInvadedMitesSum
  invadedMitesHealthyRate
  invadedDroneCohortID
  invadedWorkerCohortID
]


; =========== BUTTONS =========================================================
; *****************************************************************************

to Setup ; BUTTON!
  clear-all
  set N_INITIAL_BEES round N_INITIAL_BEES
  set N_INITIAL_MITES_HEALTHY round N_INITIAL_MITES_HEALTHY
  set N_INITIAL_MITES_INFECTED round N_INITIAL_MITES_INFECTED
  reset-ticks
  if ReadInfile = true [ ReadFileProc ]
  ParameterizationProc
  ifelse ReadInfile = false
    [ CreateFlowerPatchesProc ]
       ; IF: flower patches are defined by input fields in GUI
    [ Create_Read-in_FlowerPatchesProc ]
       ; ELSE: or read in from a text file
  if ReadBeeMappFile = true ;                      ***NEW FOR BEEHAVE_BEEMAPP2015***
   [ ReadBeeMappFileProc ]
  CreateImagesProc
  if (Experiment = "Experiment A") or (Experiment = "Experiment B")
    [
      user-message "Please make sure experimental colony conditions are defined in Setup and GoTreatmentProc"
      ;(INSERT INITIAL CONDITIONS FOR EXPERIMENTAL COLONIES HERE)
      GoTreatmentProc
    ]




end

; ********************************************************************************************************************************************************************************

to CreateOutputFileProc
  ; BUTTON!  writes data in file, copied from:
  ; Netlogo: Library: Code Examples: Output_Example.nlogo

  set WriteFile true
  let filename "Output.txt"
  if is-string? filename  ; to make sure filename is a string
  [
    if file-exists? filename   ; if the file already exists, it is deleted
    [
      file-delete filename
    ]
    file-open filename
    WriteToFileProc  ; record the initial turtle data
  ]
end

; ********************************************************************************************************************************************************************************

to StartProc
  ; called by Day/Month/Year/x days and RUN Button

  if BugAlarm = true
  [
    ask patches
    [
      set pcolor red
    ]
    user-message ("BUG ALARM!! (Start Proc)")  stop
      ; programm is stopped, if an "assertion" is violated, background becomes red
  ]

  if (stopDead = true) and (ColonyDied = true) [ stop ]
    ; programm is stopped, if colony is dead and stopDead switch is "On"

  Go ; <<<<<<<<<<<<<<<<<<<<<<<<<<

  if WriteFile = true [ WriteToFileProc ]
    ; results are recorded in Output
    ; file after each timestep

end ; StartProc

;================================================================================================================================================================================

to ParameterizationProc


;  begin ***NEW FOR BEEHAVE_BEEMAPP2015***
 set WeatherDataList []
 if Weather = "Weather File"
 [
   ifelse file-exists? WeatherFile
   [
   file-open WeatherFile
   while [not file-at-end?]
   [
      set WeatherDataList lput read-from-string(file-read-line) WeatherDataList
   ]
   file-close
   ]
   [ user-message "No such weather input file available!" ]
 ]
;  end ***NEW FOR BEEHAVE_BEEMAPP2015***


; BROOD CARE:
  set FORAGER_NURSING_CONTRIBUTION  0.2
  set MAX_BROOD_NURSE_RATIO  3
    ; 3  (3: Free & Racey 1968) (Becher et al. 2010: 2.65)
    ; # brood that can be raised by a single "nurse" bee ("nurse": IH-bee and
    ; to some degree also foragers!, see FORAGER_NURSING_CONTRIBUTION)

; COLONY:
  set ColonyDied  FALSE
  set DRONE_EGGS_PROPORTION  0.04
    ; 0.04  Wilkinson&Smith 2002 (from Allen 1963, 1965)

  set MIN_IDEAL_POLLEN_STORE  250
    ; 250  [g] min. amount of pollen that a colony tries to store

  set POLLEN_STORE_INIT  0.01
    ; 100 [g] pollen present on 1st day of simulation

  set PRE_SWARMING_PERIOD  3
    ;  HoPoMo: 3d, see also Winston p. 184

  set PROTEIN_STORE_NURSES_d  7
    ;  7 [d] Crailsheim 1990

  set ProteinFactorNurses  1
    ; 0..1, is daily calculated in PollenConsumptionProc, reflects protein
    ; content of brood food

  set Queenage  230       ;  queen emerged mid of May

  set WEIGHT_WORKER_g  0.1
    ; 0.125  0.1 or 0.11 or 0.125
    ; (0.1: HoPoMo 0.11: ; Martin 1998: 1kg adults = 9000 bees)
    ; (0.125: Calis et al. 1999) higher weight => less mites!

; DEVELOPMENT:
  set AFF_BASE  21       ; like BEEPOP
  set MIN_AFF 7  ; Robinson 1992: 7d; see also: Winston 1987, p. 92/93
    ; models: Amdam & Omholt 2003, Beshers et al 2001: 7d
  set MAX_AFF 50
    ; within range given in Winston 1987, p. 92/93
  set DRONE_EGGLAYING_START  115
    ;  115: 25.April (Allen 1963: late April ..late August)
  set DRONE_EGGLAYING_STOP  240
    ; 240  240: 28.August (Allen 1963: late April ..late August)
  set DRONE_HATCHING_AGE  3     ; Jay 1963, Hrassnig, Crailsheim 2005
  set DRONE_PUPATION_AGE  10    ; i.e. capping of the cell; Fukuda, Ohtani 1977
  set DRONE_EMERGING_AGE  24
  set HATCHING_AGE  3           ;  Winston p. 50
  set PUPATION_AGE  9    ; i.e. capping of the cell
  set EMERGING_AGE  21
 ; set MAX_EGG_LAYING 1600         ; 1600  max. # eggs laid per day

; ENVIRONMENT
  set SEASON_START  1       ; season: 1st January - 31st December, i.e.
  set SEASON_STOP  365      ; foraging potentially possible throughout the year (weather depending)
  set ABANDON_POLLEN_PATCH_PROB_PER_S  0.00002

; FORAGING
  set CROPVOLUME  50
    ; 50   [microlitres] (~50mg nectar) Winston (1987), Nuñez (1966, 1970), Schmid-Hempel et al. (1985)
  set FIND_DANCED_PATCH_PROB  0.5; (0.5 = ca. average of reported values):
    ; Seeley 1983: recruits required 4.8 dance-guided search trips to find target patch = 0.21
    ; Judd 1995: of 63 dance followers, 16 were successful, 16/63 = 0.25
    ; Biesmeijer, deVries 2001: review: 0.95 (Oettingen-Spielberg 1949), 0.73 (Lindauer 1952)

  set FLIGHT_VELOCITY  6.5
    ; 6.57084    [m/s] derived from Seeley 1994, mean velocity
    ; during foraging flight see also Ribbands p127: 12.5-14.9mph (*1.609=20.1-24.0 km/h =
    ; 5.58-6.66m/s)

  set FLIGHTCOSTS_PER_m 0.000006   ;
    ; [kJ/m] Flightcosts per m (Goller, Esch 1990: 0.000006531 kJ/m,  (assuming speed of 6.5m/s:
    ; flight costs: 0.0424W - compare with Schmid-Hempel et al. 1985: 0.0334W => 0.000005138 )

  set FORAGING_STOP_PROB  0.3

  set MAX_DANCE_CIRCUITS  117                   ;  (117) (Seeley, Towne 1992)
  set MAX_PROPORTION_POLLEN_FORAGERS  0.8       ;  (0.8: Lindauer 1952)
  set POLLEN_DANCE_FOLLOWERS  2     ; 2: number of bees, following a pollen dancer
  set POLLENLOAD  0.015
    ; [g] 0.015g average weight of 2 pollen pellets, HoPoMo: 15 mg: "On average,
    ; one pollen foraging flight results in 15mg of collected pollen (Seeley, 1995)"

  set ProbPollenCollection  0
    ; probability to collect pollen instead of nectar  calculated in ForagingRoundProc

  set SEARCH_LENGTH_M 17 * 60 * FLIGHT_VELOCITY  ; 17*60*6.5 = 6630m
    ; [m] distance (= 17 min!), a unsuccesful forager flies on average
    ; Seeley 1983: search trip: 17min (+-11)

  set SimpleDancing FALSE
    ; (false) if true: fixed nectar dancing TH and fixed number of dance followers

  set TIME_UNLOADING  116
    ; (116) [s] time, a nectar forager needs to become unloaded  derived from Seeley 1994

  set TIME_UNLOADING_POLLEN  210
    ; (210s = 3.5 min) [s]  Ribbands p.131: 3.5 minutes (Park 1922,1928b)

  set TotalFPdetectionProb  -1
    ; correct value is set in "Foraging_searchingProc" but only when searching takes places

; MORTALITY
  set DRONE_LIFESPAN  37
   ; Fukuda Ohtani 1977; life span drones:  summer: 14d, autumn: 32-42d
  set LIFESPAN  290
    ; [d] 290d (max. life span of worker; Sakagami, Fukuda 1968)

  set MAX_TOTAL_KM  800
    ; [ km ]  800, as mortality acts only at end of time step! 838km: max. flight
    ; performance in a foragers life (Neukirch 1982)

  set MORTALITY_DRONE_EGGS 0.064     ;  Fukuda Ohati 1977:
  set MORTALITY_DRONE_LARVAE 0.044   ;  100 eggs, 82 unsealed brood, 60 sealed brood and 56 adults
  set MORTALITY_DRONE_PUPAE  0.005
  set MORTALITY_DRONES  0.05        ; Fukuda Ohati 1977: "summer", av. lifespan: 14d
  set MORTALITY_EGGS  0.03           ;  HoPoMo p. 230: 0.03
  set MORTALITY_LARVAE  0.01       ;  HoPoMo p. 230: 0.01
  set MORTALITY_PUPAE  0.001       ;  HoPoMo p. 230: 0.001
  set MORTALITY_FOR_PER_SEC  0.00001
    ; derived from Visscher&Dukas 1997 (Mort 0.036 per hour foraging)

  set MORTALITY_INHIVE  0.004;
    ; 0.0038: derived from Martin 2001 (healthy winter
    ; based on 50% mortality) (HoPoMo: MORTALITYbase: 0.01) p. 230


; PHYSICS
  set ENERGY_HONEY_per_g  12.78
    ; [kJ/g] (= [J/mg])    Wikipedia: http://www.nal.usda.gov/fnic/foodcomp/search/

  set ENERGY_SUCROSE  0.00582       ; 0.00582 [kJ/micromol]   342.3 g/mol

; PROGRAM
  set STEPWIDTH  50       ;  for graphic
  set STEPWIDTHdrones  5       ;  for graphic
  set BugAlarm  FALSE       ;
  set N_GENERIC_PLOTS 8

; VARROA
  set MITE_FALL_DRONECELL  0.2
    ;  0.2 (20%) Martin 1998  proportion of those mites emerging from
    ; worker cells, which fall from the comb and are hence considered to die.

  set MITE_FALL_WORKERCELL  0.3
    ;  0.3 (30%) Martin 1998  proportion of those mites emerging from drone
    ; cells, which fall from the comb and are hence considered to die.

  set MITE_MORTALITY_BROODPERIOD  0.006
    ; Martin 1998: 0.006;  (0.006: Fries et al 1994, Tab. 6) daily mortality of phoretic
    ; mites during brood period

  set MITE_MORTALITY_WINTER  0.002
    ; Martin 1998: 0.002;   Fries et al 1994: 0.004 (Tab. 6)
  set NewReleasedMitesToday  0
    ;  all (healthy and infected) mites released from cells (mothers+offspring)
    ; on current day (calculated after MiteFall!)

; AUXILIARY VARIABLES
  set DecentHoneyEnergyStore  N_INITIAL_BEES * 1.5 * ENERGY_HONEY_per_g
    ; re-set in every foraging round (ForagingRoundProc )

  set HONEY_STORE_INIT  0.5 * MAX_HONEY_STORE_kg * 1000
    ;  [g]   (1g Honey = 124.80kJ)

  set HoneyEnergyStore  (HONEY_STORE_INIT * ENERGY_HONEY_per_g)       ;  [kJ]
  set IdealPollenStore_g  POLLEN_STORE_INIT
    ; [g] is calculated daily in PollenConsumptionProc

  set MAX_HONEY_ENERGY_STORE  MAX_HONEY_STORE_kg * ENERGY_HONEY_per_g * 1000 ; [kJ]
  set PollenStore_g  POLLEN_STORE_INIT       ;  [g]
  set NewForagerSquadronsHealthy (N_INITIAL_BEES / SQUADRON_SIZE)
    ; foragers in time step 1 are all healthy

  set TotalForagers  NewForagerSquadronsHealthy * SQUADRON_SIZE
    ;  has to be set here to calculate egg laying on the 1st time step

  set Aff  AFF_BASE
  set INVADING_DRONE_CELLS_AGE  DRONE_PUPATION_AGE - 2
    ; 2d before capping, Boot et al. 1992 (Exp. & Appl. Acarol. 16:295-301)

  set INVADING_WORKER_CELLS_AGE  PUPATION_AGE - 1
    ; 1d before capping, Boot et al. 1992 (Exp. & Appl. Acarol. 16:295-301)

  set PhoreticMites  N_INITIAL_MITES_HEALTHY + N_INITIAL_MITES_INFECTED
  set TotalMites  PhoreticMites
  set PATCHCOLOR 38 ; colour of the background
  ask patches [ set pcolor PATCHCOLOR ]
  if (N_INITIAL_MITES_HEALTHY + N_INITIAL_MITES_INFECTED) > 0
  [
    set PhoreticMitesHealthyRate N_INITIAL_MITES_HEALTHY
        / (N_INITIAL_MITES_HEALTHY + N_INITIAL_MITES_INFECTED)
  ]
  if RAND_SEED != 0 [ random-seed RAND_SEED ]
    ; if RAND_SEED set to 0, random numbers will differ in every run

  ; MITE REPRODUCTION MODELS:
  if MiteReproductionModel = "Fuchs&Langenbach"
  [
    set MAX_INVADED_MITES_DRONECELL 16
      ; 16 (Fuchs&Langenbach 1989) defines length of workercell, dronecell list
      ; of MiteOrganisers

    set MAX_INVADED_MITES_WORKERCELL 8
      ; (Fuchs&Langenbach 1989)
      ; defines length of workercell, dronecell list of MiteOrganisers
  ]

  if MiteReproductionModel = "Martin"
  [
    set MAX_INVADED_MITES_DRONECELL 4
      ; defines length of workercell, dronecell list of MiteOrganisers
    set MAX_INVADED_MITES_WORKERCELL 4
      ; defines length of workercell, dronecell list of MiteOrganisers
  ]

  if MiteReproductionModel = "Test"
  [
    set MAX_INVADED_MITES_DRONECELL 5
    set MAX_INVADED_MITES_WORKERCELL 5
  ]

  if MiteReproductionModel = "Martin+0"
  [
    set MAX_INVADED_MITES_DRONECELL 5
    set MAX_INVADED_MITES_WORKERCELL 5
  ]

  if MiteReproductionModel = "No Mite Reproduction"
  [
    set MAX_INVADED_MITES_DRONECELL 5
    set MAX_INVADED_MITES_WORKERCELL 5
  ]

  ; VIRUS TYPES;
  if Virus = "DWV"
  [
    set VIRUS_TRANSMISSION_RATE_MITE_TO_PUPA 0.89  ; 0.89
    set VIRUS_TRANSMISSION_RATE_PUPA_TO_MITES 1   ; 1: Martin 2001
    set VIRUS_KILLS_PUPA_PROB 0.2   ; DWV: 0.2 (Martin 2001)
    set MORTALITY_INHIVE_INFECTED_AS_PUPA 0.012; (0.0119)
      ; if pupa was infected but survived
      ; based on Martin 2001 Survivorship curve (infected, winter)
      ; calculated at: 50% mortality(=58d);

    set MORTALITY_INHIVE_INFECTED_AS_ADULT MORTALITY_INHIVE
      ;  Martin 2001: DWV infected adults become carriers with unaffected survivorship

    set MORTALITY_DRONES_INFECTED_AS_PUPAE MORTALITY_INHIVE_INFECTED_AS_PUPA * (MORTALITY_DRONES / MORTALITY_INHIVE)
      ; NO data on drone mortality! Use same increase in mortality as for workers
  ]

  if Virus = "APV"
  [
    set VIRUS_TRANSMISSION_RATE_MITE_TO_PUPA 1
    set VIRUS_TRANSMISSION_RATE_PUPA_TO_MITES 0
      ; 0: Martin 2001 (0, as the pupae dies! - so this value doesn't matter at all!)

    set VIRUS_KILLS_PUPA_PROB 1   ; APV: 1 (Martin 2001)
    set MORTALITY_INHIVE_INFECTED_AS_PUPA 1
      ; doesn't matter, as APV infected pupae die before emergence!

    set MORTALITY_INHIVE_INFECTED_AS_ADULT 0.2
     ; (0.2: Sumpter & Martin 2004)

    set MORTALITY_DRONES_INFECTED_AS_PUPAE MORTALITY_INHIVE_INFECTED_AS_PUPA * (MORTALITY_DRONES / MORTALITY_INHIVE)
      ; NO data on drone mortality! Use same increase in mortality as for workers
  ]

  if Virus = "benignDWV" ; like DWV but does not harm the infected bees
  [
    set VIRUS_TRANSMISSION_RATE_MITE_TO_PUPA 0.89     ; 1
    set VIRUS_TRANSMISSION_RATE_PUPA_TO_MITES 1
      ; 0: Martin 2001 (0, as the pupae dies!)
    set VIRUS_KILLS_PUPA_PROB 0  ; (benign!)
    set MORTALITY_INHIVE_INFECTED_AS_PUPA MORTALITY_INHIVE ; (benign!)
    set MORTALITY_INHIVE_INFECTED_AS_ADULT MORTALITY_INHIVE
    set MORTALITY_DRONES_INFECTED_AS_PUPAE MORTALITY_INHIVE_INFECTED_AS_PUPA
      ; NO data on drone mortality! Use worker mortality!
  ]

  if Virus = "modifiedAPV"
  [
    set VIRUS_TRANSMISSION_RATE_MITE_TO_PUPA 1     ; 1
    set VIRUS_TRANSMISSION_RATE_PUPA_TO_MITES 1   ;
    set VIRUS_KILLS_PUPA_PROB 1  ; APV: 1 (Martin 2001)
    set MORTALITY_INHIVE_INFECTED_AS_PUPA 1
      ; doesn't matter, as APV infected pupae die before emergence!

    set MORTALITY_INHIVE_INFECTED_AS_ADULT 0.2
      ; (0.2: Sumpter & Martin 2004)

    set MORTALITY_DRONES_INFECTED_AS_PUPAE MORTALITY_INHIVE_INFECTED_AS_PUPA
    ; NO data on drone mortality! Use worker mortality!
  ]

  if Virus = "TestVirus"
  [
    set VIRUS_TRANSMISSION_RATE_MITE_TO_PUPA 1  ; 0.89
    set VIRUS_TRANSMISSION_RATE_PUPA_TO_MITES 1   ; 1: Martin 2001
    set VIRUS_KILLS_PUPA_PROB 0   ; DWV: 0.2 (Martin 2001)
    set MORTALITY_INHIVE_INFECTED_AS_PUPA 0.012; (0.0119)
      ; if pupae was infected but survived; based on Martin 2001 Survivorship
      ; curve (infected, winter) calculated at 50% mortality = 58d age

    set MORTALITY_INHIVE_INFECTED_AS_ADULT MORTALITY_INHIVE
      ;  Martin 2001: DWV infected adults become carriers with unaffected survivorship

    set MORTALITY_DRONES_INFECTED_AS_PUPAE MORTALITY_INHIVE_INFECTED_AS_PUPA
      ; NO data on drone mortality! Use worker mortality!
  ]


  ;###########################################################PollenModule ELRtModule#############################################################################

  ;The various global Variables for the Pollen Module and Egg Laying Module are initialized in this Procedure
  ELRtParameterizationProc

  ;###########################################################################################################################################################

end;

; ********************************************************************************************************************************************************************************

to CreateImagesProc
  ; "signs" are symbols in the NetLogo "World" which are used to visualize structure
  ; and dynamics of the colony/varroa model

  create-hives 1
  [
    ifelse ReadInfile = true ;
      ; true: hive placed on the left side, else: in the centre
      [ setxy -1 4.5 ]
      [ setxy 16 4.5 ]
    set size 7 set shape "beehiveDeepHive" set color brown
  ]

  create-Signs 1
  [
    setxy 16 -15
    set shape "skull"
    set size 15
    set color black
    hide-turtle
  ] ;

  create-Signs 1
  [
    setxy 40 3
    set shape "sun"
    set size 7
    set color yellow
    hide-turtle
  ] ;

  create-Signs 1
  [
    setxy 37 2
    set shape "cloud"
    set size 7
    set color grey
    hide-turtle
  ]

  create-Signs 1
  [
    setxy 38 -10
    set shape "beelarva_x2"
    set size 8
    set color white
    facexy xcor + 1 ycor + 1 ; (turned by 45deg)
    hide-turtle
  ]

  create-Signs 1
  [
    setxy 31 3
    set shape "arrow"
    set size 4
    set color green
    facexy xcor + 1 ycor
    set label (HoneyEnergyStore - HoneyEnergyStoreYesterday)
           / ( ENERGY_HONEY_per_g * 1000 )
  ]

  create-Signs 1
  [
    setxy 26 3
    set shape "arrowpollen"
    set size 4
    set color green
    facexy xcor - 1 ycor
    set label (PollenStore_g - PollenStore_g_Yesterday)
  ]

  create-Signs 1
    ; sign for suppressed foraging i.e. if foraging prob. is set
    ; to 0 although weather is suitable for foraging
  [
    setxy 36 -4
    set shape "exclamation"
    set size 3
    set color orange
    hide-turtle
  ]

  create-Signs 1
  [
    setxy 38 -18
    set shape "pete"
    set size 6
    set color white
    set label-color black
    hide-turtle
  ]

  create-Signs 1
  [
    setxy 38 -25
    set shape "honeyjar"
    set size 6
    set color white
    hide-turtle
  ]

  create-Signs 1
  [
    setxy 38 -25
    set shape "ambrosia"
    set size 6
    set color white
    hide-turtle
  ]
  create-Signs 1
  [
    setxy 42.5 -25
    set shape "pollengrain"
    set size 7
    set color yellow
    hide-turtle
  ]
  create-Signs 1
  [
    setxy 38 -31
    set shape "varroamite03"
    set size 6
    set color 33
    set heading 0
    hide-turtle
  ]
  create-Signs 1
  [
    setxy 38 -31.2
    set shape "x"
    set size 6
    set color red
    hide-turtle
  ]
  create-Signs 1
  [
    setxy 38 -33
    set shape "colonies_merged"
    set size 6
    set color brown
    set heading 45
    hide-turtle
  ]
  create-Signs 1
  [
    setxy 38 -40
    set shape "queen"
    set size 8
    set color 33
    set heading 0
    hide-turtle
    ]
  create-Signs 1 ; ***NEW FOR BEEHAVE_BEEMAPP2015***
  [
    setxy 38 -40
    set shape "queenx"
    set size 8
    set color 33
    set heading 0
    hide-turtle
    ]
end

; ********************************************************************************************************************************************************************************

to Go
  tick
  DailyUpdateProc
  SeasonProc_HoPoMo
  ; Egg laying & development:
  WorkerEggsDevProc
  DroneEggsDevProc
  NewEggsProc
  if Swarming != "No swarming" [ SwarmingProc ]
  WorkerEggLayingProc
  DroneEggLayingProc
  WorkerLarvaeDevProc
  DroneLarvaeDevProc
  NewWorkerLarvaeProc
  NewDroneLarvaeProc
  WorkerPupaeDevProc
  DronePupaeDevProc
  NewWorkerPupaeProc
  NewDronePupaeProc
  WorkerIHbeesDevProc
  DronesDevProc
  BroodCareProc
  NewIHbeesProc
  NewDronesProc
  ; Varroa mite module:
  MiteProc
;  if (TotalMites > 0) [ MiteProc ]  ; ***NEW FOR BEEHAVE_BEEMAPP2015***

  BeekeepingProc
  DrawIHcohortsProc
  ; Foraging module:
  GenericPlotClearProc
  ;###########################################################PollenModule#############################################################################

  Update_PollenStoreList_BroodPheromone

  ;##########################################################end######################################################################################

  if ( TotalForagers
         + NewForagerSquadronsHealthy * SQUADRON_SIZE
         + NewForagerSquadronsInfectedAsPupae * SQUADRON_SIZE
         + NewForagerSquadronsInfectedAsAdults * SQUADRON_SIZE ) > 0
    [
      Start_IBM_ForagingProc
    ]


  ;########################################; ELRtModule #####################################################################################################

  set BPRatio_report ((BroodPheromone + 1) / ( summerForagers + TotalIHBees + 1 ))
  if BPRatio_report > 50
  [
  set BPRatio_report 50
  ]

  set winterbeeCount (count foragerSquadrons with [Winterbee = 1]) * SQUADRON_SIZE


  ; Brood Pheromone decay. It already decays while foraging. Here, the decay for the rest of the day is calculated
  DecayFunction (86400 - (DailyForagingPeriod))

  ; calculate Difference to comparative data for parameter optimization
  set AdultDif abs ((TotalForagers + TotalIHBees) - item day AdultComparison ) ^ 2
  ;##############################################end###########################################################################################



  ask turtles
  [
    set label-color black
    ifelse ploidy = 2
    [
      set label number
    ]
    [
      if ploidy = 1
      [
        set label number
      ]
    ]
  ]
  CountingProc
  PollenConsumptionProc
  HoneyConsumptionProc
  DoPlotsProc
end

; ********************************************************************************************************************************************************************************

to GoTreatmentProc
  ; similar to "Go", but used if colonies don't start on 1st January
  ; (e.g. to mimic empirical colony treatments), called only once by "Setup"
  ; but contains a "repeat"-loop


;;  repeat (INSERT START DAY)
;;  [
;;    Go
;;    set HoneyEnergyStore (MAX_HONEY_ENERGY_STORE / 5)
;;    set PollenStore_g 0.5 * IdealPollenStore_g
;;    ; guarantees survival of colonies before experiment
;;  ]
;;
;;  ask (turtle-set droneEggCohorts droneLarvaeCohorts) [ set number (INSERT NUMBER) ]
;;
;;  ask (turtle-set dronePupaeCohorts droneCohorts)
;;  [
;;    set number (INSERT NUMBER)
;;    set number_healthy (INSERT NUMBER)
;;    set number_infectedAsPupa (INSERT NUMBER)
;;  ]
;;  ask eggCohorts [ set number (INSERT NUMBER) ]
;;  ask larvaeCohorts [ set number (INSERT NUMBER) ]
;;  ask pupaeCohorts
;;  [
;;    set number (INSERT NUMBER)
;;    set number_Healthy (INSERT NUMBER)
;;    set number_infectedAsPupa (INSERT NUMBER)
;;  ]
;;
;;  ask IHbeeCohorts
;;  [
;;    set number_healthy (INSERT NUMBER)
;;    set number_infectedAsPupa (INSERT NUMBER)
;;    set number_infectedAsAdult (INSERT NUMBER)
;;  ]
;;
;;  set HoneyEnergyStore ENERGY_HONEY_per_g * (INSERT NUMBER OF CELLS WITH HONEY)
;;    ; 1 comb ca. 2*3268 cells (PJK), 1 cell full of honey = 500mg
;;    ; (Schmickl, Crailsheim, HoPoMo)
;;
;;  if Experiment = "INSERT NAME EXPERIMENT A"
;;  [
;;    (INSERT INITIAL CONDITIONS FOR EXERIMENT A)
;;  ]
;;
;;  if Experiment = "INSERT NAME EXPERIMENT B"
;;  [
;;    (INSERT INITIAL CONDITIONS FOR EXERIMENT B)
;;  ]
;;
;;
;;  ask miteOrganisers
;;  [
;;    set droneCellListCondensed n-values (MAX_INVADED_MITES_DRONECELL + 1) [ (INSERT NUMBER) ]
;;  ]    ; +1 as also the number of mite free cells is stored in this list
;;
;;  StartProc
end

; ********************************************************************************************************************************************************************************

to-report FlowerPatchesMaxFoodAvailableTodayREP [ patchID foodType ]
  ; foodType: "Nectar" or "Pollen"
  ; determines the max amount of nectar and pollen available at the patch today
  ; this reporter is ONLY called if ReadInfile = FALSE!!
  ; called by: CreateFlowerPatchesProc (i.e. 1x per run), DailyUpdateProc (i.e. 1x per day),
  ; and        FlowerPatchesUpdateProc (i.e. 1x per foraging round)

  ifelse SeasonalFoodFlow = true
  [
    ; SEASONAL variation of nectar ond pollen availability at RED and
    ; GREEN patch (if SeasonalFoodFlow = ON):
    let patchDayR day + SHIFT_R
    if day + SHIFT_R > 365 [ set patchDayR patchDayR - 365 ]
      ; to shift the seasonal food offer to earlier (+) or later (-) in the year

    let patchDayG day + SHIFT_G
    if day + SHIFT_G > 365 [ set patchDayG patchDayG - 365 ]

    if foodType != "Nectar" and foodType != "Pollen"
    [
      set BugAlarm true
      show "BUG ALARM in FlowerPatchesFoodAvailableTodayREP - Wrong 'foodType' of flower patch!"
    ]
    if patchID != 0 and patchID != 1
    [
      set BugAlarm true
      show "BUG ALARM in FlowerPatchesFoodAvailableTodayREP - Wrong 'who' of flower patch!"
    ]

    if ReadInfile = true
    [
      set BugAlarm true
      show "BUG ALARM in FlowerPatchesFoodAvailableTodayREP - called although ReadInfile = true!"
    ]

    if patchID = 0 ; "RED" patch
    [
      if foodType = "Nectar"
      [
        report (1 - Season_HoPoMoREP patchDayR []) * QUANTITY_R_l * 1000 * 1000
      ]
      if foodType = "Pollen"
      [
        report (1 - Season_HoPoMoREP patchDayR []) * POLLEN_R_kg * 1000
      ]
    ]

    if patchID = 1 ; "GREEN" patch
    [
      if foodType = "Nectar"
      [
        report (1 - Season_HoPoMoREP patchDayG []) * QUANTITY_G_l * 1000 * 1000
      ]
      if foodType = "Pollen"
      [
        report (1 - Season_HoPoMoREP patchDayG []) * POLLEN_G_kg * 1000
      ]
    ]
  ]
  [
    ; ELSE (i.e. if SeasonalFoodFlow = FALSE):
    if foodType = "Nectar"
    [
      if patchID = 0 [ report QUANTITY_R_l * 1000 * 1000 ] ; "red" patch
      if patchID = 1 [ report QUANTITY_G_l * 1000 * 1000 ] ; "green" patch
    ]

    if foodType = "Pollen"
    [
      if patchID = 0 [ report POLLEN_R_kg * 1000 ] ; "red" patch
      if patchID = 1 [ report POLLEN_G_kg * 1000 ] ; "green" patch
    ]
  ]
end



; ********************************************************************************************************************************************************************************

to DailyUpdateProc
  set Day round (ticks mod 365.00001)
  set DeathsAdultWorkers_t 0
  set SumLifeSpanAdultWorkers_t 0
  set DailyMiteFall 0
  set Pupae_W&D_KilledByVirusToday 0
  set NewReleasedMitesToday 0
    ; all (healthy and infected) mites released from cells (mothers+offspring)
    ; on current day (calculated after MiteFall!)

  ask foragerSquadrons [ set km_today 0 ]
  if N_INITIAL_MITES_INFECTED = 0 and AllowReinfestation = false
  [
    if ( count foragerSquadrons with [ infectionState = "infectedAsPupa"]
       + count foragerSquadrons with [ infectionState = "infectedAsAdult"] ) > 0
         or
       ( count IHbeeCohorts with [ number_infectedAsPupa > 0]
       + count IHbeeCohorts with [ number_infectedAsAdult > 0] ) > 0
    [
      set BugAlarm true
      show "BUG ALARM! Infected bees from out of the blue!"
    ]
  ]

  ask flowerpatches
  [
    ifelse ( quantityMyl < CROPVOLUME * SQUADRON_SIZE
             and
             amountPollen_g < POLLENLOAD * SQUADRON_SIZE )
      [ set shape "fadedFlower" ] ; IF
      [ set shape "Flower" ] ; ELSE = not empty
  ]

  set DailyForagingPeriod Foraging_PeriodREP
  set HoneyEnergyStoreYesterday HoneyEnergyStore
  set PollenStore_g_Yesterday PollenStore_g
  set LostBroodToday 0
  set Queenage Queenage + 1

  ask patch 0 -27 [ set plabel  5] ask patch 0 -32 [ set plabel 10]
  ask patch 0 -37 [ set plabel 15] ask patch 0 -42 [ set plabel 20]
  ask patch 0 -47 [ set plabel 25] ask patch 0 -52 [ set plabel 30]
  ask patch 0 -57 [ set plabel 35] ask patch 1 -58 [ set plabel "age  "]

  set SearchingFlightsToday 0
  set RecruitedFlightsToday 0
  set NectarFlightsToday 0
  set PollenFlightsToday 0
  set EmptyFlightsToday 0
  set DeathsForagingToday 0

  if ReadInfile = false
  [
    ask flowerPatches
    [ ; flower patches are set to the max. amount of nectar and pollen possible today:
      set quantityMyl FlowerPatchesMaxFoodAvailableTodayREP who "Nectar"
      set amountPollen_g FlowerPatchesMaxFoodAvailableTodayREP who "Pollen"
    ]
   ]

 ask flowerPatches
 [
   set nectarVisitsToday 0 set pollenVisitsToday 0
   if detectionProbability < -1
   [
     set BugAlarm true
     user-message "Wrong detection probability! Set 'ModelledInsteadCalcDetectProb' 'false' and re-start run!"
   ]
 ]

 if ReadInfile = true
 [
   set TodaysSinglePatchList []
     ; short list, contains data of current patch and only for today
   set TodaysAllPatchesList []
     ; shorter list, contains data of all patches, but only for today
   let counter (Day - 1)
   repeat N_FLOWERPATCHES
   [
     ; todays data for ALL N_FLOWERPATCHES flower patches are saved in a new,
     ; shorter list (= todaysAllPatchesList)

     set TodaysSinglePatchList (item counter AllDaysAllPatchesList)
       ; this new, shorter list (= todaysAllPatchesList) is comprised of very
       ; short lists (=todaysSinglePatchList) that contain only the data of the
       ; current patch and only for today

     set TodaysAllPatchesList fput TodaysSinglePatchList TodaysAllPatchesList
       ; fput: faster as lput (NetLogo version 4)! however: list is in reversed order!

     set counter counter + 365
     let id item 1 TodaysSinglePatchList ; patch number

     ask flowerpatch id
     [
       set amountPollen_g item 8 TodaysSinglePatchList ; [g]
       if amountPollen_g < 0 [ set amountPollen_g 0 ]
       set quantityMyl (item 10 TodaysSinglePatchList) * 1000 * 1000
         ; [microlitres]  new nectar value from infile (emptied flowers
         ; replenish nectar completely (or are replace by new flowers))

       if quantityMyl < 0 [ set quantityMyl 0 ]
       if id != who [  user-message "Error in id / who!" set BugAlarm true  ]

       if shape != "fadedflower"
       [
         ifelse amountPollen_g > 250
         [ set shape "flowerorange" ]
         [ set shape "flower" ]
       ]
         ; if a "reasonable" amount of pollen available, patch is shown
         ; as 'pollen patch'

       ifelse quantityMyl < CROPVOLUME * SQUADRON_SIZE [ set color grey ]
       [
         set color scale-color red eef 0 50
           ; colour: reddish, dependent on eef, if eff >= 50: white
       ]
     ]
   ] ; ask flowerpatch ID

   set todaysAllPatchesList reverse todaysAllPatchesList
     ; to correct the reversed order, caused by the fput command
 ] ; repeat

 ask patches [ set pcolor PATCHCOLOR ]

 ask hives
 [
   set shape "beehiveDeepHive"
     ; # of supers on drawn colony depends on honey store

   if HoneyEnergyStore / ENERGY_HONEY_per_g > 15000 [ set shape "beehive1super" ]
   if HoneyEnergyStore / ENERGY_HONEY_per_g > 30000 [ set shape "beehive2super" ]
   if HoneyEnergyStore / ENERGY_HONEY_per_g > 45000 [ set shape "beehive3super" ]
   if HoneyEnergyStore / ENERGY_HONEY_per_g > 60000 [ set shape "beehive4super" ]
   if HoneyEnergyStore / ENERGY_HONEY_per_g > 75000 [ set shape "beehive5super" ]
   if HoneyEnergyStore / ENERGY_HONEY_per_g > 90000 [ set shape "beehive6super" ]
   if HoneyEnergyStore / ENERGY_HONEY_per_g > 105000 [ set shape "beehive7super" ]
   if HoneyEnergyStore < 0
   [
     if ColonyDied = false
     [
       output-print word "Starvation! Colony died on Day " ticks
     ]
     set ColonyDied true
   ]
 ] ; ask hives

 if (ticks > 1) and (TotalWorkerAndDroneBrood + TotalIHbees + TotalForagers = 0)
 [
   if ColonyDied = false
   [
     output-print word "No bees left! Colony died on Day " ticks
   ]
   set ColonyDied true
 ]

 if (Day = 365)
 [
   output-type word "31.12.: COLONY SIZE: " (TotalIHbees + TotalForagers)
   output-type "   HONEY STORE [kg]: "
   output-print precision (HoneyEnergyStore / (1000 * ENERGY_HONEY_per_g)) 1
 ]

 if (Day = 365) and (TotalIHbees + TotalForagers < CRITICAL_COLONY_SIZE_WINTER)
 [
   if ColonyDied = false
   [
     output-print word "Winter mortality! Colony died on Day " ticks
   ]
   set ColonyDied true
 ]

 if ColonyDied = true
 [
   ask hives [ set color grey ]
     ; grey colony: died! (even if it "recovers" later, it remains grey)

   if stopDead = true
   [
     ask Signs with [shape = "skull"]
     [
       show-turtle
     ]
   ]
   ask patches [ set pcolor black ]
   if stopDead = true
   [
     ask eggCohorts [ set number 0]
     ask larvaeCohorts [ set number 0]
     ask pupaeCohorts
     [
       set number 0
       set number_Healthy 0
       set number_infectedAsPupa 0
     ]
     ask IHbeeCohorts
     [
       set number 0
       set number_Healthy 0
       set number_infectedAsPupa 0
       set number_infectedAsAdult 0
     ]
     ask foragerSquadrons [ die ]
     ask droneEggCohorts [ set number 0]
     ask droneLarvaeCohorts [ set number 0]
     ask dronePupaeCohorts
     [
       set number 0
       set number_Healthy 0
       set number_infectedAsPupa 0
     ]
     ask droneCohorts
     [
       set number 0
       set number_Healthy 0           ; ***NEW FOR BEEHAVE_BEEMAPP2015***
       set number_infectedAsPupa 0    ; ***NEW FOR BEEHAVE_BEEMAPP2015***
     ]
   ]
 ]

 if ReadBeeMappFile = true [ BeeMappCorrectionProc ]   ;  ***NEW FOR BEEHAVE_BEEMAPP2015***



  ;ELRtModule#############
  ; Forager Squadrons that survive until the next year are marked as Winter bees.
  if (Day = 365) [
    ask foragerSquadrons [set winterBee  1]

  ]
  ;#######################


end

; ********************************************************************************************************************************************************************************

to-report Season_HoPoMoREP [ today parameterList ]
  ; see Schmickl&Crailsheim2007: p.221 and p.230
  ; Values HoPoMo: x1 385; x2 30; x3 36; x4 155; x5 30

  let x1 385  ;385
  let x2 25 ; (earlier increase in egg laying rate than in HoPoMo)
  let x3 36    ; 36
  let x4 155   ;155  ; Day of max. egg laying
  let x5 30    ;30
  if empty? parameterList = false
  [
    set x1 item 0 parameterList
    set x2 item 1 parameterList
    set x3 item 2 parameterList
    set x4 item 3 parameterList
    set x5 item 4 parameterList
  ]
  let seas1 (1 - (1 / (1 + x1 * e ^ (-2 * today / x2))))
  let seas2 (1 / (1 + x3 * e ^ (-2 * (today - x4) / x5)))
  ifelse seas1 > seas2
    [ report seas1 ]
    [ report seas2 ]
end

; ********************************************************************************************************************************************************************************

to SeasonProc_HoPoMo
  ; see Schmickl&Crailsheim2007: p.221 and p.230

  set HoPoMo_seasont Season_HoPoMoREP day []
    ; calls to-report SeasonProc_HoPoMoREP to calculate the HoPoMo seasonal
    ; factor on basis of "day" and of a parameter list ("[]"), which is empty in
    ; this case but could contain 5 values: x1..x5
end

; ********************************************************************************************************************************************************************************

to NewEggsProc
 ;Original NewEggsProc Code
;  ; CALLED BY WorkerEggLayingProc   see: HoPoMo p.222 & p.230, ignoring ELRstoch
;  let ELRt_HoPoMo (MAX_EGG_LAYING * (1 - HoPoMo_seasont))
;  if EMERGING_AGE <= 0 [ set BugAlarm true show "EMERGING_AGE <= 0" ]
;  let ELRt_IH (TotalIHbees
;      + TotalForagers * FORAGER_NURSING_CONTRIBUTION)
;      * MAX_BROOD_NURSE_RATIO / EMERGING_AGE
;        ; EMERGING_AGE = 21: total developmental time of worker brood
;
;  let ELRt ELRt_HoPoMo
;    ; egg laying rate follows a seasonal pattern as described in
;    ; HoPoMo (Schmickl & Crailsheim 2007)
;
;  if EggLaying_IH = true and ELRt_IH < ELRt_HoPoMo
;    ; if EggLaying_IH SWITCH is on and not enough nurse bees are available,
;    ; the egg laying rate is reduced to ELRt_IH
;  [
;    set ELRt ELRt_IH
;  ]



; ELRtModule addition ######################################################
 ;The alternative Egg Laying Rate is calculated in this procedure.
 let ELRt ELRtEggLaying
; end ELRtModule ######################################################



;  if ELRt > MAX_EGG_LAYING
;  [
;    set ELRt MAX_EGG_LAYING
;  ]

  ;   LIMITED BROOD NEST:
  if TotalWorkerAndDroneBrood + ELRt > MAX_BROODCELLS
  [
    set ELRt MAX_BROODCELLS - TotalWorkerAndDroneBrood
  ]

  set NewWorkerEggs round ELRt  ; ROUND! in contrast to HoPoMo

  ; CALCULATION OF DRONE EGGS:
  set NewDroneEggs floor(NewWorkerEggs * DRONE_EGGS_PROPORTION)
  if Day >= SEASON_STOP
     - ( DRONE_HATCHING_AGE
     -   DRONE_PUPATION_AGE
     -   DRONE_EMERGING_AGE )
  [
    set NewDroneEggs 0
  ] ; no more drone brood at end of season (however: Season set to day 1 - 365)

  ; AGEING OF QUEEN - based on deGrandi-Hofmann, BEEPOP:
  if QueenAgeing = true ; GUI: "switch"
  [
    let potentialEggs (MAX_EGG_LAYING
        + (-0.0027 * Queenage ^ 2)
        + (0.395 * Queenage))
          ; Beepops potential egglaying Pt
    set NewWorkerEggs round (NewWorkerEggs * (potentialEggs / MAX_EGG_LAYING) )
  ]

  ; no egg-laying of young queen (also if QUEEN_AGEING = false!):
  ask signs with [ shape = "queenx" ] [ hide-turtle ]  ; ***NEW FOR BEEHAVE_BEEMAPP2015***
  if Queenage <= 10
  [
    set NewWorkerEggs 0
      ; Winston p. 203: 5-6d until sexually mature, 2-4d for orientation and mating flight, mating
      ; can be postponed for 4 weeks if weather is bad

    set NewDroneEggs 0
    ask signs with [ shape = "queenx" ] [ show-turtle ]  ; ***NEW FOR BEEHAVE_BEEMAPP2015***
  ]
  if NewWorkerEggs < 0 [ set NewWorkerEggs 0 ]
  if NewDroneEggs < 0 [ set NewDroneEggs 0 ]



  ; PollenModule addition ######################################################
  set EggsAddedToday NewWorkerEggs
  ;#############################################################################


end

; ********************************************************************************************************************************************************************************

to SwarmingProc

  ; # total brood triggers swarming
  ; PRE_SWARMING_PERIOD: 3d of preparation before swarming
  ; SwarmingDate: set to 0 in Param.Proc and in SwarmingProc (after swarming and on day 365)

  let fractionSwarm 0.6  ; 0.6 ; Winston p. 187
  let broodSwarmingTH 17000 ; Fefferman & Starks 2006 (model)
  let lastSwarmingDate 199; Winston 1980: prime: 14.05.(134) after swarm: 18.07.(199)
   ; McLellan, Rowland 1986: 162 (modelled),
  if TotalWorkerAndDroneBrood > broodSwarmingTH and SwarmingDate = 0 and day <= (lastSwarmingDate - PRE_SWARMING_PERIOD)
  [
    set SwarmingDate (day + PRE_SWARMING_PERIOD)
  ]

  if day = SwarmingDate
     and Swarming = "Swarm control"
  [
    output-type "Swarming (prevented) on day: " output-print day
  ]

  if day >= SwarmingDate - PRE_SWARMING_PERIOD
     and day <= SwarmingDate
  [
    if Swarming = "Swarming (parental colony)"
    [ ; Swarm PREPARATION of PARENTAL colony:
      set NewDroneEggs 0
      set NewWorkerEggs 0
      if  day = SwarmingDate
      [ ; SWARMING of PARENTAL colony:
        set Queenage -7
          ; a new queen is left in the hive, still in a capped cell, ca. 7d
          ; before she emerges (Winston p. 187)

        ; Winston p. 185: 36mg honey is taken by a swarming bee:
        set HoneyEnergyStore HoneyEnergyStore
           - (( TotalForagers + TotalIHbees) * 0.036 * ENERGY_HONEY_per_g)
           * fractionSwarm

        ; (1-fractionSwarm) of all healthy & infected in-hive bees stay in the hive:
        ask IHbeeCohorts
        [
          set number_Healthy round (number_Healthy * (1 - fractionSwarm))
          set number_infectedAsPupa round (number_infectedAsPupa * (1 - fractionSwarm))
          set number_infectedAsAdult round (number_infectedAsAdult * (1 - fractionSwarm))
          set number number_Healthy + number_infectedAsPupa + number_infectedAsAdult
        ]

        ; (1-fractionSwarm) of all healthy & infected drones stay in the hive:
        ask droneCohorts
        [
          set number_Healthy round (number_Healthy * (1 - fractionSwarm))
          set number_infectedAsPupa round (number_infectedAsPupa * (1 - fractionSwarm))
          set number number_Healthy + number_infectedAsPupa
        ]

        ; fractionSwarm foragers leave the colony and are considered to be dead in the model:
        ask foragerSquadrons
        [
          if random-float 1 < fractionSwarm [ die ]
        ] ; LEAVING foragers are treated as being dead

        ; the phoretic mite population in the hive is reduced:
        set PhoreticMites round (PhoreticMites * (1 - fractionSwarm))
        output-type "Swarming on day: " output-print day
        set SwarmingDate 0  ; allows production of after swarms
      ]
    ]


    if Swarming = "Swarming (prime swarm)"
    [ ; Swarm PREPARATION of PRIME SWARM:
      set NewDroneEggs 0
      set NewWorkerEggs 0
      if  day = SwarmingDate
      [ ; Swarming of PRIME SWARM:
        ask (turtle-set eggCohorts larvaeCohorts droneEggCohorts droneLarvaeCohorts)
        [ ; all brod is left behind and hence removed from the smulation:
          set number 0
        ]
        ask (turtle-set pupaeCohorts dronePupaeCohorts)
        [
          set number 0
          set number_infectedAsPupa 0
          set number_healthy 0
        ]
        set NewWorkerLarvae 0
        set NewDroneLarvae 0
        set NewWorkerPupae 0
        set NewDronePupae 0
        ask IHbeeCohorts
        [ ; fractionSwarm of all healthy & infected in-hive bees join the swarm
          set number_Healthy round (number_Healthy * fractionSwarm)
          set number_infectedAsPupa round (number_infectedAsPupa * fractionSwarm)
          set number_infectedAsAdult round (number_infectedAsAdult * fractionSwarm)
          set number number_Healthy + number_infectedAsPupa + number_infectedAsAdult
        ]

        ask droneCohorts
        [ ; fractionSwarm of all healthy & infected drones join the swarm
          set number_Healthy round (number_Healthy * fractionSwarm)
          set number_infectedAsPupa round (number_infectedAsPupa * fractionSwarm)
          set number number_Healthy + number_infectedAsPupa
        ]

        ask foragerSquadrons
        [ ; (1 - fractionSwarm) foragers do not join the swarm and hence die (in the model):
          if random-float 1 < (1 - fractionSwarm) [ die ]
        ]

        ask miteOrganisers [ die ]
          ; mites in brood cells are left behind in the old colony

        ; the phoretic mite population in the swarm is reduced:
        set PhoreticMites round (PhoreticMites * fractionSwarm)
        set PollenStore_g 0
        set HoneyEnergyStore
              ((TotalForagers + TotalIHbees)
                * 36 * ENERGY_HONEY_per_g) / 1000
          ; Winston p. 185: 36mg honey per bee during swarming
        output-type "Swarming on day: "
        output-print day
        set SwarmingDate 0  ; allows production of after swarms
      ] ; if  day = SwarmingDate ..
    ] ; if Swarming = "Swarming (prime swarm)"   ,,
  ] ; if SwarmingDate > 0 and ..

  if Swarming = "Swarm (daughter colony)"
     and day > SwarmingDate
     and day <= SwarmingDate + POST_SWARMING_PERIOD   ; DAUGHTER COLONY AFTER SWARMING (0d period)
  [ ; no eggs can be laid, no food stored, as long as they have no new home..
    set NewDroneEggs 0
    set NewWorkerEggs 0
    set PollenStore_g 0
    set Aff MAX_AFF
    if HoneyEnergyStore >
      (((TotalForagers + TotalIHbees) * CROPVOLUME) / 1000)
         * 1.36 * ENERGY_HONEY_per_g
    [
      set HoneyEnergyStore (((TotalForagers + TotalIHbees) *
        CROPVOLUME) / 1000) * 1.36 * ENERGY_HONEY_per_g
    ]
  ]
  ; resetting SwarmingDate to zero at the end of a year:
  if day = 365 [ set SwarmingDate 0 ]
end

; ********************************************************************************************************************************************************************************

to WorkerEggLayingProc  ; creation of worker eggs
  create-eggCohorts 1 ;
  [
    set shape "circle"
    set number NewWorkerEggs
    set age 0
    setxy 3 0
    set color blue
    set ploidy 2
  ]
end

; ********************************************************************************************************************************************************************************

to DroneEggLayingProc  ; creation of drone eggs
  create-DroneEggCohorts 1 ;
  [
    set shape "circle"
    set number NewDroneEggs
    if Day < DRONE_EGGLAYING_START or Day > DRONE_EGGLAYING_STOP [ set number 0 ]
    set age 0
    setxy -5 0
    set color blue
    set ploidy 1
  ]
end

; ********************************************************************************************************************************************************************************

to WorkerEggsDevProc ; ageing, deletion of oldest cohort
  ask eggCohorts
  [
    set age age + 1
    fd 1   ; turtle moves one step (display)
    set number (number - random-poisson (number * MORTALITY_EGGS))
    if number < 0 [ set number 0 ]
      ; random mortality, based on Poisson distribution

    if age = HATCHING_AGE [ set NewWorkerLarvae number ]
    if age >= HATCHING_AGE [ die ]
  ]
end

; ********************************************************************************************************************************************************************************

to DroneEggsDevProc  ; ageing, deletion of oldest cohort
  ask droneEggCohorts
  [
    set age age + 1
    set number (number - random-poisson (number * MORTALITY_DRONE_EGGS))
    if number < 0 [ set number 0 ]  ; random mortality, based on Poisson distribution
    if age = DRONE_HATCHING_AGE [ set NewDroneLarvae number ]
    if age >= DRONE_HATCHING_AGE [ die ]
    fd 1    ; turtle moves one step (display)
  ]
end

; ********************************************************************************************************************************************************************************

to NewWorkerLarvaeProc ; creation of worker larvae
   create-larvaeCohorts 1
   [
     set number NewWorkerLarvae   ; the cohort size
     set age HATCHING_AGE
     set shape "circle"   ; shape
     set color yellow
     setxy 3 (- age)
     set ploidy 2     ; worker larvae are diploid
   ]
end

; ********************************************************************************************************************************************************************************

to NewDroneLarvaeProc  ; creation of drone larvae
   create-droneLarvaeCohorts 1
   [
     set shape "circle"
     set number NewDroneLarvae   ; the cohort size
     set age DRONE_HATCHING_AGE
     set color yellow
     setxy -5 (- age)
     set ploidy 1    ; drone larvae are haploid
   ]
end

; ********************************************************************************************************************************************************************************

to WorkerLarvaeDevProc ; ageing of cohort
  ask larvaeCohorts
  [
    set age age + 1
    fd 1    ; turtle moves one step (display)
    set numberDied 0
    set numberDied random-poisson (number * MORTALITY_LARVAE)
    if numberDied > number [ set numberDied number ]
       ; random mortality, based on Poisson distribution

    set number number - numberDied
    if (numberDied > 0)
       and ( age > INVADING_WORKER_CELLS_AGE )
       and (TotalMites > 0)
    [
      MitesReleaseProc invadedByMiteOrganiserID ploidy numberDied "dyingBrood"
    ]

    if age = PUPATION_AGE
    [
      set NewWorkerPupae number
      set SaveWhoWorkerLarvaeToPupae who   ; "Who" is stored as a global variable
      set SaveInvadedMOWorkerLarvaeToPupae invadedByMiteOrganiserID
    ]
    if age >= PUPATION_AGE [ die ]
  ]
end

; ********************************************************************************************************************************************************************************

to DroneLarvaeDevProc ; ageing of cohort
  ask droneLarvaeCohorts
  [
    set age age + 1
    set numberDied 0
    set numberDied random-poisson (number * MORTALITY_DRONE_LARVAE)
    if numberDied > number [ set numberDied number ]
      ; random mortality, based on Poisson distribution
    set number number - numberDied

    if (numberDied > 0)
       and (age > INVADING_DRONE_CELLS_AGE)
       and (TotalMites > 0)
    [
      MitesReleaseProc invadedByMiteOrganiserID ploidy numberDied "dyingBrood"
    ] ; variables correspond to [ miteOrganiserID ploidyMO diedBrood ]

    fd 1
    if age = DRONE_PUPATION_AGE
    [
      set NewDronePupae number
      set SaveWhoDroneLarvaeToPupae who   ; "Who" is stored as a global variable
      set saveInvadedMODRONELarvaeToPupae invadedByMiteOrganiserID
    ]
    if age >= DRONE_PUPATION_AGE [ die ]
  ]
end

; ********************************************************************************************************************************************************************************

to NewWorkerPupaeProc
  create-pupaeCohorts 1
  [
    set shape "circle"   ; shape of the turtle as shown in the GUI
    set number NewWorkerPupae  ; cohort size
    set number_healthy number ; all newly created pupae are healthy
    set age PUPATION_AGE ; age of the cohort
    setxy 3 (- age)   ; xy position of the turtle in the Netlogo world
    set color brown    ; color of the turtle
    set ploidy 2    ; worker pupae are diploid
    set invadedByMiteOrganiserID SaveInvadedMOWorkerLarvaeToPupae
      ; saves "invadedByMiteOrganiserID" of the old larvaeCohort that has now developed
      ; into a pupaeCohort
    let saveWho who
      ; saves "who" for the following command (transition of larvae to pupae results in the
      ; death of larvae turtles, hence: ensuing pupae turtles have a different "who")
    ask miteOrganisers with [ invadedWorkerCohortID = SaveWhoWorkerLarvaeToPupae ]
    [
      set invadedWorkerCohortID saveWho
    ] ; miteOrganiser updates its value for the invadedWorkerCohortID
  ]
end

; ********************************************************************************************************************************************************************************
to NewDronePupaeProc
   create-dronePupaeCohorts 1
   [
     set shape "circle"
     set number NewDronePupae
     set number_healthy number ; all newly created pupae are healthy
     set age DRONE_PUPATION_AGE
     setxy -5 (- age)
     set color brown
     set ploidy 1
     set invadedByMiteOrganiserID SaveInvadedMODroneLarvaeToPupae
       ; saves "invadedByMiteOrganiserID" of the old larvaeCohort that has
       ; now developed into a pupaeCohort

     let saveWho who
       ; saves "who" for the next line (transition of larvae to pupae results
       ; in the death of larvae turtles, hence: ensuing pupae turtles
       ; have a different "who")

     ask miteOrganisers with [ invadedDroneCohortID = SaveWhoDroneLarvaeToPupae ]
     [
       set invadedDroneCohortID saveWho
     ] ; miteOrganiser updates its value for the invadedDroneCohortID
   ]
end

; ********************************************************************************************************************************************************************************

to WorkerPupaeDevProc
  ; ageing of cohort, oldest cohort may emerge and release mites
  ask pupaeCohorts
  [
    set age age + 1
    fd 1
    set numberDied 0
    set numberDied random-poisson (number * MORTALITY_PUPAE)
    if numberDied > number [ set numberDied number ]
      ; random mortality, based on Poisson distribution
    set number number - numberDied
    set number_healthy number_healthy - numberDied
      ; all pupae are healthy as infection takes place (in the model)
      ; at emergence - and if not..

    if number_infectedAsPupa > 0
    [
      set BugAlarm true
      show "BUG ALARM!!! number_infectedAsPupa > 0 in WorkerPupaeDevProcs!"
    ] ;  .. raise a bug alarm!

    if (numberDied > 0) and (TotalMites > 0)
    [
      MitesReleaseProc invadedByMiteOrganiserID ploidy numberDied "dyingBrood"
    ] ; variables correspond to [ miteOrganiserID ploidyMO diedBrood ]

    if age = EMERGING_AGE
    [
      if (number > 0) and (TotalMites > 0)
      [
        MitesReleaseProc invadedByMiteOrganiserID 2 0 "emergingBrood"
      ]  ; invadedByMiteOrganiserID ploidy = 2 numberDied = 0

      set NewIHbees number
      set NewIHbees_healthy number_healthy
    ]

    if age >= EMERGING_AGE [ die ]
  ]
end

; ********************************************************************************************************************************************************************************

to DronePupaeDevProc
  ; ageing of cohort, oldest cohort may emerge and release mites
  ask dronePupaeCohorts
  [
    set age age + 1
    fd 1  ; turtle moves one step (display)
    set numberDied 0
    set numberDied random-poisson (number * MORTALITY_DRONE_PUPAE)
    if numberDied > number [ set numberDied number ]
    set number number - numberDied
    set number_healthy number_healthy - numberDied
      ; all pupae are healthy as infection takes place (in the model) at
      ; emergence - and if not..

    if number_infectedAsPupa > 0
    [
      set BugAlarm true
      show "BUG ALARM!!! number_infectedAsPupa > 0 in DronePupaeDevProcs!"
    ] ;  .. raise a bug alarm!
    if (numberDied > 0) and (TotalMites > 0)
    [
      MitesReleaseProc invadedByMiteOrganiserID ploidy numberDied "dyingBrood"
    ] ; variables correspond to [ miteOrganiserID ploidyMO diedBrood ]
    if age = DRONE_EMERGING_AGE
    [
      if (number > 0) and (TotalMites > 0)
      [
        MitesReleaseProc invadedByMiteOrganiserID 1 0 "emergingBrood"
      ]   ; invadedByMiteOrganiserID ploidy = 1 numberDied = 0
      set NewDrones number
      set NewDrones_healthy number_healthy ]
    if age >= DRONE_EMERGING_AGE [ die ]
  ]
end

; ********************************************************************************************************************************************************************************

to NewIHbeesProc
   create-IHbeeCohorts 1
   [
     set shape "circle"
     set number NewIHbees ; all new IH bees
     set number_healthy NewIHbees_healthy ; new, healthy IH bees
     set number_infectedAsPupa number - number_healthy
       ; the others were infected during pupal phase

     set number_infectedAsAdult 0
       ; adult workers hadn't had any chance to become infected so far..

     set age 0
     set color orange
     setxy 3 (- age - EMERGING_AGE - 1)
     set ploidy 2
   ]
end

; ********************************************************************************************************************************************************************************

to NewDronesProc
  create-DroneCohorts 1
  [
    set shape "circle"
    set number NewDrones ; all new drones
    set number_healthy NewDrones_healthy ; new, healthy drones
    set number_infectedAsPupa number - number_healthy ; the others are infected
    set age 0
    set color grey
    setxy -5 (- age - DRONE_EMERGING_AGE - 1)
    set ploidy 1
  ]
end

; ********************************************************************************************************************************************************************************

to AffProc
  ; calculates the actual age of first foraging on basis of nectar stores and
  ; brood/nurse ratio - called by WorkerIHbeesDevProc

  let affYesterDay Aff  ; the current (= yesterday's) Aff is saved
  let pollenTH  0.5
  let proteinTH 1
  let honeyTH 35 * (DailyHoneyConsumption / 1000) * ENERGY_HONEY_per_g
    ; min. desired honey store lasts for 35 days (arbitrarily chosen)
  let broodTH 0.1
  let foragerToWorkerTH 0.3  ; like in Beshers et al. 2001

  ; POLLEN criterion:
  if PollenStore_g / IdealPollenStore_g < pollenTH [ set Aff Aff - 1 ]

  ; PROTEIN criterion:
  if proteinFactorNurses < proteinTH [ set Aff Aff - 1 ]

  ; HONEY criterion:
  if HoneyEnergyStore < honeyTH [ set Aff Aff - 2 ]

  ; FORAGER TO WORKER criterion:
  if (TotalIHbees > 0)
     and (TotalForagers / TotalIHbees < foragerToWorkerTH)
  [
    set Aff Aff - 1
  ]


  ; BROOD TO NURSES criterion:
  if ((TotalIHbees
      + TotalForagers * FORAGER_NURSING_CONTRIBUTION) * MAX_BROOD_NURSE_RATIO)
      > 0
    and
      TotalWorkerAndDroneBrood / ((TotalIHbees
      + TotalForagers * FORAGER_NURSING_CONTRIBUTION) * MAX_BROOD_NURSE_RATIO)
      > broodTH
  [
    set Aff Aff + 2
  ]

  ; to reduce strong deviations from the base Aff:
  if affYesterDay < AFF_BASE - 7 [ set Aff Aff + 1 ]
  if affYesterDay > AFF_BASE + 7 [ set Aff Aff - 1 ]

  ; Aff can be changed only by +-1 per day:
  if Aff < affYesterDay [ set Aff affYesterDay - 1 ]
  if Aff > affYesterDay [ set Aff affYesterDay + 1 ]

  ; MIN and MAX values for Aff:
  if Aff < MIN_AFF [ set Aff MIN_AFF ]
  if Aff > MAX_AFF [ set Aff MAX_AFF ]

end

; ********************************************************************************************************************************************************************************

to WorkerIHbeesDevProc
  ; ageing of IH bees, mortality for healthy and infected IH-workers,
  ; calls CalculateAffProc, calculation of # new foragerSquadrons

  let overagedIHbees 0
    ; bees with age > Aff but have to remain in the last IH cohort, as number < SQUADRON_SIZE

  AffProc
    ; in the AffProc today's age of first foraging (Aff) is calculated
  foreach reverse sort IHbeeCohorts
    ; cohorts have to be asked in order of their age (i.e. in reverse order of
    ; their "who") otherwise over-aged bees vanish with a 50% chance
  [
    x -> ask x
    [
      let deathsCounter 0
        ; # of bees dying in this cohort at current time step

      set age age + 1
      fd 1 ; turtle moves one step (display)

      ; MORTALITY
      ; healthy bees:
      set deathsCounter random-poisson (number_healthy * MORTALITY_INHIVE)
      if deathsCounter > number_healthy [ set deathsCounter number_healthy ]
        ; random mortality, based on Poisson distribution

      set number_healthy number_healthy - deathsCounter
        ; deathCounter: dead HEALTHY bees

      ; infectedAsPupa:
      set deathsCounter
        random-poisson (number_infectedAsPupa * MORTALITY_INHIVE_INFECTED_AS_PUPA)
      if deathsCounter > number_infectedAsPupa
      [
        set deathsCounter number_infectedAsPupa
      ]  ; random mortality, based on Poisson distribution

      set number_infectedAsPupa number_infectedAsPupa - deathsCounter
        ; deathCounter now: dead INFECTED bees

      ; infectedAsAdults:
      set deathsCounter
        random-poisson (number_infectedAsAdult * MORTALITY_INHIVE_INFECTED_AS_ADULT)
      if deathsCounter > number_infectedAsAdult
      [
        set deathsCounter number_infectedAsAdult
      ]  ; random mortality, based on Poisson distribution
      set number_infectedAsAdult number_infectedAsAdult - deathsCounter
        ; deathCounter now: dead INFECTED bees

      set deathsCounter number - number_healthy
        - number_infectedAsPupa - number_infectedAsAdult
        ; deathCounter is now set to the TOTAL number of dead bees

      set number number - deathsCounter
        ; # of bees in this cohort is reduced by # of dead bees

      set DeathsAdultWorkers_t DeathsAdultWorkers_t
        + deathsCounter
        ; sums up # of adult workers dying in current timestep to calculate
        ; mean lifespan of adult bees

      set SumLifeSpanAdultWorkers_t SumLifeSpanAdultWorkers_t
        + (deathsCounter * age)
        ; sums up lifespan of adult workers dying in current timestep

      set InhivebeesDiedToday DeathsAdultWorkers_t

      ; ONSET OF FORAGING
      if age >= Aff
      [
        ; new healthy foragerSquadrons:
        set NewForagerSquadronsHealthy
          floor (number_healthy / SQUADRON_SIZE) + NewForagerSquadronsHealthy
        set overagedIHbees number_healthy mod SQUADRON_SIZE
        ask IHbeeCohorts with [ age = Aff - 1 ]
        [
          set number number + overagedIHbees
          set number_healthy number_healthy + overagedIHbees
        ]
          ; overaged bees would vanish here without "reverse sort", as there
          ; might be no IHbeeCohort with age = Aff - 1! (50% chance)

        ; new foragerSquadrons, which were infected as pupae:
        set NewForagerSquadronsInfectedAsPupae
          floor (number_infectedAsPupa / SQUADRON_SIZE)
               + NewForagerSquadronsInfectedAsPupae

        set overagedIHbees number_infectedAsPupa mod SQUADRON_SIZE
        ask IHbeeCohorts with [ age = Aff - 1 ]
        [
          set number number + overagedIHbees
          set number_infectedAsPupa number_infectedAsPupa + overagedIHbees
        ]
          ; overaged bees would vanish here without "reverse sort", as there might
          ; be no IHbeeCohort with age = Aff - 1! (50% chance)

        ; new infectedAsAdults foragerSquadrons:
        set NewForagerSquadronsInfectedAsAdults
          floor (number_infectedAsAdult / SQUADRON_SIZE)
               + NewForagerSquadronsInfectedAsAdults

        set overagedIHbees number_infectedAsAdult mod SQUADRON_SIZE
        ask IHbeeCohorts with [ age = Aff - 1 ]
        [
          set number number + overagedIHbees
          set number_infectedAsAdult number_infectedAsAdult + overagedIHbees
        ]
          ; overaged bees would vanish here without "reverse sort", as there might
          ; be no IHbeeCohort with age = Aff - 1! (50% chance)
                    ]
      if age >= Aff
      [
        set plabel ""
        die
      ]
    ] ; ask ?
  ] ; foreach reverse sort IHbeeCohorts
end

; ********************************************************************************************************************************************************************************

to DronesDevProc
  ; ageing of cohort, mortality for healthy and infected drones
  ask DroneCohorts [
    fd 1
    set age age + 1

    ; MORTALITY:
    set number_healthy (number_healthy -
        random-poisson (number_healthy * MORTALITY_DRONES))
    if number_healthy < 0 [ set number_healthy 0 ]

    set number_infectedAsPupa
      ( number_infectedAsPupa
        - random-poisson (number_infectedAsPupa * MORTALITY_DRONES_INFECTED_AS_PUPAE) )

    if number_infectedAsPupa < 0 [ set number_infectedAsPupa 0 ]
    set number number_healthy + number_infectedAsPupa
      ; total number of drones = healthy + infected drones
    if age >= DRONE_LIFESPAN [ die ]
  ]
end

; ********************************************************************************************************************************************************************************

to BroodCareProc
  ; checks if enough nurses are present and, if not, kills excess of drone and
  ; worker brood; order of dying: 1. droneEggCohorts 2. droneLarvaeCohorts
  ; 3. eggCohorts 4. larvaeCohorts 5. dronePupaeCohorts 6. pupaeCohorts

  let lackNurses false
    ; all kind of brood might die due to lack of nurse bees..
  let lackProtein false
    ; .. or (drone&worker) LARVAE may die due to lack of protein in brood food

  if ticks > 1 [ CountingProc ]
    ; current # of IH-bees and brood, cannot be called in time step 1, as
    ; counting foragerSquadrons results wrongly in 0

  set ExcessBrood
    ceiling ( TotalWorkerAndDroneBrood
    - (TotalIHbees + TotalForagers * FORAGER_NURSING_CONTRIBUTION)
    *  MAX_BROOD_NURSE_RATIO )
      ; rounded up! totalWorkerDroneBrood: all brood stages of drones & workers;
      ; Nursing: also foragers are assumed to contribute (partly) to brood care

  ifelse ExcessBrood > 0
  [
    set lackNurses true
    ask signs with [shape = "beelarva_x2"]
    [
      show-turtle
      set label ExcessBrood
    ]
  ]
  [
    ask signs with [shape = "beelarva_x2"]
    [
      hide-turtle
    ]
  ]

  let starvedBrood ceiling ((TotalDroneLarvae + TotalLarvae) * (1 - ProteinFactorNurses))
    ; larvae require protein and may die if jelly contains not enough proteins

  if starvedBrood > 0 [ set lackProtein true ]
  if starvedBrood > ExcessBrood [ set ExcessBrood starvedBrood ]
    ; excess of brood is either determined by lack of nurses or lack of protein

  set LostBroodToday LostBroodToday + ExcessBrood
  set LostBroodTotal LostBroodTotal + ExcessBrood
  let stillToKill ExcessBrood
    ; keeps track of the amount of brood that is still to be killed

  if ExcessBrood > 0
  [ ; whenever a brood cell dies, the corresponding miteOrganiser is updated in the
    ; releaseMitesProc! (only for pupae and oldest larvae as eggs and young larvae are
    ; not invaded by mites

    if lackNurses = true
    [
      foreach reverse sort DroneEggCohorts
      [
        x -> ask x    ; young drone eggs die first if not enough nurses are available
        [ while [ (stillToKill * number) > 0 ]
          [
            set number number - 1
            set stillToKill stillToKill - 1
          ]
        ]
      ]
    ]

    if lackNurses = true or lackProtein = true
    [
      foreach reverse sort DroneLarvaeCohorts
      [
        x -> ask x
        [
          while [ (stillToKill * number) > 0 ]
          [ set number number - 1 set stillToKill stillToKill - 1
            if age > INVADING_DRONE_CELLS_AGE and (TotalMites > 0)
            [
              MitesReleaseProc invadedByMiteOrganiserID ploidy 1 "dyingBrood"
            ]
              ; Died brood: always 1! calls releaseMitesProc and transfers variables
              ; (correspond to [ miteOrganiserID ploidyMO diedBrood ])
          ]
        ]
      ]
    ] ; if lackNurses = true or lackProtein = true

    if lackNurses = true
    [
      foreach reverse sort EggCohorts
      [
        x -> ask x
        [
          while [ (stillToKill * number) > 0 ]
          [
            set number number - 1
            set stillToKill stillToKill - 1
          ]
        ]
      ]
    ] ;if lackNurses = true
    ; (stillToKill * number): BOTH, number AND stillToKill have to be > 0 to continue "while"

    if lackNurses = true or lackProtein = true
    [
      foreach reverse sort larvaeCohorts
      [
        x -> ask x
        [
          while [ (stillToKill * number) > 0 ]
          [
            set number number - 1 set stillToKill stillToKill - 1
            if age > INVADING_WORKER_CELLS_AGE and (TotalMites > 0)
            [
              MitesReleaseProc invadedByMiteOrganiserID ploidy 1 "dyingBrood"
            ]
              ; calls releaseMitesProc and transfers variables (correspond
              ; to [ miteOrganiserID ploidyMO diedBrood ])
          ]
        ]
      ]
    ] ; if lackNurses = true or lackProtein = true

    if lackNurses = true
    [
      foreach reverse sort DronePupaeCohorts
      [
        x -> ask x
        [
          while [ (stillToKill * number) > 0 ]
          [
            ifelse random number <= number_healthy ; choose a random pupal cell
              [ set number_healthy number_healthy - 1 set number number - 1  ]
                ; IF pupa is healthy, then number_healthy and (total) number are decreased by one
              [ set number_infectedAsPupa number_infectedAsPupa - 1 set number number - 1 ]
                ; ELSE number_infectedAsPupa and (total) number are decreased by one
            set stillToKill stillToKill - 1
            if (TotalMites > 0)
            [
              MitesReleaseProc invadedByMiteOrganiserID ploidy 1 "dyingBrood"
            ]
          ]
        ]
      ]
    ] ;    if lackNurses = true

    if lackNurses = true
    [
      foreach reverse sort pupaeCohorts
      [
        x -> ask x
        [
          while [ (stillToKill * number) > 0 ]
          [
            ifelse random number <= number_healthy  ; choose a random pupal cell
              [ set number_healthy number_healthy - 1 set number number - 1  ]
                ; IF pupa is healthy, then number_healthy and (total) number are decreased by one
              [ set number_infectedAsPupa number_infectedAsPupa - 1 set number number - 1 ]
                ; ELSE number_infectedAsPupa and (total) number are decreased by one
            set stillToKill stillToKill - 1
            if (TotalMites > 0)
            [
              MitesReleaseProc invadedByMiteOrganiserID ploidy 1 "dyingBrood"
            ]
          ]
        ]
      ]
    ] ; if lackNurses = true

    if stillToKill > 0
    [
      set BugAlarm true
      output-show (word ticks " BUG ALARM! stillToKill > 0")
    ]
  ] ; end IF ExcessBrood > 0

end

; ********************************************************************************************************************************************************************************

to DrawIHcohortsProc
  ; # bees in IH cohorts (workers & drones, brood & adults) are drawn as coloured bars

  ask (turtle-set eggCohorts larvaeCohorts pupaeCohorts)
  [                                                                  ;   WORKERS
    set heading 90
    fd 1
    repeat ceiling( 10 * number / STEPWIDTH)
    [
      fd 0.1
      set pcolor color
    ]
    set heading 180 setxy 3 (- age)
  ]

  ask IHbeeCohorts
  [
    set heading 90
    fd 1
    repeat ceiling( 10 * number_healthy / STEPWIDTH)
    [
      fd 0.1
      set pcolor color
    ]
    repeat ceiling( 10 * number_infectedAsAdult / STEPWIDTH)
    [
      fd 0.1
      set pcolor (color - 1)
    ]
    repeat ceiling( 10 * number_infectedAsPupa / STEPWIDTH)
    [
      fd 0.1
      set pcolor (color - 2)
      ]
    set heading 180
    setxy 3 (- age - EMERGING_AGE - 1)
  ] ; ask IHbeeCohorts

  ask (turtle-set droneEggCohorts droneLarvaeCohorts dronePupaeCohorts)  ;   DRONES
  [
    set heading 270
    repeat ceiling( number / STEPWIDTHdrones)
    [
      fd 1
      set pcolor color
    ]
    set heading 180
    setxy -5 (- age)
  ]

  ask DroneCohorts
  [
    set heading 270 repeat ceiling( number_healthy / STEPWIDTHdrones)
    [
      fd 1
      set pcolor color
      ]
    repeat ceiling( number_infectedAsPupa / STEPWIDTHdrones)
    [
      fd 1
      set pcolor (color - 2)
    ]
    set heading 180
    setxy -5 (- age - DRONE_EMERGING_AGE - 1)
  ]
end

; ******************************************************************************************************************************************************************************



;  =============================================================================================================================================================================
;  ===============   IBM FORAGING SUBMODEL ========================   IBM FORAGING SUBMODEL ====================================   IBM FORAGING SUBMODEL =======================
;  =============================================================================================================================================================================

; ******************************************************************************************************************************************************************************

; ********************************************************************************************************************************************************************************

to Start_IBM_ForagingProc
  ; controls the number of foraging trips per day, calls ForagingRoundProc

  let continueForaging true
    ; foraging is continued until it is stopped
  let meanTripDuration 0
  let summedTripDuration 0
  let HANGING_AROUND SEARCH_LENGTH_M / FLIGHT_VELOCITY
    ; [s] duration of a foraging round if all foragers are resting
    ; (= time for unsuccessful search flight)
  let ageLaziness 100
  ; [d] min. age to allow foragers being lazy
  ForagersDevelopmentProc
    ; called before creation of new foragers to avoid ageing by 2d at creation

  NewForagersProc
  ask foragerSquadrons
  [ ; Laziness: lazy bees won't forage and can't be recruited on that day.
    ; applies only to older bees and if the honey store is not too small
    if age >= ageLaziness and
      random-float 1 < ProbLazinessWinterbees and ; ProbLazinessWinterbees: default: 0!
      random-float 1 < (HoneyEnergyStore / DecentHoneyEnergyStore)
     [
       set activity "lazy"
     ]
  ]

  set ForagingSpontaneousProb Foraging_ProbabilityREP
    ; the probability for a resting forager to start spontaneously foraging in a single foraging
    ; round today is calculated in "to-report Foraging_ProbabilityREP "

  set ForagingRounds 0
    ; counter of the foraging rounds
  ask foragerSquadrons
  [
    set activityList [ ]
    ; activityList records all activities of a forager during the day
  ]

  ; always "season" as SEASON_START = 1 & SEASON_STOP = 365
  if ( Day >= SEASON_START )
      and ( Day <= SEASON_STOP )
       ; foraging takes only place during season and while honey store not
       ; (almost) full (0.95: to avoid foraging, when honey cannot be stored)..
      and
       ( HoneyEnergyStore < 0.95 * MAX_HONEY_ENERGY_STORE
         or PollenStore_g < IdealPollenStore_g )
       ;  ..or when pollen is needed
      and DailyForagingPeriod > 0

  [
    while [ continueForaging = true ]
      ; .. and only for a certain time (=DailyForagingPeriod), which is checked
      ; via "continueForaging"
    [
      ask foragerSquadrons
      [
        set activityList lput ForagingRounds activityList
        ; the ForagingRounds is added to a foragers activityList
      ]
      ForagingRoundProc
        ; call ForagingRoundProc, which calls all procedures involved in foraging



      ;###########################################################PollenModule##############################################################################
      ;Updates PollenStore_g variable
      UpdatePollenStore
      ;###########################################################################################################################################################



      set ForagingRounds ForagingRounds + 1
        ; # foraging rounds is increased

      ifelse ColonyTripForagersSum > 0
        [ set meanTripDuration ColonyTripDurationSum / ColonyTripForagersSum ]
          ; IF > 0 (i.e. if at least 1 foraging trip has taken place):  calculate the average time
          ; a forager needed for its trip in this round
        [ set meanTripDuration HANGING_AROUND ]
          ; ELSE: if no one goes foraging: foraging round lasts "HANGING_AROUND" seconds




      ;ELRtModule ###########################################################################################################################################################
;      ;After each Foraging Round, the amount of Broodpheromone is reduced based on the mean trip duration of this foraging round
      DecayFunction (meanTripDuration)
      ;###########################################################################################################################################################



      set summedTripDuration ( summedTripDuration + meanTripDuration )
        ; mean trip durations are summed up

      ; if the duration of all foraging rounds summed up is larger than DailyForagingPeriod
      ; then foraging ends for today
      if summedTripDuration >= DailyForagingPeriod
      [
        set continueForaging false
      ]  ; until the total time >= DailyForagingPeriod

      if ((Details = true) and (continueForaging = true))
      [
        if WriteFile = true [ WriteToFileProc ]
      ]
        ; if Details & WriteFile true: results are recorded in Output file after each foraging round (trip)
    ]
  ]

  ForagersLifespanProc
    ; mortality of foragers due to max. lifespan, max. km or in-hive mortality risk

  ask foragerSquadrons
  [
    set activity "resting"
    set activityList lput "End" activityList
  ]      ; after foraging is completed for today, all foragers do rest
end;

; ********************************************************************************************************************************************************************************

;  ************** PARAMETERIZATION FLOWER PATCH ****************************************************** PARAMETERIZATION FLOWER PATCH *******************************************

; ********************************************************************************************************************************************************************************

to CreateFlowerPatchesProc
  ; creates 2  flower patches ("red" & "green"),

  set N_FLOWERPATCHES  2 ; 2
  if readInfile = true
  [
    set bugAlarm true
    show "BugAlarm in CreateFlowerPatchesProc! Check read-in!"
  ]
  create-flowerPatches N_FLOWERPATCHES
  [
    set patchType "GreenField"
    set distanceToColony DISTANCE_G ;1500  ; [m]
    set xcorMap distanceToColony
    set size_sqm 100000
    set quantityMyl  QUANTITY_G_l * 1000 * 1000; [microlitres]
    set amountPollen_g POLLEN_G_kg * 1000 ;10000 ; 10kg = 10000g
      ; total amount of pollen available at this patch

    if SeasonalFoodFlow = true
    [
      set quantityMyl FlowerPatchesMaxFoodAvailableTodayREP who "Nectar"
      set amountPollen_g FlowerPatchesMaxFoodAvailableTodayREP who "Pollen"
    ]

    set nectarConcFlowerPatch CONC_G
      ;  mean nectar concentration returned to colony ca. 1.4 (assessed from Seeley (1986), Fig 2)

    set detectionProbability DETECT_PROB_G
    set shape "fadedFlower"
    set color green
    set size 4
    ifelse distanceToColony <= 5500
      [ setxy (15.1 + (distanceToColony / 250) )  3 ]  ; IF (distance)
      [ setxy 39.5 3 ]                                 ; ELSE (distance)
  ] ; create-flowerPatches N_FLOWERPATCHES

  ask flowerPatch 0
  [
    set patchType "RedField"
    set distanceToColony DISTANCE_R  ; [m]   ; RED PATCH
    set xcorMap -1 * distanceToColony
    set quantityMyl QUANTITY_R_l * 1000 * 1000 ; [microlitres]
    set amountPollen_g POLLEN_R_kg * 1000 ; [g]

    if SeasonalFoodFlow = true
    [
      set quantityMyl FlowerPatchesMaxFoodAvailableTodayREP who "Nectar"
      set amountPollen_g FlowerPatchesMaxFoodAvailableTodayREP who "Pollen"
    ]

    set nectarConcFlowerPatch CONC_R
    set detectionProbability DETECT_PROB_R
    set color red

    ifelse distanceToColony <= 5500
     [ setxy (14.9 - (distanceToColony / 250) )  3 ]
     [ setxy -7.5 3 ]
  ]

  FlowerPatchesUpdateProc
end;

; *******************************************************************************************************************************************************************************

;  ************** PARAMETERIZATION FLOWER PATCHES FROM FILES  *******************************************************************************************************************

; ********************************************************************************************************************************************************************************

to Create_Read-in_FlowerPatchesProc
  ; copy of CreateFlowerPatchesProc but data are read from input file
  ; calculates derived values (e.g. EEF, flight costs etc)

  let counter 0
  set TodaysAllPatchesList []
    ; shorter list, contains data of all patches, but only for today

  set TodaysSinglePatchList []
    ; short list, contains data of a single patch for today

  set counter Day
    ; counter: to chose only the values for today from the complete
    ; (all days, all patches) list

  repeat N_FLOWERPATCHES
  [
    ; todays data for ALL N_FLOWERPATCHES flower patches are saved in a
    ; new, shorter list (= todaysAllPatchesList)

    set TodaysSinglePatchList (item counter AllDaysAllPatchesList)
      ; this new, shorter list (= todaysAllPatchesList) is comprised of very
      ; short lists (=todaysSinglePatchList) that contain only the data of the
      ; current patch and only for today

    set todaysAllPatchesList fput TodaysSinglePatchList todaysAllPatchesList
      ; fput: faster as lput! (Netlogo 4) however: list is in reversed order!

    set counter counter + 365
    create-flowerPatches 1
    [
      set oldPatchID item 2 TodaysSinglePatchList
        ; refers to patch number of crop maps from a landscape module,
        ; an optional external tool to read in and analyse maps of food patches

      set patchType item 3 TodaysSinglePatchList ; e.g. Oilseed rape
      set distanceToColony item 4 TodaysSinglePatchList  ; [m]
      set xcorMap item 5 TodaysSinglePatchList ; x coordinate
      set ycorMap item 6 TodaysSinglePatchList ; y coordinate
      set size_sqm item 7 TodaysSinglePatchList  ; patch area [m^2]
      set amountPollen_g item 8 TodaysSinglePatchList ; [g]
      set nectarConcFlowerPatch item 9 todaysSinglePatchList  ; [mol/l]
      set quantityMyl  (item 10 TodaysSinglePatchList) * 1000 * 1000 ; [microlitres]

      let calcDetectProb item 11 TodaysSinglePatchList
      ; calculated in "2_BEEHAVE_FoodFlow"-Tool on basis of distance
      ; (if this input file is created by "BEEHAVE_FoodFlow")

      let modelledDetectProb item 12 TodaysSinglePatchList
        ; modelleded in "3_BEEHAVE_LANDSCAPE" with individual scouts
        ; exploring a 2-dim landscape

      ifelse ModelledInsteadCalcDetectProb = true
        [ set detectionProbability modelledDetectProb ]
        [ set detectionProbability calcDetectProb ]

      set shape "flower"
      set size 1 + (sqrt size_sqm) /  1000
      setxy (distanceToColony / 300) 3
    ]
  ]  ; END of "repeat N_FLOWERPATCHES"
  FlowerPatchesUpdateProc
  set TodaysAllPatchesList reverse TodaysAllPatchesList
    ; to correct the reversed order, caused by the fput command

end;

;  ******************************************************************************************************************************************************************************

to FlowerPatchesUpdateProc
  let energyFactor_onFlower 0.2 ; (0.2)
    ;  reflects reduced energy consumption while bee is sitting on the flower
    ; to collect nectar or pollen;
    ; Kacelnik et al 1986 (BES:19): 0.3 (rough estimation, based on Nunez 1982)

  ;                                                                         HANDLING TIME:
  ask flowerPatches
  [
    if ReadInfile = false
    [
      ifelse ConstantHandlingTime = true
        [
          set handlingTimeNectar TIME_NECTAR_GATHERING  ; IF: handling time constant
          set handlingTimePollen TIME_POLLEN_GATHERING
        ]
        [
          if quantityMyl > 0
          [
            set handlingTimeNectar
              TIME_NECTAR_GATHERING *
              ((FlowerPatchesMaxFoodAvailableTodayREP who "Nectar") / quantityMyl)
          ] ; ELSE: handling time dependent on proportion of nectar or pollen left

          if amountPollen_g > 0
          [
            set handlingTimePollen TIME_POLLEN_GATHERING
            * ((FlowerPatchesMaxFoodAvailableTodayREP who "Pollen") / amountPollen_g)
          ]
        ]
    ] ;     if ReadInfile = false

    if ReadInfile = true
    [
      set TodaysSinglePatchList item who TodaysAllPatchesList
      ifelse ConstantHandlingTime = true
        [ ; IF CONSTANT handling time:
          set handlingTimeNectar item 13 TodaysSinglePatchList
           ;  item 13: handling time nectar
          set handlingTimePollen item 14 TodaysSinglePatchList
        ] ;   item 14: handling time pollen
        [
          ; ELSE: if handling time is NOT constant:
          if quantityMyl > 0   ; nectar handling time
          [
            set handlingTimeNectar (
              item 13 TodaysSinglePatchList) *
              ((item 10 TodaysSinglePatchList) * 1000 * 1000) / quantityMyl
          ] ; item 13: NectarGathering_s, item 10: quantityNectar_l

          if amountPollen_g > 0   ; pollen handling time
          [
            set handlingTimePollen
            (item 14 TodaysSinglePatchList)
            * ((item 8 TodaysSinglePatchList) / amountPollen_g)
          ]  ; item 14: PollenGathering_s; item 8: quantityPollen_g
        ]
    ] ; if ReadInfile = true

      ;                                                                    FLIGHT COSTS & EEF:
    set flightCostsNectar
      ( 2 * distanceToColony * FLIGHTCOSTS_PER_m)
        + ( FLIGHTCOSTS_PER_m * handlingTimeNectar
        * FLIGHT_VELOCITY * energyFactor_onFlower ) ; [kJ] = [m*kJ/m + kJ/m * s * m/s]

    set flightCostsPollen
      ( 2 * distanceToColony * FLIGHTCOSTS_PER_m)
        + ( FLIGHTCOSTS_PER_m * handlingTimePollen
        * FLIGHT_VELOCITY * energyFactor_onFlower )

    set EEF ((nectarConcFlowerPatch * CROPVOLUME
            * ENERGY_SUCROSE) - flightCostsNectar) / flightCostsNectar
      ;  Energetic Efficiency of the flowerPatch

          ;                                                                          TRIP DURATION:
    set tripDuration 2 * distanceToColony * (1 / FLIGHT_VELOCITY )
      + handlingTimeNectar
      ; duration of nectar foraging trip depends on speed, 2*distance + time to
      ; collect nectar from the flowers

    set tripDurationPollen 2 * distanceToColony
      * (1 / FLIGHT_VELOCITY ) + handlingTimePollen
      ; duration of pollen foraging  trip depends on speed, 2*distance + time to
      ; collect pollen from the flowers
          ;                                                                         MORTALITY:
    set mortalityRisk 1 - ((1 - MORTALITY_FOR_PER_SEC) ^ tripDuration)   ; nectar foragers
    set mortalityRiskPollen 1 - ((1 - MORTALITY_FOR_PER_SEC) ^ tripDurationPollen) ; pollen foragers
          ;                                                                          DANCING:
    set danceCircuits DANCE_SLOPE * EEF + DANCE_INTERCEPT  ; derived from Seeley 1994

    if danceCircuits < 0 [ set danceCircuits 0 ]
    if danceCircuits > MAX_DANCE_CIRCUITS [ set danceCircuits MAX_DANCE_CIRCUITS ]
      ; MAX_DANCE_CIRCUITS: ca. 100 (Seeley, Towne 1992)

    if SimpleDancing = true
    [
      ifelse EEF > 20
        [ set danceCircuits 40 ] ; IF
        [ set danceCircuits 0 ]  ; ELSE
    ]

    if AlwaysDance = true [ set danceCircuits 40 ]
      ; in this case, foragers always dance for their patch,
      ; irrespective of its quality

    set danceFollowersNectar danceCircuits * 0.05
      ; Seeley, Reich, Tautz (2005): "0.05 recruits per waggle run (see Fig. 3)"
  ] ; ask flowerPatches
end

; ********************************************************************************************************************************************************************************

to ForagingRoundProc
  ;  CALLED BY Start_IBM_ForagingProc calls Procedures involved in each foraging trip
  ; and does foraging related plots

  set ColonyTripDurationSum 0
  set ColonyTripForagersSum 0
   ; used to calculated duration of this foraging round
  set DecentHoneyEnergyStore (TotalIHbees + TotalForagers ) * 1.5 * ENERGY_HONEY_per_g
   ; DecentHoneyEnergyStore reflects the amount of energy a colony should store
   ; to survive the winter, based on the assumption that a bee consumes ca. 1.5g honey during winter
  if DecentHoneyEnergyStore = 0
  [
    set DecentHoneyEnergyStore 1.5 * ENERGY_HONEY_per_g
  ] ; to avoid division by 0




  ;ELRtModule ########################################################################PollenModule#################################
  ;The Probability of Pollen Collection is calculated and passed by the Procedure
  set ProbPollenCollection ELRtProbPollenCalculation
  ;#####################################################################################################################



  if HoneyEnergyStore / DecentHoneyEnergyStore < 0.5
  [
    set ProbPollenCollection ProbPollenCollection
    * (HoneyEnergyStore / DecentHoneyEnergyStore)
  ]

  FlowerPatchesUpdateProc
  Foraging_start-stopProc  ; some foragers might spontaneously start foraging
  Foraging_searchingProc    ; unexperienced foragers search new flower patch
  Foraging_collectNectarPollenProc  ; succesful scouts and experienced Foragers gather nectar
  Foraging_flightCosts_flightTimeProc  ; energy costs for flights and trip duration
  Foraging_mortalityProc  ; foragers might die on their way back to the colony
  Foraging_dancingProc    ; successful foragers might dance..
  Foraging_unloadingProc  ; ..and unload their crop & increase colony's honey store

  let foragersAlive SQUADRON_SIZE * count foragerSquadrons

  let currentNectarForagers
     SQUADRON_SIZE * count foragerSquadrons with
       [activity = "expForaging" and pollenForager = false]

  let currentPollenForagers
     SQUADRON_SIZE * count foragerSquadrons with
        [activity = "expForaging" and pollenForager = true]

  let currentResters
     SQUADRON_SIZE * count foragerSquadrons with
        [activity = "resting"]

  let currentScouts
     SQUADRON_SIZE * count foragerSquadrons with
        [activity = "searching"]

  let currentRecruits
     SQUADRON_SIZE * count foragerSquadrons
        with [activity = "recForaging"]

  let currentLazy
     SQUADRON_SIZE * count foragerSquadrons
        with [activity = "lazy"]

  if sqrt ((foragersAlive - currentNectarForagers ; to avoid bugAlarm caused by numeric inaccuracy!
    - currentPollenForagers - currentResters
    - currentScouts - currentRecruits - currentLazy) ^ 2) > 0.0000000001
  [
    set BugAlarm true show "BUG ALARM in ForagingRoundProc: wrong number of forager activities!"
  ]

  if ShowAllPlots = true
  [
   let i 1
   while [ i <= N_GENERIC_PLOTS ]
   [
     let plotname (word "Generic plot " i)
       ; e.g. "Generic plot 1"

     set-current-plot plotname
     if (i = 1 and GenericPlot1 = "active foragers today [%]")
     or (i = 2 and GenericPlot2 = "active foragers today [%]")
     or (i = 3 and GenericPlot3 = "active foragers today [%]")
     or (i = 4 and GenericPlot4 = "active foragers today [%]")
     or (i = 5 and GenericPlot5 = "active foragers today [%]")
     or (i = 6 and GenericPlot6 = "active foragers today [%]")
     or (i = 7 and GenericPlot7 = "active foragers today [%]")
     or (i = 8 and GenericPlot8 = "active foragers today [%]")
     [
       create-temporary-plot-pen "active%"
       set-plot-y-range  0 110
       set-plot-pen-mode 0 ; 0: lines
       ifelse foragersAlive > 0
         [
           plot (100 * SQUADRON_SIZE ; % active foragers of all foragers CURRENTLY alive
                     * (count foragersquadrons
                              with [ activity != "resting" and activity != "lazy"] )) / foragersAlive
         ]    ; i.e. with activities = "searching", "recForaging" or "expForaging"
         [
           plot 0
         ]
       create-temporary-plot-pen "deaths%"
       set-plot-pen-color red
       plot 100 * DeathsForagingToday ; cumulative deaths as % of todays' INITIAL foraging force
               / (foragersAlive + DeathsForagingToday)
     ]

     if (i = 1 and GenericPlot1 = "foragers today [%]")
     or (i = 2 and GenericPlot2 = "foragers today [%]")
     or (i = 3 and GenericPlot3 = "foragers today [%]")
     or (i = 4 and GenericPlot4 = "foragers today [%]")
     or (i = 5 and GenericPlot5 = "foragers today [%]")
     or (i = 6 and GenericPlot6 = "foragers today [%]")
     or (i = 7 and GenericPlot7 = "foragers today [%]")
     or (i = 8 and GenericPlot8 = "foragers today [%]")
    [
      create-temporary-plot-pen "nectar"
      set-plot-pen-color yellow
      set-plot-pen-mode 0 ; 0: lines
      set-plot-y-range 0 100
      ifelse foragersAlive > 0
        [   plotxy ForagingRounds (100 * currentNectarForagers) / foragersAlive
          create-temporary-plot-pen "pollen"
            set-plot-pen-color orange
            plotxy ForagingRounds (100 * currentPollenForagers) / foragersAlive
          create-temporary-plot-pen "scouts"
            set-plot-pen-color green
            plotxy ForagingRounds (100 * currentScouts) / foragersAlive
          create-temporary-plot-pen "resters"
            set-plot-pen-color brown
            plotxy ForagingRounds (100 * currentResters) / foragersAlive
          create-temporary-plot-pen "lazy"
            plotxy ForagingRounds (100 * currentLazy) / foragersAlive
          create-temporary-plot-pen "recruits"
            set-plot-pen-color blue
            plotxy ForagingRounds (100 * currentRecruits) / foragersAlive
        ]
        [
            plotxy ForagingRounds 0
          create-temporary-plot-pen "pollen"
            set-plot-pen-color orange
            plotxy ForagingRounds 0
          create-temporary-plot-pen "scouts"
            set-plot-pen-color green
            plotxy ForagingRounds 0
          create-temporary-plot-pen "resters"
            set-plot-pen-color brown
            plotxy ForagingRounds 0
          create-temporary-plot-pen "lazy"
            plotxy ForagingRounds 0
          create-temporary-plot-pen "recruits"
            set-plot-pen-color blue
            plotxy ForagingRounds 0
        ]
    ]  ; END:  if plotChoice = "foragers today [%]"

   set i i + 1
  ]

  ] ; if ShowAllPlots = true
end

; ********************************************************************************************************************************************************************************

to ForagersDevelopmentProc
  ; foragers age by 1 day, forager turtles move forward
  ask foragerSquadrons
  [
    set age age + 1
    fd 1.8   ; movement on GUI
  ]
end

; ********************************************************************************************************************************************************************************

to NewForagersProc
  ; creates foragerSquadrons as turtles, based on # in-hive bees developing into foragers

  let foragerSquadronsToBeCreated
     NewForagerSquadronsHealthy
     + NewForagerSquadronsInfectedAsPupae
     + NewForagerSquadronsInfectedAsAdults
  let newCreatedBees 0

  create-foragerSquadrons foragerSquadronsToBeCreated
  [
    set newCreatedBees newCreatedBees + 1
    ifelse ticks = 1
      [
        set age 100 + random 60 ; age of initial foragers: 100d + 0..59d
        setxy 40 9
        set color grey
        set size 2
        set heading 90
        set shape "bee_mb_1"
        set mileometer random (MAX_TOTAL_KM / 4)

        ;ELRTModule#######################################################################
        ;All simulations start on January 1st, so all initial Foragers are Winterbees
        set winterBee 1
        ;#######################################################################
      ]  ; IF 1st time step: (=initial bees): travelled distace equally distributed,
         ; (winterbees have done only little foraging in autumn!)

      [ ; ELSE: all other foragers
        set age Aff
        setxy (-20 + age) 9
        set color grey
        set size 2
        set heading 90
        set shape "bee_mb_1"
      ]

    set activity "resting"
    set activityList [ ]
    set cropEnergyLoad 0 ; [kJ] no nectar in the crop yet
    set collectedPollen 0 ; [g] no pollen pellets
    set knownNectarPatch -1  ; -1 = no nectar Flower patch known
    set knownPollenPatch -1 ; -1 = no pollen Flower patch known
    set pollenForager false
      ; foragers are nectar foragers except they decide to collect pollen

    ; creation of HEALTHY and INFECTED foragers:
    set infectionState "healthy"
      ; possible infection states are: "healthy" "infectedAsPupa" "infectedAsAdult"

    if newCreatedBees > NewForagerSquadronsHealthy
    [
      set infectionState "infectedAsPupa"
      set ycor ycor - 3
    ]  ; foragers infected as pupa are created

    if newCreatedBees > (NewForagerSquadronsHealthy + NewForagerSquadronsInfectedAsPupae)
    [
      set infectionState "infectedAsAdult"
      set ycor ycor + 1.5
    ] ; foragers infected as adults are created
  ] ; create-foragerSquadrons

  ; the toal number of ever produced foragers is recorded and can be used as output:
  set SummedForagerSquadronsOverTime
     SummedForagerSquadronsOverTime
     + NewForagerSquadronsHealthy
     + NewForagerSquadronsInfectedAsPupae
     + NewForagerSquadronsInfectedAsAdults

  ; no more new foragers have to be created in this time step:
  set NewForagerSquadronsHealthy 0
  set NewForagerSquadronsInfectedAsPupae 0
  set NewForagerSquadronsInfectedAsAdults 0
end;

; ********************************************************************************************************************************************************************************

to-report Foraging_PeriodREP
  let foragingPeriod_s -1
  let foragingHoursList [ ]
  ; "foragingPeriod" = HOURS SUNSHINE ON DAYS WITH Tmax > 15degC

  ; 2000: from weather data Berlin, Germany (DWD), (1.1.-31.12.2000);
  let foragingHoursListBerlin2000
    [ 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
      0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7.2
      0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2.5 0 0 0 0
      0 0 0 10.7 0 0 0 0 0 0 0 0 0 0 0 7 0 7.9 6.8 4.7 10.8 11.2 11.8
      11.2 9.9 0 10.7 10.4 4.2 10.6    8.7 5.7 13.3 13.2 12 14 14.1 13.9
      13.1 10.7 7.1 13.7 14.6 15 15.1 15 13.5 10.3 2.6 5.9 0 6 0 8.4 2.4
      0.7 12.1 5.8 6.8 8.7 6 10 8.7 14.2 12.3 7.4 3.4 0.2 7.2 13.2 15.8
      13.9 9.5 11 15.3 4.1 2.1 6 12.7 10.4 15.4 15.1 11.4 8.5 8 1.5 1.5
      2.4 2.6 1.1 0.1 0 9.5 4.5 2.4 3.9 1.3 2.2 8.3 1.1 3.4 2.8 5.1 0.2
      6.4 0.5 3.4 5.2 5.4 0.1 0 1.5 0 0.5 7.9 9.8 4.4 1.6 3.8 2.1 0.6 1
      1.5 10.7 3.8 8.3 7.1 9.3 12.7 6.9 3.6 10.3 3.3 0.2 5.7 11.7 13.4
      7.8 5.2 9.5 5 4.2 5.4 2 7.3 8.5 9 4.7 13.1 10.5 0 7.5 8.6 4.3 8
      2.5 0 2.2 1.2 8.1 2.8 0 0.4 5.1 1.2 6.2 2.1 0.1 5.1 0.3 0 11.7 0
      0 10.4 6.5 11.1 11.3 8.5 1.2 8.8 5.6 10.6 10.3 8.1 3.7 9.4 2.2 0.2
      0 0 0 0 0 2.2 2.9 2.7 6.9 0 6 3.3 0 0 0 7.4 9.1 8.9 1.7 0 0 0 0 4.1
      0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
      0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ]

  ; 2001:
  let foragingHoursListBerlin2001
    [ 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
      0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
      0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2.3 10.3 6.2 5.5
      0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 13 8.1 3.9 6.6 0 3 10.9 13
      13.2 13.6 4.9 0 0 0 9 14.2 14.2 14.7 13.7 12.2 12.6 2.1 8.3 2.9 5.3
      10.1 13.1 8.3 7.5 15.3 15.1 14.9 11.6 6.5 0 6.2 3.5 1 2 0 0 0.7 1.2
      3.1 3.1 1.4 8.9 0 6.9 0 11.3 4.6 6.8 4 8.5 3.2 5.7 14.3 3.3 3.3 2.5
      6 13.6 13.3 14.3 1.7 10.6 12.8 5.6 0.9 12.6 12.4 11.2 13.1 6.6 0.4
      0 5.5 5.4 11.1 6.5 2.5 3 0 0.6 8.5 11.9 11.2 5.9 11.1 7.9 11 10.4
      10.9 14.9 14.5 6.3 12.2 2.7 5.8 12.6 3.9 2.8 5.2 6.5 5.3 5.9 8.5 7.3
      7.4 1.1 0 5.6 13.3 12.8 6.2 0 2.9 6.6 0 9.3 11.8 8.3 10.3 11 3.8 4
      4.3 10.9 2.9 3.9 2.5 0.3 1.2 8.1 2.9 1.6 6.2 0 0.2 0 2.1 0.2 1.5 4.2
      3.8 3.5 0 9.9 0.5 2.6 1.1 9 0 0 0 0 0.8 4.3 0 0 0 2.2 4.5 3.8 9.5 1.1
      7.9 3.9 7.6 0 7.7 7.5 6.3 1.2 5.5 0 0 1.9 6.9 0 0 0 0 0 5.7 0 0 0 3.1
      2.2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
      0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ]

  ; 2002:
  let foragingHoursListBerlin2002
  [ 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
    0 5.9 8.3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9.7
    0 0 0 0 0 0 7.2 0 0 0 0 0 0 0 0 0 0 11.2 9.1 2.8 11.2 11 0 0 0 0 0 0 0 0
    0 0 0 0 0 0 0 0 5 0 6.7 13.3 3.3 0 0.2 3.2 0 0 0 0 2.7 1 5.8 0 0 4.5 0 8.1
    12.7 11.7 5.2 5.6 7.9 6.7 4.3 10.4 13.7 14.7 0 8.6 10.9 12.9 7.7 2.4 1.4 0
    6.1 0 6.7 11.3 6.1 10.3 13.3 10.4 8.9 7.7 3.9 0 0 0.4 1.7 4.6 1.3 0.2 3
    4.8 6.2 11.1 14.4 6.4 6 4.3 9.9 6.3 9 10.3 10.1 7.4 8.3 5 1.4 0 2 1.9 0.3
    12.2 5.7 4.5 12.9 14.5 11.5 8.2 6.9 7.8 0 1.4 6.4 0.9 0.6 0 2.9 11.7 0.9
    1.6 2 2.9 0.4 8.6 14.3 11.3 11.5 7.1 7.6 0.7 13.4 8.8 0.1 7.5 4.3 2.9 3.7
    4.7 9.1 0 0 1.2 10.4 6.1 6.3 12.2 12.3 12.9 11.8 9.2 10.7 9 9.3 10.6 10.8
    10.5 8.5 8.6 6.7 7.8 11.8 10.4 10.6 6.7 10.6 4.8 10.4 10.9 9 7.2 12.1 10.2
    3.7 8.8 1.5 1.9 3.3 4.3 0.3 2.6 0 0 0 9.4 0 0 0 0.7 6.6 9.3 8.9 6.2 4.3 0
    0 0 0 0 0 0 0 0 0 0 1.2 0 0 0 0 0 0 0.9 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  ]

  ; 2003:
  let foragingHoursListBerlin2003
  [ 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
    0 0 0 0 0 0 0 0 11.5 7.9 0 1.8 0 9.6 8.1 0 9.7 0 0 0 0 0 0 0 0 0 0 0 11.7
    12.4 12.4 12.5 12.7 0 0 11.8 11.7 12.8 12.4 8.6 8.6 0.1 7.3 4.7 2.9 4.5 7.3
    9.5 3.1 13.5 12.4 7.7 9.4 11.6 0.5 4.9 10.6 4.1 3.1 4.6 0 5.3 6.7 7.3 1.7
    5.5 5.9 8.1 1.1 13.1 14.3 5.6 10.3 9.9 15.4 15.4 7.8 14.3 14.4 12.5 13.6 10.9
    11.4 13.6 13.2 11.2 13.6 9.3 12.4 12.5 8.8 8.9 10.3 13.3 3.6 1.8 5.3 2.8 10.8
    5.7 10.9 2.7 3.8 13.9 15.2 5.2 11.6 2.3 6.1 8.1 1.3 0.4 0.1 3.6 4.5 3.1 6.2
    13.4 4.2 6.4 15.7 13.3 13.2 4 6.5 13.4 13.3 8.5 12.6 8.9 6.6 4.2 2.2 7.6 5
    7.5 12.6 4.6 10.4 5 8.1 12.8 12.8 12.1 13.9 13.8 13.9 14.2 14.4 10.5 13 4.6
    9.9 9.4 13.3 6 3.6 10.1 9.3 9.4 4.3 6.8 11.9 7.2 2.6 2.7 2.3 4.6 7.8 3.8 10.8
    2.7 0.8 11.7 11.2 5.7 9.7 2 3.5 0 1.3 3.5 6.1 10.8 8.2 6.9 10.7 11.4 11.3 11.6
    11.1 2.8 9.6 11.4 11.3 3.1 6.5 2.4 0 9.6 1.7 2.4 3.1 0 0 0 0 0 0 0 0 0 0 0
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ]

  ; 2004:
  let foragingHoursListBerlin2004
  [ 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.1 0
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
    0 9.9 7 1.3 0 0 0 0 0 0 0 0 0 0 0 12 10.6 0 6.5 2.5 0 0 0 0 0 0 0 0 0 13.2 13.1
    12.5 11 8.4 0.5 4.5 3.2 10.4 0 0 10.2 0 2 13.9 11.6 12.5 7.2 0 3.9 5.2 8.2 3.9
    2.3 0 0 4.4 4.7 0 0 6.6 0 9.6 0.4 8 8.4 8.1 0 0 0 0 1.6 0 0 11.6 15.2 14.8 8.7
    7.9 0 12.8 4.2 1.1 12.1 8.2 9.4 2.9 4.6 4 9.1 6.2 6.6 5.5 9.6 1 2.6 4.9 11.7
    11.6 7.7 4.9 5.2 5.4 6.3 0.2 8.6 8.1 4.5 5.8 9.3 7 7.5 6 11.4 13.7 4 3.6 3.9 9.6
    1 0.8 4.2 2.5 1.1 7.5 10.4 7 9.6 5 3.3 10.3 6.5 6.4 4.1 6.7 11.2 14.8 14.4 11.5
    9.7 8.3 8.5 12.2 11.9 13.9 12.4 12.6 12.9 13.7 7.3 11.5 4.9 5.2 12 7.5 5.1 6.3
    6.2 4.2 5.8 10.1 7.1 2.7 2.9 3 1.9 2.1 3.2 0.7 3.8 6.7 12.2 12.4 12.4 12.8 12.4
    10.7 11.6 12.6 12.5 4.5 5.1 4 5.2 7.8 8.1 11.6 11.7 4.7 2.4 1.5 3.2 0 0 3.9 0
    0.2 0.8 1 3.5 0.8 3.7 8.7 5.3 9.5 1.9 8.1 0 0 0 0 0 0 0 0 0 0 0 0 0 6.5 9.3 1.3
    5.4 3.7 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ]

  ; 2005:
  let foragingHoursListBerlin2005
  [ 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.8 0.4
    0 0 0 0 0 0 4.7 7 0 0 0 0 0 0 0 12.3 10.4 11.7 0 9.4 0 0 0 0 0 6.3 2.1 6.7 7 10.2
    10 11.4 10.3 0 0 0 0 0 4.4 11.7 0 8.4 8.5 6.6 11.7 9.7 5 2.5 7.1 2.3 0 0 0 0 0
    0 11.8 1.6 0 8.4 0 0 12.7 11 5.7 4.7 0.4 5.4 9.6 12.7 13.9 15 14.2 0 4.3 0 2.8
    7.9 6.7 2.5 0 0 9.5 6.6 1.2 0 0 11.7 10.2 7.9 11.5 0.4 14.1 11.1 16 11.9 7.2 15.7
    9.8 8.7 14.8 15.7 15 13.8 10.9 0.1 3.2 9.2 12 0 1.1 2.1 0.1 3 14.3 14.8 14.9 13.7
    12 11 9.1 7.3 6.4 4.7 4.3 0 3 0.2 4.6 4 2.1 6.8 7.9 6.8 6.9 9.4 8.5 10.1 0 6.4
    5.6 3.9 5.1 11.1 0.5 0 1.3 8.4 0.6 1.2 4 10.9 6.6 13.7 12.4 8.4 11.5 11.1 0 6.5
    0.2 5.6 11.3 10 12.8 12 12.8 12.3 8.4 0.9 12.4 12.4 12.5 11.9 11.7 11.7 7.4 0 0.2
    6.6 6.9 7 0 8.1 11.7 6.8 5 0.7 11.3 11.2 10.3 10.5 3.6 7.4 0.8 0 3.4 1.7 0 0 5.4
    9.5 10 9.4 8.9 9.2 7.5 9.8 9.7 9.2 9.6 8.6 0 0 0 0 5.7 0 0.2 2.2 0 0 3.3 7.7 8.9
    8.6 8.2 0 0 0 2.7 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ]

  ; 2006:
  let foragingHoursListBerlin2006
  [ 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
    0 0 0 0 1.8 1.5 5 0 0 0 3.8 8.5 0 0 0 0 0 8.2 0 0 0 0 0 0 0 0.1 0 0 6.5 9.6 4.3
    0 3.7 0 13.1 4.7 0 0 0 0 10.5 5.6 13.4 12.5 11.9 11 12.2 10.6 14.2 14.7 14.1 12.6
    6.8 4.6 10.5 8.6 1.4 0.3 3.5 6.1 1.5 7.7 5.8 9.9 0 0 1.6 6.6 0 0 2.4 0 11.5 4.4 0
    0 4.8 9 11.5 11.5 15.6 15.8 15.8 15.7 15.2 7.5 5.6 1.2 9.1 9.8 9 7.7 6.4 9.8 12.4
    13 9.7 12.3 10.4 10.2 0.7 14.2 15.8 16 16 15.7 12.9 10.6 2.5 12.3 11.7 10.8 13.3
    8.5 10.3 11.5 13.4 15.7 15.7 15.5 13.9 12 14.1 6 14 12.9 14.8 13.6 5 5 12.9 6 9.3
    8.5 6.4 3.5 0.6 0.8 9.3 4.6 5.3 2 3.9 8.4 0 9.8 2.2 6.9 8.2 3.7 11.2 7.7 4.9 7 0.9
    9.6 3.5 2.3 4.2 6.7 1.2 0.2 4.2 0.2 7.7 0 5.1 9.1 3.7 8.5 6.4 5.3 11.9 12.4 11.5
    12.1 12 11.4 6.4 4.7 9.2 1 8.9 11.3 11.5 11.4 11.3 11.1 9.5 0.1 3 10.2 7.8 3.9 1.3
    0.4 0.2 2.9 0.9 1.4 4.2 9.8 9.1 6.3 8.2 0 0 0 6.7 9.9 7.9 4.8 0 6 5.3 3.2 2.7 4.4
    6.3 7.1 0 1.1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 4.7 7.7 1.3 0 0 0 0 0 0 0 0 0 0 0 0
    0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ]


  ;ELRtModule###########################
  ;Foraging Hours for different, new Locations
  let foragingHoursListOsnabrueck
  [0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0.19	0.16	0.24	0.28	0	0	0	0	0	0.1	0.32	0.3	0.38	0.45	0.23	0	0	0	0	0.21	0.12	0	0	0.57	1.56	0.69	0.94	0.78	0.66	1.16	1.13	1.47	0.06	0.41	1.64	1.39	0.48	0.99	0.47	0.72	1.5	1.74	2.56	2.69	1.88	2.56	2.36	1.87	2.85	3.01	3.49	3.4	4.29	3.65	3.3	3.57	3.62	2.96	3.29	3.92	4.09	5.38	4.25	4.88	5.48	6.37	5.68	6.56	6.97	5.21	4.58	4.34	4.38	5.36	6.28	5.12	6.15	5.58	6.32	8.01	6.47	6.02	8.04	8.97	7.46	6.41	5.87	7.64	7.84	8.89	8.41	6.78	6.88	6.56	9.22	7.58	7.21	8.01	9.78	8.73	9.24	8.87	9.33	10.25	10.37	10.69	10.59	10.09	9.91	9.79	10.96	8.68	10.41	11.51	10.99	11.21	11.08	10.62	11.33	10.42	10.83	11.91	11.68	11.23	10.44	10.91	11.28	11.18	10.94	11.39	10.33	11.44	11.01	10.42	11.98	11.33	10.87	11.99	11.3	12.54	12.38	12.49	12.51	11.47	11.98	12.24	12.33	11.42	12.27	11.73	12.05	10.88	11.45	10.86	11.44	11.93	12.24	12.48	13.26	12.8	11.78	11.93	11.84	12.22	11.33	10.79	11.82	12.45	11.79	11.77	12.07	11.31	12.21	11.68	12.58	12.26	12.08	12.16	11.51	11.08	9.88	11.24	11.34	11.33	10.96	10.86	10.03	10.37	10.45	9.55	9.7	10.28	10.68	10.96	10.96	11.01	10.07	10.6	9.78	8.94	9.16	8.98	8.46	8.56	9.18	8.97	9.95	9.48	9.17	9.29	7.93	7.5	8.03	7.68	8.44	8.14	8.29	6.58	7.72	7.44	5.52	6.31	5.39	5.07	6.63	6.27	6.04	6.33	5.22	5.36	5.06	5.43	4.57	4.71	5.35	3.74	2.85	3.33	2.31	2.19	3.55	3.03	3.09	3.41	3.29	2.84	1.72	1.52	2.48	2.59	1.96	1.67	1.53	1.57	1.31	1.59	1.6	0.37	0.84	0.51	0.93	0.58	0.75	0.92	0.83	1.39	0.72	0.41	0.78	0.43	0	0	0	0.26	0.07	0	0	0	0	0	0	0	0	0	0	0	0.26	0.23	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0]

  let foragingHoursListPoitou-Charentes
  [0	0	0	0	0	0	0	0	0	0	0	0	0.3	0.08	0	0	0	0	0	0	0	0	0	0	0	0.5	0	0	0	0	0	0	0	0	0.24	0	1.03	1.62	1.92	1.67	0.76	0.43	0.64	0.29	0.56	0.63	0	0.47	0.45	0	0	1.11	1.92	1.37	1.71	1.6	1.51	1.08	2.31	0.28	0.97	0.63	0	0.88	1.28	1.54	0.58	1.32	1.27	2.14	4.26	4.61	4.47	3.5	3.89	2.73	3.69	4.39	4.84	4.79	6.21	6.32	4.96	2.62	3.39	2.19	4.9	2.77	5.37	4.97	4.07	3.91	6.35	6.46	8.44	7.31	3.89	2.92	6.39	4.08	3.61	6.24	5.79	6.28	4.65	6.62	7.37	4.69	4.92	8.43	6.99	8.08	6.41	8.66	5.31	6.99	8.42	7.31	8.41	8.2	8.98	7.5	7.14	8.44	9.32	7.12	9.46	8.72	9.83	8.48	8.52	9.55	8.84	9.65	9.88	8.13	7.97	6.95	6.55	11.09	11.29	12.23	12.07	11.84	10.36	9.25	11.41	8.5	11.32	11.13	11.49	12.41	12.59	11.7	12.15	9.05	10.6	9.95	8.53	10.14	11.39	11.4	12.72	11.67	9.92	9.44	9.55	9.76	11.28	11.07	11.41	12.41	12.6	12.79	13.52	13.49	13.44	12.61	13.19	13.43	13.64	13.7	13.75	11.49	12.68	12.77	12.35	12.64	12.49	12.02	12.37	10.37	11.99	12.15	11.65	12.48	12.04	11.59	10.79	12.23	11.76	11.95	12.19	11.52	12.71	13.03	12.63	12.66	12.7	12.66	12.62	12.08	12.28	12.36	11.54	11.68	12.36	12.5	12.54	12.46	11.61	12.15	11.87	11.49	11.74	12.1	9.65	9.64	11.88	12.33	12.55	12.41	11.42	11.47	11.58	10.54	11.18	11.35	11.26	11.16	10.93	10.62	11.26	10.37	10.75	10.87	8.86	9.92	9.82	10.46	10.73	10	9.8	10.3	9.39	10.07	9.45	8.29	7.67	9.12	9.06	8.46	8.64	9.72	9.31	8.38	8.1	8.17	8.71	8.75	8.96	8.72	8.04	8.15	8.12	8.28	7.05	7.19	5.94	7.87	7.22	6.27	6.55	6.95	6.1	6.58	6.26	3.41	4.36	3.14	1.91	4.1	5.12	4.55	4.14	2.53	3.04	1.74	3.95	3.67	4.34	3.72	2.71	2.6	1.83	2.29	0.89	0.88	0.99	0.21	1.22	0.96	1.23	1.37	1.35	3.31	2.98	2.56	1.88	0.99	1.04	0.96	2.18	1.94	0.61	0.73	0	0.56	0.16	0.33	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0.4	0.13	0	0	0	0	0.21	0	0	0	0	0]

  let foragingHoursListSanMarino
  [0	0.18	0.24	0.33	0	0.11	0	0	0	0	0	0.2	0	0.12	0	0	0	0	0.16	0.53	0.47	0.31	0.21	0.41	0.81	0.79	0	0.59	0.43	0.01	0.29	0.52	0.51	0.98	0.96	0.8	1.36	0.98	1.32	0.99	1.26	0.9	0.82	1.59	1.05	1.18	0.98	1.25	0.73	0.79	0.85	1.76	1.06	1.38	1.74	1.92	2.06	1.54	2.32	2.16	1.96	2.51	2.33	2.03	1.94	1.99	2.82	3.77	3.35	2.6	2.9	4.98	4.67	5.11	4.53	4.13	3.87	3.65	3.8	4.23	4.12	5.15	5.48	6.41	6.22	6.22	5.99	6.08	6.28	5.27	5.43	6.23	6.7	5.85	6.24	6.9	8.04	8.7	7.86	8.47	7.6	6.12	5.97	5.69	7.06	7.55	8.7	7.71	7.87	7.83	8.07	8.25	6.46	7.61	9.36	8.15	8.79	7.95	8.65	8.56	9.49	9.78	8.85	9.31	9.37	9.24	10.08	10.38	10.61	10.32	9.15	9.69	10.29	8.6	10.58	10.91	10.3	8.64	9.24	10.84	9.47	10.72	11.5	12.24	12.09	12.18	11.51	12.1	12.07	12	11.34	11.58	11.62	12.37	12.06	12.38	12.45	12.63	12.44	12.64	12.81	12.48	12.56	12.76	12.34	12.54	13.16	13.15	13.14	13.04	12.17	12.74	13.07	13.1	13.03	12.68	13.27	13.48	13.46	13.21	13.33	13.32	13.51	13.52	13.34	13.43	13.3	13.23	13.31	12.97	12.49	13.29	13.47	13.65	13.62	13.51	13.22	13.42	13.13	12.61	12.5	12.75	12.79	12.86	13.19	12.46	12.86	12.81	12.89	12.82	13.07	12.93	12.89	13.14	12.91	12.9	12.39	12.61	12.58	12.61	12.59	12.43	12.41	12.53	12.27	12.09	11.18	11.06	11.89	12.19	11.75	12.13	12.27	12.1	11.77	11.93	11.63	11.19	11.52	10.91	10.48	10.68	10.97	10.58	10.94	11	10.66	10.75	10.77	10.73	10.07	10.6	10.48	9.55	9.12	9.64	9.55	9.79	8.85	8.46	8.33	7.96	7.93	9.13	9.32	9.11	7.45	6.9	7.63	7.25	8.03	7.85	7.92	8.13	7.11	6.73	6.56	6.07	6.9	6.79	6.47	7.3	6.56	6.62	5.85	5.88	5.61	5.36	5.45	5.68	4.97	4.59	6.04	4.81	5.61	4.51	3.69	4.47	4.07	4.22	3.88	4.14	4.77	3.52	4.41	3.07	3.09	3.27	3.62	3.34	2.69	1.88	1.29	1.72	1.71	1.62	1.34	1.11	1.42	1.26	1.62	1.34	0.16	0.6	1.18	0.91	0.39	0.42	0.31	0.23	0.74	0.54	0.21	0.23	0.16	0.16	0.15	0	0	0.22	0	0.33	0.12	0.32	0	0	0.36	0.13	0.26	0.17	0.38	0	0.05	0.11	0.23	0	0.01	0.14	0.19	0	0	0	0	0	0	0]

  let foragingHoursListStockholm
  [0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0.29	0	0	0	0	0	0	0	0.05	0	0	0	0	0	0	0	0.3	0.92	0.97	0.33	0	0.17	0.27	0.07	0.45	0	0.83	0.09	0.43	0.12	0.49	1.26	0.92	0.65	0.99	1.39	0.66	1.23	2.17	2.01	2.63	3.07	3.52	3.81	2.95	2.56	3.59	1.59	1.46	3.47	3.59	3.27	4.1	5.36	4.54	4.44	5.42	5.11	5.35	5.86	5.33	4.33	5.43	4.74	5.88	6.18	6.62	6.92	6.27	5.51	7.65	8.18	8.38	6.53	9.53	9.54	9.04	9	9.57	9.74	8.61	9.89	8.16	10.22	9.01	10.38	9.51	10.43	10.56	10.94	10.4	11.38	10.79	11.02	10.73	11.13	11.12	12.47	11.63	9.57	11.14	10.71	9.53	9.12	8.46	12	10.8	11.01	11.64	12.26	11.14	12.68	12.05	11.97	12.17	12.31	12.25	13.04	13.39	12.9	12.32	12.81	12.39	13.32	12.52	12.62	11.57	12.23	11.86	13	13.06	12.99	12.23	13.22	12.96	12.74	13.31	13.36	12.61	12.83	12.5	11.76	11.98	12.6	12.68	12.51	12.2	11.44	12.54	12.68	12.42	12.16	12.34	12.14	11.85	11.14	9.97	10.56	10.83	11.02	10.79	11.3	10.39	10.47	10.78	9.59	9.77	10.51	9.19	9.69	9.82	9.63	9.09	9.32	8.26	8.82	8.85	8.81	7.29	7.15	7.17	8.34	7.46	8.04	8.34	7.31	8.4	8.09	7.24	6.35	7.02	6.25	6.19	4.33	5.53	4.8	5.56	3.86	3.17	3.79	2.72	3.98	3	2.23	3.06	3.1	2.85	2.38	3.18	2.42	1.38	0.99	0.11	0.51	0.61	0.31	0.48	0.79	1.03	0.42	0.1	0.48	0.14	0	0.23	0	0.18	0	0	0.08	0	0	0	0	0	0.12	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0]

  let foragingHoursListFrance2010
  [0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	2.62	4.47	2.08	0	1.68	0	2.05	0	4.57	0	0	0	0	0	0	0	0	0	0	0	0	4.12	6.42	7.57	5.58	5.97	8.38	4.77	7.75	8.12	9.28	6.48	7.12	3.12	2.02	8.45	2.02	0	2.83	0	2.23	5.68	5.95	9.12	5.22	5.83	9	9.58	7.9	6.22	6.37	8.75	8.98	9.03	9.87	10.35	9.6	9.52	10.18	8.97	7.67	10.82	10.75	9.77	10.92	11.88	11.48	9.22	8.43	8	1.1	0	0	4.43	2.5	6.5	2.97	7.8	7.13	0	2.78	8.87	8.45	9.53	7.9	10.9	11.82	11.67	12.25	12.77	13.13	13.37	11.63	11.88	10.17	11.27	7.37	7.85	3.87	10.42	12.05	12.9	13.38	13.57	10.6	12.48	7.32	11.02	12.83	11.15	12.07	12.58	8.95	8.23	0	8.85	11.6	6.5	10.15	11.35	12.62	12.83	13.42	13.6	14.03	14.08	13.25	14.22	13.8	14.38	14.1	12.85	13.98	12.67	13.62	13.7	14.15	13	13.9	14.1	12.18	13.02	12.08	13.13	13.42	12.3	12.93	13.48	13.62	10.05	11.97	12.43	12.03	12.87	12.75	13.15	13.23	12.28	12.95	13.15	10.48	12.28	12.53	11.2	12.18	12.38	12.73	12.65	12.63	12.42	10.77	12.05	11.43	10.92	11.32	12	11.2	10.3	11.55	12.93	12.7	11.35	12.58	10.6	11.98	12.15	12.08	10.9	11.17	10.92	10.83	11.12	11.15	11.18	10.72	11.32	9.75	10.07	9.98	10.42	10.62	10.92	10.97	10.43	10.48	10.28	9.68	9.6	9.68	9.37	9.6	10.48	10.67	10.78	9.78	8.52	5.88	7.73	7.82	8.7	8.3	8.05	9.52	9.97	6.72	8.58	9.35	9.73	9.82	9.52	6.37	7.83	9.02	7.48	5.73	4.87	0.8	0	3.17	0	4.98	3.27	4.08	4.58	0	0	2.02	4.6	3.22	5.2	5.85	3.83	0.08	2.65	4.82	3.45	4.47	1.48	0	0	0	0	0	1.03	5.9	0	2.67	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	2.42	2.92	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0]

  let foragingHoursListIdanha_a_Nova_2019_2020
  [2.3	3.2	3.3	2.9	2.4	2.8	3.6	3.9	3.6	2.1	0.8	0.1	1.3	2	3.1	1.9	1.1	2	0	1.8	0.9	0	2	3.2	4	2.8	0.9	0	0.8	0	2.6	3.3	3.2	2.9	5.4	6	5.9	4.9	3.4	5	3.1	4.1	6.2	5.9	6.6	6.5	6.9	6.2	3.4	6.4	6.8	7.7	7.9	8	7.3	7.4	7.8	7.9	5.6	7	7	6.3	7.5	4.3	4.5	5.5	6.7	8.1	8.6	8.9	9	8.2	8.7	8.8	6.5	7.8	8.2	8.9	4.5	6.9	8.6	8.9	9.3	9.4	9.1	9	8.9	9	5.1	4.6	5.1	8.9	9	7.4	2	3.9	4.6	8.2	4.2	9.4	9.6	10	9.5	9.7	8.2	7.7	6	9.3	9.8	8.4	10.4	10.1	7.8	7.9	8.5	8.2	9.8	10.6	10.2	10.8	11.3	11.8	11.9	11.9	11.7	11.2	11.7	11	8.9	10.5	10.5	11.6	10.8	11.2	11.6	11.7	11.1	11.5	11.8	11.9	12.3	12.4	12.7	12.9	13	13.4	13.4	13.6	13.5	13.3	13.6	13.6	13	13	12.3	12.1	11.7	12.1	12.3	12.4	12.5	12.3	12.1	12	12	12.3	12.7	12.6	12.5	12.4	13.2	13.5	14.1	13.1	13.5	13.6	13.5	13.5	13.9	14.1	14.1	14	13.5	13.6	13.8	13.8	13.8	13.5	13.4	13.7	13.9	14.2	13.9	13.9	14	14	14.1	13.9	14.1	14	13.8	13.1	14	14	13.9	13.5	13.4	13.2	13.4	13.3	13.4	13.4	13.2	13.1	13.2	13.3	13.3	13.3	12.8	13	12.6	12.6	12.5	12.4	12.6	12.5	12.5	12.4	12.5	12.5	12.1	12.4	12.5	12.5	12.6	12.6	12.6	11.6	12.5	12.3	12.1	12.2	12.2	12	12.3	12.2	12.3	12.3	12.1	12	12	11.5	11.4	11.5	11.9	11.5	11.5	11.1	10.7	10.5	10.1	10.3	10.6	9.4	9.9	10	9.4	9.9	10	10.2	10.2	10.3	10.4	10.2	8.5	9.3	9.5	9.5	10	10.1	10.2	10	10.2	9.8	9.8	9.3	7.2	8	8.1	6	8.5	5.2	3.8	6.3	7.5	3.5	6.9	6.5	7.3	6.4	6.1	7.5	6.6	8.1	8	7.8	7.7	1.9	4	3.9	5.9	3.9	3.1	3.2	6	6.2	6.7	1.8	3.3	3.7	2.7	4.7	3.9	3.5	3.5	4.7	4.4	2.5	2.5	0	3.2	3.5	3.1	2.7	3	4.8	3	1.3	2.5	2.5	2.5	0.8	2.2	3	3.6	2.8	3.1	0.7	0.7	0	0.5	0	0	0	2.3	2.1	0	2.1	2.5	2.4	2.4	2.7	2.7	2.4	1.7	1.3
]

    let foragingHoursListFoulum_2019_2020
  [0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0.8	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	2.8	2.7	1.7	0	0	0	1.5	2.6	6.9	7.8	7.1	3.6	1.2	0	0	3.2	0	0	2	2.3	6.3	7.1	8.6	9.3	9.7	9.6	10	7.4	8.3	5.2	1.8	4.6	5.1	4.8	0.9	2.9	3.5	2.3	5	3.1	4	4.5	7.7	0.9	4.3	3.9	3.8	4.4	8	5.5	2.2	3.9	9.4	10.3	9.3	4.1	10.5	1.5	8.8	7.7	6.9	8.3	8.6	6.7	11.5	12	12.4	11.4	9.1	11.3	8.2	11.5	9.9	8.3	9.9	11	6.6	12.3	14.1	12.8	13.8	13.9	14.3	12	9.3	11.6	12.8	13.3	14	14.2	14.3	13.2	12.1	12.2	12.2	11.5	11.5	9.3	4.7	11.3	9.4	9.8	11	12	11.6	10.8	11.3	11.1	9.9	11.2	12.3	12.5	12.8	11.5	11.2	11.6	8.8	11.8	12.5	12.8	12.7	11.6	13	11.2	9	11.6	12.4	11.1	12.1	10.7	9.1	12.6	12.1	12.1	12.4	12.1	12.2	12.2	11.8	11.9	10.8	11.8	11.7	8.9	11.3	10.2	11.3	10	10.5	10.8	10.9	10.8	10.6	9.3	5.8	10.3	11	9.2	9.4	8.2	6.4	7.8	6.3	8.2	8.1	6.7	4.8	4.7	6.4	5.7	9.2	7.1	7.1	5.1	6.1	6.2	4.5	6.9	7.4	3.8	3.8	0	0.3	7	2	2.4	3.1	1.3	0	0	1.1	2.9	0	0.1	2.2	0.8	0.9	0	1.8	0	0	0	0	0	0	0	1.5	0	0	0.5	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
]

   let foragingHoursListFoulum_2015_2020
  [0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0.3	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0.4	0	0	0	0.4	0	0	0	0	0.2	0.9	1.1	0.6	0	0	1.2	1.5	1	3	3.3	2.8	2.1	2.4	0.8	2.1	1.7	1.7	3.3	1.5	0.9	2.7	3.4	4.5	5.3	6.1	5.8	6.7	4.9	4.9	2.5	0.6	3	1.9	2.6	0.3	1.6	3.3	3.8	6.2	5.2	6.6	7.2	9.2	4.5	6.1	5	6.4	8.7	8.8	7.5	6.7	6.1	8.5	8	8.1	6.6	9.3	5.8	10	8.5	9.2	9	9.8	9.1	10	10.2	9.2	11.3	11.3	10.1	10.3	12.3	11.7	10.1	9.9	9.3	10	11.7	12	11.4	12	10.5	10.7	11.7	9.2	9.9	11.5	11.1	11.2	11.1	12.4	10.6	11.3	12	11.9	10.2	10.5	11.4	9	12.2	10.6	11.6	10.5	11.7	11	10.6	10.9	11	11.2	11.3	11.8	12.3	12	11.8	11	11.5	10.2	12.3	11.8	11.6	12.2	12.3	11.3	11.1	9.8	11.3	11.7	11.3	11.6	11.6	10.5	11.3	11.8	12.1	11.9	11.9	11.8	10.9	9.7	9.8	10.4	11.2	11.2	10.1	10.5	10.1	11.2	10.9	10.6	10.9	10.6	10.6	10.7	8.7	8.9	9.7	10.3	8.3	9.1	8.1	7.4	8.7	8.6	7.3	6.4	6.4	6.6	7.5	7.6	7.3	8.8	5.3	6.2	6.4	7	7.3	6.3	5.4	6.7	5.7	3.8	2.5	4.1	5.2	4	5	4.2	3.3	1.8	2.6	2.8	2.8	1.7	1.3	2.2	0.3	0.7	1.6	1.8	1.3	1.3	1.6	0.4	0.5	1.7	0.3	0.5	0	0	0.2	0	0	0.3	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
]

     let foragingHoursListFoulum_2005_2016
  [0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0.4	0	0	0	0	0	0	0	0.4	0.3	0	0.4	0	0	0.4	0.6	0.2	0.4	0.6	0.8	0.8	1.3	0.9	0.5	0.5	1.1	1.1	0.7	1.3	1.4	1.2	1.1	2.4	1.7	1.1	1.5	1	1.2	3.2	3.1	3.5	3.7	3.3	4.8	3.1	2.6	3.1	3.7	3	3.7	5.2	4.5	4.4	5.4	6.8	6.7	4.9	5.2	4.9	5.1	5.9	6.5	7.6	6	5.9	5.2	5.2	5.4	5.4	6.3	6.5	6.7	6.4	7	7.8	6.4	7.2	8.5	8.1	8.3	8.7	8.5	8.7	7.6	8.8	8.5	9.8	11.2	11.4	10.6	9.4	9.5	9.3	9.9	10.4	9	8.3	9.3	9.2	8.6	10.3	10.7	10.3	7.8	9.4	10.9	10	10.6	10.9	10.1	10.8	10.6	11.4	11.6	12.1	9	10.8	10.5	12.1	12.5	12.2	12.5	12.4	12.3	12	10.9	11	11.8	11.1	9.8	11.4	12	11.8	12.1	12.3	11.6	12.4	10.5	12	11.4	11.3	12.1	11.2	11.6	11	12	10.6	11.2	12	12.2	11.8	11.4	11.3	9.8	11	10.6	10.4	10.7	11.2	10.3	10.8	9.8	10.1	8.7	9.3	9.8	10.8	10.4	9.9	10.5	10	10.2	10.2	9.6	8.6	8.8	7.3	8.1	7.8	8.4	9.6	9.5	8	8.1	7.9	7.5	8.7	8	7.9	7.1	7.5	7.6	7.4	7.3	6.4	4.9	5.3	5.8	4.6	4.3	6.1	5.2	5.8	5.8	5.6	4.5	4.3	4.6	3.4	3.1	2.2	1.7	2.2	2.2	1.8	2.4	1.5	1.7	1.1	1.5	1.3	0.9	1.4	0.6	1.6	1.1	0.7	0.6	0.7	0.2	0.1	0	0.2	0.6	0.1	0	0	0.7	0.2	0	0.4	0	0.4	0.2	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
]



     let foragingHoursListEfsaFrance_2005_2016
  [0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0.1	0	0	0	0	0	0	0.1	0.1	0	0	0	0	0	0.1	0.2	0.2	0.2	0	0.2	0	0.1	0	0	0	0	0.4	0.2	0.3	0	0	0.2	0.6	0.7	0.4	0	0.1	0.7	0.9	0.9	0.7	0.7	1.3	1.2	1.6	1.1	1	1	0.8	1.1	1	1.7	2.5	2.9	2.3	2.6	1.7	2.2	2	0.9	2.4	2.8	2.5	1.4	1.4	1.7	1.1	1.2	1.3	2.1	3	2.8	2.9	2.9	5.2	4.2	4.2	4	5	5.1	5.2	3.2	2.8	3.7	4.4	5.1	3.9	4.2	3.9	4.9	4.5	3.5	4.8	3.9	5.9	6.5	4.7	5.8	5.9	6.1	7.3	7.6	6.1	6	5.8	7.2	6.9	7.3	6.5	7.4	6.6	7.9	6.9	6.4	4.6	4.8	5.3	5.8	5.9	8.2	7.5	8.7	9	10.6	9.7	8.4	7.5	7.6	9	8.7	8.9	10	8.4	8.5	10.1	11.1	9	9.1	8.4	8.5	9.6	9.9	10.6	11.1	10.5	10.4	10.7	10.2	10.3	10.7	10.8	11.1	11.5	11.8	11.9	12.1	11.8	12.3	11.9	11.8	11.7	11.3	12.6	12.1	11.1	11.8	11.8	11.1	11.4	11.6	11.3	11.5	11.2	11.8	11.6	12.1	11.6	11.7	11.3	11.8	12.3	12.3	11.5	11.4	11.5	11.4	11.3	11.6	12	12	11.7	12	11.7	12	11.9	11.3	10.6	10.7	11.3	11.3	10.9	11	10.8	10.6	10.7	10.7	10.3	8.9	9.6	10.3	10.3	10.7	10.4	10.5	10	10	9.1	9.7	10	10.3	10.3	9.9	9.3	9.4	9.7	9.9	10.2	9	9.7	9.4	8.8	8.7	6.4	8	8	7.8	6.8	6.9	7.3	6.7	6.2	6.9	7.2	7.2	7.2	7.4	7.5	6.2	4.5	5.5	6.2	5.9	6.6	6.1	5.3	4.3	5.4	5.6	3.5	3.3	3.8	3.5	3.5	3.8	4	4.2	3.9	3.9	3.3	2.5	1.3	1.3	1.1	2.8	1.6	1.2	1.7	1.9	2.4	2.7	2.3	2.8	1.9	1.3	1.3	1	0.6	0.8	1.6	1.1	0.5	0.5	0.5	0.4	0.5	0.5	1	0.4	0.2	0	0.2	0.1	0.2	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
]

  ;######################################




  ; ROTHAMSTED WEATHER DATA 2009:
  ;TH: 15C:
  let foragingHoursListRothamsted2009 [ 0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  10.4  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  7.8  0  0  8.9  0  5.4  0  0  0  0  0  0  4.1  6  5.9  0  0  0  0  10.1  12.3  11  9.3  10.5  0  11.5  0  0  11.2  4.5  8  10.3  0  0  5.2  7.5  3.2  0  9.4  10.3  0  11.6  0  0.7  0  0  0  6.9  5.4  8.2  8.7  8.4  12.5  15  7.5  7.5  0.7  6.7  13  15  14.2  14.3  14.9  3.4  11.7  0  0  4.3  2.5  0  0.9  6.5  11.8  5.4  13  5.4  9.4  4.7  6  9.7  2.7  9  5  10.6  13.9  8  2.7  4.7  4.3  10.8  11.7  12.7  12.3  6.2  11.8  9  6.8  4.7  3.7  5.2  9.7  2.2  7.4  7.4  8.7  6.1  3.6  1.9  5.3  3.8  7.8  0.2  7.1  6.1  6.5  11.4  1.8  5.1  6.8  1.6  8.7  8.6  0.9  8.5  5.4  0  5.9  3.2  2.7  9.5  4.8  2.7  8.5  1.8  6.2  3.2  2.6  10.4  7.5  7.5  12.3  5.4  8.4  8.1  11.4  7.3  5.8  2.3  7.4  7.4  8.7  3.8  5.7  7.3  0.4  5.2  7.5  6.1  4.3  0.5  6.7  5.7  7  4.8  9.8  0.8  3.6  0  4.6  1.6  7.7  3.4  4.4  4.9  3.3  1.8  9.7  9.9  8  9.3  0.9  5.2  0.3  5.6  5.5  0.8  4.9  0.1  0.1  0  0  0  4  3.5  0  0  0  0  0  0  0  0  0  0  0  6.2  0.5  4.2  0  1.3  0.6  1.8  0  2.5  0.5  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0.8  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0 ]

  ; ROTHAMSTED WEATHER DATA 2010:
  ; TH: 15C:
    let foragingHoursListRothamsted2010 [ 0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  5.3  0  0  0  0  0  5.8  0  0  0  0  0  0  0  0  0  0  0  0  9.3  0  11.4  9.1  10.6  0  0  0  0  0  0  11.8  11.4  0  0  0  0  13.1  11.2  2.4  4.4  10.4  8.1  1.7  0  3  0  0  0  0  0  0  0  0  0  0  0  0  0  8.3  0  6.4  7  8.1  5.9  12.5  14.9  15  14.7  9  5  6.2  10.7  0  10.1  1.1  0  12.8  15.4  12.9  8.5  3.7  5.7  3.1  2.8  0.9  5  4.5  5  6.5  9  12.1  13.9  1.5  0  6.9  9.1  14.6  13  10.2  9  8.9  13.7  14  6.2  7.6  7.3  3.8  10.3  10.2  7.2  7.6  1.4  6.5  12.5  10.8  7.3  4.6  0  2.2  4.1  6.8  9.6  6.3  9.3  5.8  10.3  7.6  1.7  7  2.9  0.9  1.2  2  2  4  6  1.3  3.3  7.3  0.8  5.8  4.6  3  5.8  9.3  1.1  9.6  2.9  2.8  1.4  8  7.2  2.1  6.6  4.9  1.1  1.3  6.3  2.9  8  1.6  0  2.9  7.5  4.7  6  10.2  11.3  11.1  8.5  5.6  2.4  4  5  1.6  4.2  1  3  8.6  2.3  0  5  4.6  6.3  7.3  1.1  5.2  7.5  8.7  1.3  0  0  0  0  0.3  0.1  6.6  0  3.1  1.3  0.1  0.7  5.2  6  4.1  0  6.4  8.6  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  4.7  0  0  0  0  0  0  3.3  2.2  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0 ]

  ; ROTHAMSTED WEATHER DATA 2011:
  ; TH: 15degC
  let foragingHoursListRothamsted2011 [ 0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  5.4  1.7  0  0  0  0  0  0  0  0  0  0  0  0  3.2  0  4.9  0  0  3.9  0  0  0  0  0  3.1  1.1  10.1  10.5  10.2  3  7.5  6.5  4.6  0.2  4.8  3.3  3.9  6.1  6.2  0  11.5  10.2  12.5  12  11.1  8.5  10.2  0  0.2  5  3.6  6.6  6.7  11.3  8.5  7.8  12.6  12.7  10.1  12.8  4.6  10.9  6.8  5.3  12.9  12.2  13  13.2  13.6  6.6  11.8  3.2  6.8  10.8  11  2.1  8  7.2  8.7  5.1  3.6  2.6  1.3  9.8  8.6  12.3  9.4  4.5  11.9  13  3.8  4.1  2.9  4.2  1.5  10.8  9.7  9.8  13.5  10.7  2.6  0.9  9.1  8.5  4.5  6.6  9.4  2  6.6  11.8  3.6  5.2  1.3  6.7  9.8  7.1  7.1  5.2  7  7.3  6.7  12  8.9  1.6  11.1  8.2  8.5  8.3  4.8  4.6  8.7  6.7  4.4  3.3  5.6  4.2  8.3  1  2.1  8.1  9.5  3.2  3.1  1.1  3.6  1.4  1.3  8  6.6  12.7  9.2  1.7  2.3  6.9  2.2  11.3  8.7  7.5  6.9  8.7  0.3  3.5  1.8  4.9  7.5  10.1  7.1  2.5  2.8  2  6.4  7.2  3.5  4.1  0.1  9.6  5.4  6.6  8.8  0  4.2  3.2  1.2  5.6  4.4  4.6  0  1  6.2  8.4  5  2  5.8  0  1.2  1.5  1.5  2.3  5.2  6.9  7.5  8.6  7  4.9  5.9  6  6.6  0.2  2.6  5.3  8.4  6.4  6.9  2.7  6.3  9.5  9.7  9.8  9.2  9.7  6.3  4.1  1.3  7  3.3  0.8  2.3  4.7  1.6  2.3  0.1  8.3  9.3  4.5  2.3  8.2  6  0  3.3  9.1  6.4  4.8  2.8  5.8  0  8.3  4.1  0  0  4.1  3.5  0  1.4  0.5  0  0  0  1.1  1.2  0  0.7  5.9  0  0  0  2.2  3  0  0  0  0  0  2  0  2.8  5.6  0  0.3  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0.4  0  0  0  0  0 ]

  if Weather = "Rothamsted (2009-2011)"
  [
    let inputYear 2011 + round ((ceiling (ticks / 365)) mod 3)
    if inputYear > 2011
    [
      while [inputYear > 2011] [ set inputYear inputYear - 3]
    ] ; after 3 years, 1st dataset is used again etc.

   ;if day = 1 [ type "Rothamsted weather data, year: " print inputYear ]
    if inputYear = 2009 [ set foragingHoursList foragingHoursListRothamsted2009 ]
    if inputYear = 2010 [ set foragingHoursList foragingHoursListRothamsted2010 ]
    if inputYear = 2011 [ set foragingHoursList foragingHoursListRothamsted2011 ]
  ]

  if Weather = "Rothamsted (2009)" [ set foragingHoursList foragingHoursListRothamsted2009 ]
  if Weather = "Rothamsted (2010)" [ set foragingHoursList foragingHoursListRothamsted2010 ]
  if Weather = "Rothamsted (2011)" [ set foragingHoursList foragingHoursListRothamsted2011 ]



  ;ELRtModule###################
  ; New ForagingHours get used if the "Weather" Chooser is set to the new Locations. Temperatures for these Locations are added here.
  if Weather = "Osnabrueck (2008 - 2020)"
  [ set foragingHoursList foragingHoursListOsnabrueck
    set dailyTemp [-0.5	1.22	-0.13	-1.04	0.62	0.04	-0.18	0.36	1.31	1.55	1.14	1.98	1.95	3.09	4.11	2.37	2.31	3.59	4.51	4.6	2.98	1.37	2.15	2.79	1.86	1.49	0.13	0.43	0.66	-0.65	-1.43	-0.98	-2.01	-0.99	0.25	1.1	2.62	1.82	1.11	-0.02	-0.59	0.51	-0.25	-0.91	0.85	0.35	0.13	1.36	1.22	1.46	1.41	1.38	2.48	3.64	4.28	5.22	5.65	5.59	4.83	6.07	6.11	4.95	3.92	3.26	2.72	2.74	2.58	3.31	3.5	3.64	5	6	6.55	6.84	6.16	6.18	6.69	5.91	5.86	5.38	5.55	5.53	6.02	6.44	7	5.83	5.83	6.03	7.13	8.45	8.12	7.71	8.58	9.34	8.69	7.67	8.64	9.13	7.37	7.49	8.48	9.76	9.39	8.82	8.23	8.55	8.19	8.05	9.19	9.88	10.86	11.01	10.24	10.79	11.93	13.03	12.56	12.91	12.89	14.4	13.55	12.49	11.58	11.58	10.57	10.69	11.16	12.24	13.41	14.62	14.6	14.63	13.6	12.37	12.05	12.17	11.29	11.07	11.59	12.7	14.16	15.37	15.21	16.42	17.01	15.82	15.45	14.28	15.48	16.31	16.92	15.19	16.13	15.82	15.21	14.75	15.32	16.01	15.4	16.29	17.17	16.8	14.78	13.55	13.75	14.36	14.05	14.43	15.48	15.37	14.49	14.38	15.44	16.63	16.14	16.49	16.6	17.48	18.62	20.59	20.78	19.36	19.89	21.1	19.92	18.45	19.21	19.18	18.1	18.19	18.37	18.7	18.75	18.56	17.37	17.92	17.62	18.3	16.62	16.22	17.42	17.05	17.39	16.38	16.21	16.19	17.62	18.85	20.04	20.27	18.5	17.32	17.81	18.66	19.16	18.58	17.96	18.53	19.81	19.48	16.74	16.51	17.14	17.33	17.14	16.98	17.46	18.07	18.15	17.79	18.17	19.31	21.13	20.3	18.69	18.21	18.12	17.85	18.25	16.89	15.87	15.24	14.96	16.41	15.71	15.35	15.79	15.54	15.26	15.46	14.91	15.69	16.61	17.98	18.27	16.49	13.81	13.27	13.14	13.19	13.34	12.94	13.2	13.52	13.42	13.7	13.41	12.95	13.15	12.96	12.43	12.98	12.83	12.55	12.68	12.1	13.46	13.3	12.54	13.34	13.14	11.43	9.76	10.94	10.78	9.25	9.44	8.22	8.19	7.95	7.89	8.22	9.79	9.36	8.99	8.83	8.94	9.21	9.65	9.61	8.3	7.29	7.25	8.21	7.46	8.1	9.48	9.49	10.03	9.41	8.12	7.04	7	7.04	7.38	7.51	7.06	7.21	7.97	6.76	5.03	4.02	5.98	6.8	7.01	5.63	4.35	4.86	4.9	4.6	5.2	4.95	3.48	3.14	2.53	1.35	1.5	2.19	2.27	3.03	2.69	1.9	2.2	1.57	2.61	2.63	1.51	0.41	-0.12	0.42	1.22	-0.03	-0.94	-0.86	-0.11	0.01	2.52	2.81	3.11	2.89	3.12	2.52	1.71	-0.86	0.01	0
]
  ]

  if Weather = "Poitou-Charentes (2008-2012)"
  [set foragingHoursList foragingHoursListPoitou-Charentes
  set dailyTemp [5.41733333  4.45208333  3.27058333  3.34008333  2.69525     3.92716667   4.09041667  3.83133333  4.09683333  3.26058333  2.61583333  3.55541667   3.4045      5.89891667  5.293       4.737       5.27233333  6.71708333   6.79816667  6.73475     5.78966667  5.30266667  5.48283333  5.85625   5.19966667  4.8335      3.316       1.73441667  2.24425     2.87158333   1.4985      2.47708333  0.79141667  1.08383333  2.2675      4.65775   5.5735      3.97158333  2.65666667  1.70091667  2.75308333  2.91733333   1.83225     1.12791667  2.476       2.39833333  2.092       3.64033333   5.3065      5.93875     5.96475     4.906       5.46416667  6.267   7.40458333  8.75708333  8.49141667  7.3825      7.30633333  7.88525   7.53333333  7.62516667  7.27291667  6.12575     4.84766667  4.16725   4.59916667  5.94175     5.60733333  4.75641667  6.33891667  7.768   8.67266667  9.35941667 10.33816667  9.93416667  9.94383333  9.63475   8.78916667  7.79541667  7.2805      7.45983333  8.61033333 10.10725  10.02075    10.09633333  9.719      10.06375    10.37108333  9.821   9.98258333 10.299      11.14633333 10.65458333  9.39341667  9.40025  11.10308333 10.75841667 10.45383333 11.44741667 11.05133333 10.16741667   9.18716667  9.49025     9.92066667  9.54033333  9.64891667  9.83691667  10.67766667 11.91475    12.36991667 12.522      12.75416667 12.134  12.49433333 12.3595     13.07033333 13.22958333 12.02616667 12.05883333  12.28566667 12.32833333 13.18433333 13.9175     13.95491667 13.17616667  14.10866667 15.00083333 14.27775    14.709      16.53008333 17.25125  15.4905     14.45133333 13.08733333 12.35291667 12.27725    12.88375  14.63808333 14.73525    15.586      15.97358333 15.91116667 17.6145  18.07233333 18.68375    16.50083333 15.13033333 15.753      17.13183333  18.06275    17.05691667 16.81458333 17.82416667 19.21458333 18.05566667  17.70825    16.28141667 15.0775     15.42208333 15.8315     16.02958333  16.05425    15.99325    16.82616667 16.3775     16.65425    15.87583333  16.93541667 16.56083333 15.83175    16.09516667 17.6795     17.99558333  17.54383333 18.36333333 19.43225    20.848      21.8495     22.30833333  21.49758333 20.84558333 21.74375    19.97125    19.33541667 20.73041667  19.61375    17.74508333 17.40091667 19.03291667 19.30341667 19.38116667  19.65283333 19.08133333 17.89758333 17.4255     18.18316667 18.46  16.94941667 17.06925    18.7505     18.43941667 18.48816667 18.29666667  18.30458333 18.51691667 18.65108333 20.39108333 21.257      20.56666667  19.53116667 19.31641667 20.41125    19.98291667 19.59758333 19.63383333  19.3835     20.33016667 20.54516667 18.94783333 18.64816667 18.90983333  19.9055     19.7525     19.99041667 19.42983333 18.67008333 19.514  20.52391667 20.37458333 21.41125    22.85975    23.30241667 22.78208333  22.48608333 20.87525    19.35266667 19.18683333 19.47125    18.72125  18.47041667 18.08858333 18.90716667 19.2675     18.29483333 18.56066667  17.79316667 17.45533333 18.03983333 18.46958333 17.91416667 18.2825  20.2575     20.48516667 18.63591667 17.6205     16.21858333 15.69866667  15.37958333 15.67641667 15.59433333 15.79058333 15.19033333 14.81066667  15.88525    16.87133333 16.55775    16.99075    15.802      14.95541667  15.31066667 15.89075    16.09016667 15.61983333 15.624      15.52491667  15.35483333 14.54491667 15.14458333 16.93633333 16.7195     15.99866667  16.36433333 16.321      15.90616667 15.69583333 14.17116667 12.08525  11.54866667 11.4665     11.25058333 11.42258333 11.363      12.73983333  10.11816667 11.34666667 11.71383333 12.41025    11.19333333 11.03075  11.632      10.05433333 10.1465     10.31416667 10.8725     11.17991667  10.88291667 12.43041667 11.90291667 10.75441667 10.383       9.01033333   8.36675     9.574       9.80625    10.43308333 11.48533333 10.96158333  10.0025     10.22733333 10.59966667  9.35983333  9.39625    10.05325  10.35491667 10.44158333  9.23075     7.73525     7.71408333  6.88291667   6.34425     6.16541667  5.741       5.08483333  4.74683333  4.17341667   4.29283333  5.298       6.71266667  7.13625     7.12575     6.6895   6.69241667  5.97525     4.8075      4.28091667  3.44408333  3.07616667   2.92233333  3.343       3.90325     3.09533333  2.93291667  3.90283333   6.46833333  6.73016667  6.81025     5.91491667  5.25275     4.47358333   2.9835      3.38425     5.07641667  6.23116667  6.94083333]

  ]

  if Weather = "Stockholm (2008-2020)"
  [ set foragingHoursList foragingHoursListStockholm
  set dailyTemp [-4	-3.25	-4.01	-5.31	-5.97	-5.7	-4.22	-3.4	-3.92	-2.94	-0.83	-1.08	-0.03	-1.12	-2.91	-2.2	-0.55	0.37	0.48	-0.64	-1.5	-2.29	-1.96	-1.89	-1.15	-2.43	-4.45	-3.83	-1.68	-2.59	-4.14	-3.56	-1.89	-3.52	-2.57	-2.8	-2.62	-2.03	-1.89	-2.1	-3.31	-3.69	-4.06	-3.81	-5.17	-5.36	-5.26	-4.08	-3.13	-4.24	-4.47	-5.29	-3.88	-4.37	-2.78	-3.2	-0.92	0.31	-0.97	-0.51	-1.18	-1.25	-0.62	-1.34	-1.65	-2.36	-2.13	0.22	0.77	1.3	1.53	1.13	1.4	0.99	-0.72	-0.36	0.57	1.34	1.22	0.35	0.94	1.18	1.31	0.25	0.41	0.28	1.48	2.37	2.84	2.61	3.51	3.18	3.99	4.56	4.31	4.4	5.21	4.48	3.39	3.9	4.47	5.76	4.87	4.99	5.12	5.66	5.49	6.42	5.16	4.88	5.68	4.87	5.55	6.94	8.7	9.85	9.85	9.85	10.58	10.58	9.29	8.6	8.03	8.95	7.92	7.37	7.9	9.19	9.52	10.61	11.92	12.45	11.13	9.93	9.29	9.83	9.38	10.25	10.46	11.62	12.13	13.05	12.9	12.48	12.75	12.69	13.8	13.07	12.65	13.17	13.97	14.51	15.21	13.28	13.09	12.98	12.37	14.37	14.1	15.28	15.06	14.79	14.57	13.4	13.95	13.14	12.76	13.52	13.39	13.87	13.69	14	14.2	15.14	15.28	15.48	15.73	15.84	16.99	18.09	18.29	17.96	18.39	19.71	18.8	18.57	17.32	16.14	17.18	18.25	18.1	19.2	18.57	18.52	18.01	17.85	18.38	18.21	18.12	17.51	17.58	18.05	17.21	18.79	18.1	17.82	18.69	19.14	19.35	19.03	18.98	18.6	18.49	18.28	17.3	17.72	17.58	17.6	18.26	17.45	17.52	16.94	16.07	16.35	16.75	17.21	17.27	17.15	16.95	16.45	16.3	16.13	16.92	16.73	16.4	15.7	15.31	15.53	15.68	16.35	15.23	13.61	13.8	14.06	14.26	14.13	14.18	14.56	14.91	13.96	13.3	13.48	13.46	12.91	13.99	14.27	12.47	12.38	11.4	11.38	11.12	11.41	11.53	12.02	11.42	11.59	11.86	11	11.54	11.65	11.79	11.27	9.85	9.69	8.89	9.33	9.83	10.23	9.13	9.04	8.76	7.85	7.3	7.08	6.86	6.15	5.65	5.72	5.06	5.09	4.89	6.17	6.84	6.79	5.92	6.88	5.92	5.88	5.54	5.21	5.09	5.14	3.87	4.84	5.48	4.8	5.81	6.11	4.78	3.71	3.94	3.43	3.4	3.8	3.21	3.36	3.79	2.83	3.5	5.57	3.12	2.69	3.3	3.08	3.57	3.33	2.76	2.86	2.66	2.63	1.24	3.24	2.02	1.37	0.93	-1.89	-2	-2.54	-3.13	-0.7	-0.19	-1.43	-2.7	-1.11	-2.91	-1.12	-1.51	-1.64	-1.99	-2.75	-0.27	0.02	-1.2	-1.73	-2.34	-5.27	-5.94	-3.25	-3.43	-1.59	-1.06	-2.27	-2.16	-4.87	-4.68	0]

  ]

  if Weather = "San Marino (2008-2020)"
  [set foragingHoursList foragingHoursListSanMarino
  set dailyTemp [4.1	3.45	3.55	2.52	1.6	2.61	3.58	4.27	5.16	4.22	4.39	4.03	3.14	4.27	4.1	4.63	3.76	3.37	3.49	4.36	4.95	4.07	3.35	2.55	2.2	1.72	2.37	2.87	2.26	2.34	2.95	1.88	1.65	1.23	2.42	2.98	3.91	3.6	3.09	2.24	2.01	2.54	1.41	0.91	0.92	0.65	1.19	1.81	3.47	3.72	4.08	3.77	3.33	3.63	4.01	4.48	4.6	5.62	5.33	6.51	7.57	7.32	7.18	6.82	4.4	3.57	3.73	3.29	3.22	4.21	4.56	5.49	6.8	7.09	7.68	8.65	9.31	8.83	8.16	6.33	6.41	7.58	7.7	8.02	8.65	9.31	10.09	9.74	10.68	11.15	10.87	11.24	9.95	9.89	10.12	9.45	10.65	12.7	12.39	11.78	11.33	10.95	11.22	9.49	9.43	9.05	9.63	9.63	10.28	10.92	11.55	11.87	12.54	12.21	11.37	11.79	12.22	12.25	12.93	12.75	13.22	14.29	13.85	13.62	13.24	12.35	12.47	13.42	14.15	14.12	15.38	15.87	16.75	16.97	15.25	13.11	14.03	14.28	14.78	14.7	15.12	15.66	16.7	17.15	18.56	19.94	19.75	18.51	17.26	16.34	16.89	17.2	17.26	17.66	17.92	18.5	18.01	18.29	18.42	18.51	19.35	19.72	19.72	19.33	19.01	18.66	18.99	20.14	20.23	20.48	20.78	19.76	19.75	20.99	21.18	20.88	21.12	21.86	21.73	21.81	22.67	22.77	23.11	22.74	23.47	23.51	22.48	23.13	23.49	22.96	22.73	23.23	23.64	24.39	25.19	24.41	24.56	23.94	24.26	21.9	21.77	22.62	23.18	22.76	22.36	21.19	20.69	20.75	20.95	22.4	22.8	22.55	22.67	22.81	23.82	23.67	23.17	23.2	23.08	23.85	24.06	22.13	21.97	21.8	22.67	22.73	22.69	22.69	21.65	22.24	22.64	24.01	24.61	24.23	24.7	24.65	24.26	24.27	24.48	23.54	21.94	21.32	20.55	20.99	21.19	21.11	21.41	21.77	20.98	19.9	20.4	19.88	19.6	19.43	20.4	20.38	19.33	17.32	17.11	18	17.9	18.36	16.16	15.39	15.3	15.61	15.76	16	16.5	16.08	16.29	15.9	15.29	16.06	16.56	16.11	15.99	15.33	16.12	16.43	15.93	15.42	13.92	13.77	14.29	14.35	13.65	12.51	11.7	11.7	11.48	11.04	11.68	11.45	11.26	11.91	11.83	12.36	12.84	11.47	11.52	11.82	11.32	9.73	10.34	10.93	11.78	11.61	11.98	12.95	11.92	10.69	9.27	9.01	9.27	9.45	10.17	9.91	9.91	10.03	9.13	8.13	7.92	7.62	8.29	9.56	8.15	7.15	7.05	5.6	6.12	5.94	6.8	7.72	7.96	7.05	6.44	5.48	4.83	6.83	6.08	6.33	7.03	4.92	4.47	4.6	4.57	3.52	3.25	3.62	3.83	2.4	0.88	0.24	-0.16	2.03	4.01	5.77	6.46	6.77	4.3	3.23	2.91	3.79	4	0
    ]
  ]

  if Weather = "France (2010)"
  [set foragingHoursList foragingHoursListFrance2010
    set dailyTemp [4.06	1.2	2.43	1.42	-1.5	-1.22	-0.95	-2.16	-3.13	-2.54	-2.37	-0.35	5.7	5.34	4.08	6.23	7.26	3.52	5.69	7.92	3.73	4.71	5.12	5.91	2.99	0.96	-1.05	1.73	4.23	1.03	-1.88	0.38	2.92	4.42	5.79	7.73	8.23	5.68	3.6	1.25	-0.36	-2.16	-1.49	-1.81	-1.61	-1.39	1.8	5.79	5.9	3.12	4.08	5.52	8.59	9.95	9.19	10.23	8.54	8.88	9.33	6.14	8.95	8.36	7.49	4.05	3.41	1.18	1.69	0.53	-0.31	0.54	1.29	3.55	5.05	6.18	6.77	10	11.79	13.39	14.21	10.51	8.96	10.66	14.28	12.44	10.54	10.38	11.28	12.61	8.89	6.7	6.41	7.83	8.48	8.21	7.25	11.8	10.37	9.65	11.84	13.14	10.94	8.66	8.68	9.86	11.08	11.62	13.24	14	13.48	13.25	14.88	15.06	13.79	14.65	14	13.17	15.38	18	17.11	14.41	13.14	12.23	9.95	8.67	8.81	10.03	10.85	11.85	12.3	14.18	11.36	9.12	9.71	9.83	10.6	11.08	12.16	13.54	15.37	14.78	17.37	19.15	20.73	22.09	20.54	16.47	15.66	14.64	14.28	16.74	16.2	15.96	16.58	18.74	20.8	22.46	18.02	17.25	16.38	17.39	18.65	18.03	18.1	18.17	14.92	14.82	13.82	15.69	16.37	14.76	13.04	13.54	16.64	18.05	20.48	22.03	23.49	24.14	22.92	22.82	24.18	25.32	25.06	22.7	22.87	20.45	20.71	22	25.92	26.37	23.97	22.94	21.6	20.72	19.03	19.74	19.72	18.27	19.75	22.51	22.82	19.35	18.62	17.75	18.89	18.85	20.62	22.24	22.79	20.2	20.59	21.99	19.7	19.85	20.15	18.77	18.28	18.75	20.86	20.35	21.03	19.87	18.82	18.86	19.07	17.55	16.48	18.35	18.37	18.01	20.98	23.63	24.8	24.93	22.19	19.25	21.11	24.59	20.64	18.63	17.4	16.32	17.1	19.31	20.98	20.61	20.04	21.76	21.81	17.61	16.09	16.6	16.72	19.54	18.5	16.66	17.7	17.73	15.74	14.95	15.08	13.76	15.11	19.65	20.89	20.2	16.42	14.13	11.53	12.69	13.87	14.81	14.51	15.49	19.09	20.83	16.92	16.32	17.89	19.22	20.57	20.49	18.37	17.06	16.94	13.13	10.29	10.62	11.3	8.58	9.08	11.44	9.77	7.44	8.66	9.91	9.03	7.31	6.3	7.15	10.34	13.8	12.75	11.8	11.68	11.45	14.71	15.49	14.96	13.53	9.14	7.81	9.33	7.58	8.99	14.71	14.3	11.61	9.03	6.48	5.26	7.53	8.51	8.23	7.99	6.33	5.4	4.01	3.94	0.63	3.26	2.58	1.85	0.71	-1.24	-0.27	-1.36	0.87	4.34	10.73	11.22	9.6	1.58	0.29	1.77	2.32	0.84	-0.72	-2.35	1.33	1.48	1.68	4.35	8.45	6.66	6.74	3.02	1.35	-0.14	-1.82	1.15	3.8	6.06	7.88	7.91	0]
  ]

  if Weather = "Idanha_a_Nova (2019-2020)"
  [set foragingHoursList foragingHoursListIdanha_a_Nova_2019_2020
    set dailyTemp [7.3	6.4	7	6.4	6	5.8	6.3	6.4	8.4	7.5	6.2	5.7	5.4	6.8	9	9	9.2	7.7	8.1	7.3	6.6	6.8	8.7	10.2	9.9	7.8	8.2	9.8	10.1	9.5	12	10.9	9.5	8.2	8.9	10.2	10.2	9.5	8.7	10.5	10.8	9.9	10.3	11.1	10.7	10.7	11.2	11.3	10	9.9	9.9	11.2	11.9	12.5	12.6	11.3	11.1	10.7	11.3	11.7	12.6	11	11.9	12.5	11.2	9.2	10	10.7	12.3	14.1	14.6	13.9	13.6	14.6	13.4	10.3	11.8	14.1	13.4	11.9	11.3	12.5	13.3	14.3	14.4	13.9	12.1	12.3	13.2	11.5	10	10.6	10.9	10.8	10.5	11	11.6	13.4	12.8	12.9	13.9	14.2	14.4	14.6	14.1	13.5	12.4	13	13.6	15.6	13.8	13.6	11.9	13.3	13.6	13.6	14.3	15.4	15.9	16	16.9	18.1	18.1	19.6	18.8	16.3	16	18.1	16.9	16	16.3	18.1	18.1	18.5	18.5	16.4	15.2	15.6	17.5	19	20.1	21.1	20.6	21.7	22.8	24.2	24.3	24.4	24.5	25.3	25.8	25.6	24.3	22.8	19.2	17.6	17.3	17	18.1	18	19.3	19.2	17.5	16.1	16.1	17.8	19.7	19.8	18.5	19.8	20.1	21.7	23.5	25.1	24.6	24.5	23.7	21.8	24.5	26.2	26.3	25.7	24.9	23.5	23.4	25.3	26.5	26.6	26	25.7	27.5	29.9	30.1	26.7	28	28.5	28	28.5	30.1	30.3	28.2	28.9	30.1	28.8	28.8	26.8	25.6	24.6	26.7	25.1	26.5	27.7	27.3	26.5	26.6	25.8	27	27.9	27.6	27.1	26.2	24.8	23.2	23.1	23.6	25.2	25.6	24.3	24	23.4	23.6	24.4	25.2	26	26.3	27.6	27.5	25.9	26.3	26.1	24.8	24	24.2	24.5	25.6	26.9	27.3	26.8	26.2	26.3	25.8	23.1	22.1	23.8	25.4	25.5	25.6	23.4	23.1	23.4	22.1	20.3	19.8	19	18.2	18.4	18	17.9	17.7	17.8	19.3	19.7	21.1	19.8	17.4	17.1	16.7	17	17.8	20.7	21.4	20.7	20.7	21.5	19.6	17.7	15.4	13.7	14.1	15.1	15.8	15	14.7	13.7	13.3	12.4	13.1	13.5	14.7	14	13.8	15.7	15.7	16.1	16.7	15.9	15.9	14.7	11.7	12.3	12.8	11.6	11.3	11.6	12.1	11.4	13.8	11.2	10.6	11.4	12	10.1	9.9	11.9	11.7	11.7	10.5	10.3	12	11.7	11.3	11.9	12.7	11.9	11.3	10.6	8.8	8.3	8.6	7.7	7.6	10.3	9.8	7.5	10.9	12.2	12.4	12.1	11.7	10.4	9.2	8.7	10.5	11.5	11.3	11.4	10	10.2	10	8.8	7.6	7.2	8.7	7.5	6	0]
  ]


  if Weather = "Foulum (2019-2020)"
  [set foragingHoursList foragingHoursListFoulum_2019_2020
    set dailyTemp [5.8	4.4	1.2	1.3	2.5	0.3	-0.2	2	1.4	2.9	2.3	3.9	2.4	1.4	0.4	0.8	-0.1	-0.7	0.2	-0.5	-0.3	0.3	0.2	1.2	2.9	2.6	2.8	2.5	2.8	2.1	1.5	1.5	1.5	0.6	0	1	2.4	2.1	1.9	2.5	1.8	1.5	1.1	0.6	1.1	0.9	1.2	2.8	3.5	3.6	3.9	3.9	3.8	2.9	2.1	1.8	1.7	2.6	2.2	1	0.6	1.5	2.6	2.9	3.3	3.1	3	2.6	3.5	2.8	2.8	2.7	2.7	4.3	4.6	4.7	3.6	3	2.8	4.8	4.4	5.1	4.5	4	5.1	5.1	5.4	5.7	5.1	4.4	4.9	4.4	5.5	5.8	7.6	7	7.3	7.9	7.4	6.9	6.8	5.5	5.9	6.9	7.2	6.4	6.5	6.9	8.1	9.2	9.4	9.1	8.2	7.9	7.8	7.1	7	6.8	7.4	7.7	8.3	8	8.6	8.7	8.9	9.8	10.6	11.3	10.9	11.9	12	11	11.1	11.7	11.7	11.8	11.7	11.7	13	13.6	12.8	13.4	13.2	13.3	12.8	13.1	13.7	14	13.3	13.3	15.1	14.9	15.3	16.8	16.7	16.3	16.5	16.4	14.9	15.4	15	14.4	15	14.7	13.8	14.2	14.8	14.3	14.6	15.6	15.4	14.3	13.4	13.8	14.5	15.6	16.3	16.1	15.5	16.1	15.8	16.7	17.2	16	15.5	15.7	14.5	14.8	15.1	14.6	14.7	16	16.5	16.6	15.2	15.2	15.6	16.8	16.7	16.2	16.2	17.7	18	17.2	18.1	18.7	19.1	19	18.9	17.9	17.7	17.9	17.2	16.5	17.2	17.9	16.9	17	16.7	17.1	17.3	16.9	16.2	15.1	15.1	15.7	15.8	17	17.2	16.6	16.6	16.3	16	15.9	17.1	17.4	16.6	17.5	17.3	16.4	17.2	16.7	15.6	16	14.8	14	14.5	14.4	14.7	14.9	14.7	14.3	14.5	15.1	14.7	14.7	15	14.5	14.2	14	13.2	13.2	13.2	12.8	13.5	12.8	12.6	12.5	13.2	13.7	13.5	12.4	12.8	11.7	11	10.6	10.2	10.4	10.2	9	8.3	9.7	9.7	9.4	10.8	10.6	11.8	12.1	11.7	11.5	11.5	10.1	9.9	10.2	10.6	9.4	9.3	9.2	9	8.7	8.2	7.5	6.5	6.2	8.1	8.8	7.5	6.4	7.6	7.6	6.6	5.6	5.7	6.6	6.2	6.1	5.4	4.2	5.6	7.5	6.8	6	5.8	4.4	3.7	3.9	5.7	6.3	4.2	3.8	5	4	3.1	3.4	3.8	4.5	4.1	5.3	5.5	6.6	6.4	7.4	7	5.8	3.8	3.6	2.1	2.5	1.9	1.5	2.8	3.4	4.9	5.7	5.4	5.8	4.8	5.7	5.3	5.9	5.3	3.8	3.5	4.7	4.6	0	0
]
  ]


    if Weather = "Foulum (2015-2020)"
  [set foragingHoursList foragingHoursListFoulum_2015_2020
    set dailyTemp [5.2	3.4	2.9	4.4	3.8	4.8	5.9	5.8	3.7	3	5.1	5.7	5	4.1	6.2	6.3	3.8	1.9	1.6	2.4	3.8	1.9	2.2	1.6	0.8	2.6	3.9	2.2	1.6	2.8	4	4	2.2	1.7	1.9	3.3	4.6	4.5	4.9	6.2	4.7	3.1	3.2	5.1	4.8	6.3	7.6	6.6	5.8	5	5.4	6.4	4.5	3.7	4.6	4.5	3.6	3.3	4.1	2.9	3.5	5.5	4.9	3.4	3.9	4.6	3.8	5.7	4.2	3.5	4.5	4.8	3.9	2.8	5.8	6.2	5.8	5.4	6.1	6.3	4.1	4.2	3.6	4.1	5.1	5.8	6.3	6.3	5	3.5	2.4	5.8	7	6.4	7.6	9.4	10	7.5	6.1	4.3	3.6	3.8	5.4	4.3	4.5	6.5	7.8	7.9	8	9.3	10.4	10.5	11.8	12.1	12	11.6	9.2	9.1	9.7	9.7	8.5	8.1	6.7	6.9	7.1	6.7	7	7.9	10.5	10.1	8.2	7.5	7	7.5	8.5	10.5	9.3	11.1	12.2	13	13.4	12.1	13.1	11.3	10.9	12.1	11.8	10.3	10.4	11.6	14.3	14.9	16.5	16.6	15.2	16.4	15	12.7	13.5	12.7	12.3	14.9	16.7	16.8	17.4	17.2	17.1	17.8	19.3	18.9	17.5	15	15.5	15.8	17.1	20.4	19.6	18.7	19	17	17.1	14.9	14	13.2	12.7	14.4	14.4	13.3	13.2	13.7	13.8	13.2	15.1	14.8	15.4	15.5	15.6	15.5	16.3	17.6	17.1	15.6	14.6	16.6	16.9	19.5	19.6	19.1	18.4	18.7	17.1	16.3	16.9	18.3	17	15.2	15.3	16.9	18.3	18.7	20	19.3	19.2	18.9	17.4	17.2	18.1	18	19.4	19	17.4	17.1	16.5	18.4	17.8	16.8	16.9	17.5	18.9	18.3	15.9	15.8	16.9	14.7	13.8	14.8	14.3	13.8	12.6	12.6	13	14.7	14.9	13	14	13.7	14.4	15.6	14	12	10.9	10.8	13.1	13	12.7	13.3	14.1	14.2	13.4	14	14.8	13.9	12.1	11.7	11.8	11.8	11.8	10.1	8.9	8.2	10.5	10.3	10	10.2	9.8	9.5	10	10.6	9.7	9	9.4	9.1	8.8	8.8	11.2	11.6	11.4	10.9	11.5	8.8	7.6	6.7	5.3	7.3	7.4	9.5	11.1	8.3	6.3	6.9	7.4	7.1	5.9	5.5	6.1	5.4	5.9	6.2	6.8	9.3	7.9	9	9.1	5.9	5.1	7.8	7.3	6.6	7.8	6.7	7.1	4.7	2	1.3	1.3	2.3	4	4.1	4.9	6.4	4.9	7	4.4	3.3	4.3	2.7	3.1	3.2	4.7	6.4	6.2	6	6.3	5.8	7.1	5.2	5.8	4.2	2.6	0.3	1.5	1.4	3.6	4.9	3.8	0
]
  ]

      if Weather = "Foulum (2005-2016)"
  [set foragingHoursList foragingHoursListFoulum_2005_2016
    set dailyTemp [1.5	0.4	0.2	2.6	1.9	1.6	3.5	2.9	3.8	5.6	4.8	5.3	4.3	3.4	3	2.3	3	2.5	2.3	3.3	2	-0.9	-0.6	0.2	0.7	1.2	-0.2	1.7	1.2	3.4	2.9	2.1	1.9	1.8	2.2	2	1.8	2.3	1.9	1	1.4	0.8	0.8	0.9	-0.3	-0.2	0.4	1.2	2	1.6	1.8	0.7	0.8	1.8	1.9	1.7	1.8	0.9	2	1.6	1	-0.1	0	-0.1	1	2	1.9	2.3	2.1	3	2.5	2	3	3.3	4.6	4.4	3.4	2.3	1.3	1.2	2.6	3.3	3.2	2.7	2.8	3.9	4.1	4.8	4.9	5.5	6.1	6.3	6.4	6.6	6.3	5.2	5.4	5.3	5.7	6.2	7.5	7.2	7.9	8.1	9.2	9.3	7.6	7.5	6.9	6.1	6.5	8.1	8.3	9	10.2	11.1	10.6	10.7	10.5	9.9	11.5	11.5	11.6	10.8	10.5	10.7	10.6	10.6	10.4	11.3	11.6	11.1	11	10.4	9.4	9.7	9.8	10.1	10.8	11.5	11.7	12.3	11.1	11.7	12.5	12.5	11.5	13.1	12.8	12.8	13.2	14.1	13.9	14.8	14	13.6	13.5	14.2	15	15.8	15.5	16.3	14.5	13.7	12.9	13.7	13.4	13.6	14.4	16.2	16	15.4	14.2	15.5	15.3	15.5	15.3	15.1	14.4	15.7	16.2	16.9	18	18.7	19.6	18.8	18.5	17.7	16.8	16.8	16.4	15.9	16.2	15.6	16.4	16.8	17.5	17.1	17.3	16.3	16.7	16.6	16.6	16.6	16.3	16.7	17.7	17.8	17.6	17.9	18.2	17	17.3	17.2	16.5	16.6	16.8	17.5	17.2	17.7	17.5	17.2	16.5	15.8	15.3	15.6	15.4	15.7	15.4	15.7	16.1	17.1	18.2	17.3	16.5	15.8	16	15.5	14.8	15	14.7	13.7	14.2	15.8	16.2	14.5	13.5	13.7	15.3	15.5	15.2	15	14.5	14.5	14.3	14.1	14.2	13	13.2	12	12.2	12.3	13.4	13.4	13.8	14.5	14.3	13.8	13.1	13	13	12.4	11.6	11.1	10.4	10.3	10.6	10.1	10.5	11.3	11	10.9	10.6	11.2	11.4	9.8	9.6	8.6	8.8	8.3	7.5	7.7	9.3	9.9	8.9	8	7.1	8.5	10.1	10.4	9.3	8.6	7.8	8	6.5	4.8	6.9	8	7.4	7.8	8.4	8.5	7.2	6.1	6.4	6.1	5.2	6	7.5	7.6	5.9	4.7	4.8	6	5.6	5.5	5.5	4.3	4.5	4.4	4.2	5.1	5.2	4.4	4.6	3.4	2.8	3.6	5.8	5.4	5.1	4.2	3.9	3.6	4.7	3.4	2.8	4.2	3.8	2	0.5	-0.5	2	2	1.9	2.6	3.7	3.7	2.4	2.3	2	2.6	1.5	1.2	0.2	0
]
  ]





    if Weather = "EfsaFrance (2005-2016)"
  [set foragingHoursList foragingHoursListEfsaFrance_2005_2016
    set dailyTemp [2.9	2	0.4	0.6	0.3	1.7	1.8	0.4	2.1	2	2.3	2	2.2	1.9	1.8	1.9	2.7	3.7	4.1	4.4	3.2	2.2	0.7	-0.5	-1.6	-2.5	-2.1	0	0.5	-0.2	0.4	0.7	1.2	1.2	1	0.6	1.7	1.3	0.9	1.2	1.4	1.9	2.3	1.3	0.9	0.6	1.4	0.8	1	2.4	1.2	1.7	1.8	1.8	1.7	2.3	2.5	2.3	2.1	2.6	3.6	4.9	4.2	1	0.2	0.3	2.8	3.8	2.6	2.4	3	4	5.3	7.2	7.2	6.2	6.4	5.5	4.5	3.8	3.2	4	4.6	4.6	5.8	5.8	5.6	5.5	5.9	5.6	6.8	7.3	7.3	6.4	7.3	7.3	7.2	6.1	5.8	6.6	7.1	6.5	7.4	9.1	8	7.6	8	7.7	7.4	8.1	8.8	9.6	10.5	11.1	11	11	11.1	10.8	9.7	9.3	9.4	9.3	11	11.8	11.6	11.2	11.3	11.3	10.6	11	11.3	11.5	11.7	11.4	11.2	10.6	12.1	12.7	12.4	13.2	13.4	14	13.7	14.3	14.9	15.1	13.9	13.5	13.4	13.1	11.6	11.6	12.2	14.2	14.2	14.4	13.8	13.5	13.4	14.1	14.6	15.4	15.3	15.9	15.9	16	15.7	16.2	17.7	18.9	18.7	17.4	17	17.5	17.7	17.4	17.8	18.2	18.4	18.4	18.9	18.6	19.8	19.4	17.3	16.6	17.2	16.5	16.3	14.8	15.6	17.9	18.2	18.7	17.9	18.4	20	20.7	18.1	17.4	18.3	18.8	18	17.8	19.1	19.5	20.1	20.2	19.4	19.7	19.9	18.9	18.4	17.9	16.9	17.3	18.7	19.4	18.9	17.2	16.5	16.1	17	16.8	16.8	16.5	16.4	16.5	16.8	16.9	17.2	15.9	15.3	16	16.1	15.9	16.5	17.2	17.7	18.4	17.5	16.2	16.6	17.1	17.8	18.3	17.5	15.6	15	15.6	15.6	15.9	16.2	15.9	15.2	14.6	14.1	13.5	12.7	12	11.6	11.9	12.7	12.8	13.6	14	13.6	12.3	11.6	11.6	11.9	12.2	13	13.3	12.3	11.1	9.8	10.2	12	13	12.1	12.1	11.5	11.6	11.3	11.1	11.1	10.8	9.2	9.7	8.6	8.2	8.1	9.3	9.4	8.9	8.9	9.9	10.7	10.5	10.4	9.8	8.7	8	8.2	8	7.4	7.2	6.6	5.3	5.6	6.1	6	5.7	6.1	6.4	6	6.2	5.4	5.5	4.8	4.3	4.5	4.8	5.3	5.5	4.6	4.1	4.3	3.3	2.4	2.5	2.3	2.8	2.5	3	3	4.1	3.9	4.1	3.8	2.9	2.6	2.2	1.4	0.2	-0.5	0	0.5	0.2	-0.8	-1.7	-1.3	-0.7	-0.9	0.7	1.1	0.8	1.6	0.5	-0.2	0	-0.3	1.1	3.1	3.1
]
  ]


  ;###################################



  if Weather = "Berlin (2000-2006)"
  [
    let inputYear 2006 + round ((ceiling (ticks / 365)) mod 7)
    if inputYear > 2006 [ while [inputYear > 2006] [ set inputYear inputYear - 7] ]
      ; after 7 years, 1st dataset is used again etc.
    if inputYear = 2000 [ set foragingHoursList foragingHoursListBerlin2000 ]
    if inputYear = 2001 [ set foragingHoursList foragingHoursListBerlin2001 ]
    if inputYear = 2002 [ set foragingHoursList foragingHoursListBerlin2002 ]
    if inputYear = 2003 [ set foragingHoursList foragingHoursListBerlin2003 ]
    if inputYear = 2004 [ set foragingHoursList foragingHoursListBerlin2004 ]
    if inputYear = 2005 [ set foragingHoursList foragingHoursListBerlin2005 ]
    if inputYear = 2006 [ set foragingHoursList foragingHoursListBerlin2006 ]
  ]

  if Weather = "Berlin (2000)" [ set foragingHoursList foragingHoursListBerlin2000 ]

  if Weather != "HoPoMo_Season"
    and Weather != "HoPoMo_Season_Random"
    and Weather != "Constant"
    and Weather != "Weather File"    ;  ***NEW FOR BEEHAVE_BEEMAPP2015***
  [
    set foragingPeriod_s (item (day - 1) foragingHoursList) * 3600
  ] ; [s] hours sunshine on that day, in seconds

  if Weather = "HoPoMo_Season" or Weather = "HoPoMo_Season_Random"
  [
    set foragingPeriod_s 12 * 3600 * (1 - Season_HoPoMoREP day [ 385 25 36 155 60 ])
    if foragingPeriod_s < 3600 [ set foragingPeriod_s 0 ]
  ]   ; bell shape curve of foraging period, 12 * 3600 = 12 hrs max.

  if Weather = "HoPoMo_Season_Random"
  [
    if random-float 1 < 0.15 [ set foragingPeriod_s random-float (4 * 3600)]
  ]

  if Weather = "Constant" [ set foragingPeriod_s 8 * 3600 ]


  ;  begin ***NEW FOR BEEHAVE_BEEMAPP2015***
  if Weather = "Weather File"
  [
    let year_no ceiling (ticks / 365) - 1

    set foragingPeriod_s item (day - 1) ( item ( year_no mod length(WeatherDataList)) WeatherDataList) * 3600
  ]
  ; end ;  ***NEW FOR BEEHAVE_BEEMAPP2015***



  ask signs with [ shape = "sun"]
  [
    ifelse foragingPeriod_s > 0
      [ show-turtle set label precision (foragingPeriod_s / 3600) 1 ]
      [ hide-turtle set label " " ]
  ]   ; "sun" sign is shown, whenever there is an opportunity to forage

  ask signs with [ shape = "cloud"]
  [
    ifelse foragingPeriod_s < (4 * 3600)
      [ show-turtle ]
      [ hide-turtle ]
  ]   ; "cloud" sign is shown, whenever there is less than 4 hrs of foraging possible

  if foragingPeriod_s = -1
  [
    set BugAlarm true
    show "BugAlarm in Foraging_PeriodREP! Weather not defined!"
  ]
  if foragingPeriod_s < 0 [ set foragingPeriod_s 0 ]  ;  ***NEW FOR BEEHAVE_BEEMAPP2015***
  report foragingPeriod_s
end

; ********************************************************************************************************************************************************************************

to-report Foraging_ProbabilityREP
  ; calculates the probability that a forager start spontaneously to forage,
  ; called by Start_IBM_Proc once a day
  let foragingProbability 0.01  ; 0.01
    ; default foraging probability per "round" (round: ca. 13 min)
    ; 0.01 comparable to Dornhaus et al 2006: 0.00033/36s
  let highForProb 0.05 ; 0.02
  let emergencyProb 0.2
    ; foraging prob. is increased if pollen is needed:
  if (PollenStore_g / IdealPollenStore_g) < 0.2
  [
    set foragingProbability highForProb
  ]

  if HoneyEnergyStore / DecentHoneyEnergyStore < 0.5
  [
    set foragingProbability highForProb
  ]
   ; foraging prob. is increased if pollen is needed:
  if HoneyEnergyStore / DecentHoneyEnergyStore < 0.2
  [
    set foragingProbability emergencyProb
  ]

  if (PollenStore_g / IdealPollenStore_g) > 0.5 and
     HoneyEnergyStore / DecentHoneyEnergyStore > 1
     [
       set foragingProbability 0
     ] ; no foraging if plenty of honey and pollen is present

  let i 1
   while [ i <= N_GENERIC_PLOTS ]
   [
     let plotname (word "Generic plot " i)
       ; e.g. "Generic plot 1"
     set-current-plot plotname
     if (i = 1 and GenericPlot1 = "foraging probability")
     or (i = 2 and GenericPlot2 = "foraging probability")
     or (i = 3 and GenericPlot3 = "foraging probability")
     or (i = 4 and GenericPlot4 = "foraging probability")
     or (i = 5 and GenericPlot5 = "foraging probability")
     or (i = 6 and GenericPlot6 = "foraging probability")
     or (i = 7 and GenericPlot7 = "foraging probability")
     or (i = 8 and GenericPlot8 = "foraging probability")
     [
       create-temporary-plot-pen "ForProb"
       set-plot-pen-mode 0 ; 0: lines
       plotxy ticks  (foragingProbability)
      ]
       set i i + 1
   ]


 ask Signs with [shape = "exclamation"]
    [ ; if the foraging prob. is set to 0, an exclamation mark is shown
      ; on the interface (beside the weather sign)
      ifelse foragingProbability > 0
        [ hide-turtle ]
        [ show-turtle ]
    ]

 report foragingProbability
end

; ********************************************************************************************************************************************************************************

to Foraging_start-stopProc
  ; decision for pollen or nectar foraging; active foragers may quit foraging;
  ; foragers might spontaneously start or continue foraging (either exploiting known
  ; patch or search new patch)

  let FORAGE_AUTOCORR 0 ;
  ; autocorrelation of chosen forage (i.e. probability to not-reconsider chosen forage
  ; type: 1: always collect the same forage type (i.e. nectar!) if 0: no effect)

  ask foragerSquadrons with [ activity != "recForaging" ]
   ; this does not apply to bees, that followed a dance in the last foraging round
   ; and hence have already made their decision for nectar or pollen foraging
  [
    if random-float 1 > FORAGE_AUTOCORR
    ; if smaller, the bee sticks to her current food type
    [
      ifelse random-float 1 < ProbPollenCollection
        [
          set pollenForager true     ; IF -> pollen forager
          set activityList lput "PF" activityList
        ]
        [
          set pollenForager false    ; ELSE -> nectar forager
          set shape "bee_mb_1" ; ] ] ]
          set activityList lput "NF" activityList
        ]
    ]
  ]

  ask foragerSquadrons with
     [ activity != "resting"
       and activity != "recForaging"
       and activity != "lazy" ]
     ; i.e. ask actively foraging bees
  [
    if random-float 1 < FORAGING_STOP_PROB
    ; active foragers, that weren't recruited in the foraging round before, may abandon foraging
      [
        set activity "resting"
        set activityList lput "AfR" activityList
       ]
  ]

  ; recording of the activities & forage type in the activityList
  ask foragerSquadrons with
     [ activity = "searching" ]
     [
       if pollenForager = true
       [
         set activityList lput "Sp" activityList
       ]
       if pollenForager = false
       [
         set activityList lput "Sn" activityList
       ]
                                                        ]
  ask foragerSquadrons with [ activity = "resting" ]
  [
    set activityList lput "R" activityList
  ]

  ask foragerSquadrons with [ activity = "lazy" ]
  [
    set activityList lput "L" activityList
  ]

  ask foragerSquadrons with
    [ knownNectarPatch >= 0
      and pollenForager = false
    ]
    ; ask experienced NECTAR foragers if they abandon their nectar patch
  [
    if random-float 1 < 1 / [ EEF ] of flowerPatch knownNectarPatch
      and random-float 1 < (HoneyEnergyStore / DecentHoneyEnergyStore)
        ; chance to abandon depends on 1/EEF and is reduced if colony needs nectar
    [
      set knownNectarPatch -1   ; forager doesn't know a nectar patch anymore
      ifelse (activity != "resting" and activity != "lazy")
        [
          set activity "searching"
          set activityList lput "AnSn" activityList
        ] ; active foragers that abandoned their patch have to search a new one
        [
          set activityList lput "An" activityList
        ]  ; resting foragers that abandoned their patch still rest
    ]
  ]

  ask foragerSquadrons with
    [ knownPollenPatch >= 0
      and pollenForager = true ]
    ; ask experienced POLLEN foragers if they abandon their pollen patch
  [
    if random-float 1 < 1 - (1 -
       ABANDON_POLLEN_PATCH_PROB_PER_S) ^ [ tripDurationPollen ] of flowerPatch knownPollenPatch
    [
      set knownPollenPatch -1   ; forager doesn't know a pollen patch anymore
      ifelse ( activity != "resting"
        and activity != "lazy")
        [
          set activity "searching"
          set activityList lput "ApSp" activityList
        ] ; active foragers that abandoned their patch have to search a new one
        [
          set activityList lput "Ap" activityList
        ]  ; resting foragers that abandoned their patch still rest
    ]
  ]

  ask foragerSquadrons with [ activity = "resting" ]
  [
    if random-float 1 < ForagingSpontaneousProb
      ;  resting foragers may start foraging spontaneously..
    [
      if pollenForager = false
        ; ask (resting) nectar foragers to become active
      [
        ifelse knownNectarPatch >= 0
          [
            set activity "expForaging"
            set activityList lput "Xn" activityList
          ] ; IF they already know a NECTAR patch, they become experienced nectar foragers
          [
            set activity "searching"
            set activityList lput "Sn" activityList
          ] ; ELSE: they become scouts and search a new one
      ]

      if pollenForager = true   ; ask (resting) pollen foragers to become active
      [
        ifelse knownPollenPatch >= 0
          [
            set activity "expForaging"
            set activityList lput "Xp1" activityList
          ] ; IF they already know a POLLEN patch, they become experienced pollen foragers
          [
            set activity "searching"
            set activityList lput "Sp" activityList
          ] ; ELSE: they become scouts and search a new one
      ]
    ] ; "if random-float 1 < ForagingSpontaneousProb"
  ]
  ask foragerSquadrons  ; if bees are "exhausted" they cease foraging on that day:
  [
    if km_today >= MAX_km_PER_DAY
    [
      set activity "resting"
    ]
  ]

end

; ********************************************************************************************************************************************************************************

to Foraging_searchingProc
  ; called by: ForagingRoundProc, determines if a patch (and which one) is
  ; found by a searching forager

  let patchCounter 0
  let probSum 0  ; necessary to decide, which flower patch is found
  let chosenPatch -1  ; -1: i.e. no patch chosen yet
  let cumulative_NON-detectionProb 1
  let nowAvailablePatchesList [ ]

  ask flowerPatches with
     [ quantityMyl >= CROPVOLUME * SQUADRON_SIZE
       or amountPollen_g >= POLLENLOAD * SQUADRON_SIZE ]
     ; only patches with enough nectar OR pollen left are considered
  [
    set probSum probSum + detectionProbability ; sums up the detection probabilities of patches, to decide later, which patch was actually found
    set cumulative_NON-detectionProb
      cumulative_NON-detectionProb * (1 - detectionProbability)
        ; Probability to find any patch is: 1 - Probability, to find no patch at all
    set nowAvailablePatchesList fput who nowAvailablePatchesList
  ]

  set TotalFPdetectionProb (1 - cumulative_NON-detectionProb)
    ; Probability to find ANY (not empty!) flower patch during one search trip

  ask foragerSquadrons with [ activity = "searching" ]
  [
    set SearchingFlightsToday SearchingFlightsToday + SQUADRON_SIZE
      ; counts the numer of search flights on current day
    ifelse random-float 1 < TotalFPdetectionProb
      ; if any (not empty!!) flower patch found by the forager:
      [
        let p random-float probSum   ; to decide which flower patch is found
        set patchCounter 0
        set chosenPatch -1

        foreach nowAvailablePatchesList
        [
          x -> ask flowerPatch x    ;  "?" item of the list
          [  ; the patch is randomly chosen, according to its detection probability:
            set patchCounter patchCounter + detectionProbability
            if (patchCounter >= p) and (chosenPatch = -1) [ set chosenPatch who ]
          ]
        ]

        ifelse pollenForager = false
          [ set knownNectarPatch chosenPatch ]
            ; IF nectar forager: detected patch is memorised as nectar patch
          [ set knownPollenPatch chosenPatch ]
            ; ELSE pollen forager: detected patch is memorised as pollen patch

        if (knownNectarPatch < 0 and knownPollenPatch < 0)
        [
          user-message "BUG: negative flower patches!"
          set BugAlarm true
        ]

        ifelse ( pollenForager = false
          and [ quantityMyl ] of flowerPatch chosenPatch >= (CROPVOLUME * SQUADRON_SIZE))
            ; collection of NECTAR - only if nectar is available at the chosen patch!
            ; this is necessary as the patch may offer only pollen
          [
            set activity "bringingNectar"  ; then the scout becomes a successful nectar forager
            set activityList lput "fN" activityList

            ask flowerPatch knownNectarPatch
            [
              set quantityMyl (quantityMyl - (CROPVOLUME * SQUADRON_SIZE))
                ; quantity of nectar in patch is reduced

              set nectarVisitsToday nectarVisitsToday + SQUADRON_SIZE
              set summedVisitors summedVisitors + SQUADRON_SIZE
            ] ; and numbers of visitors increased
          ]
          [ ; ELSE: found a patch but it doesn't offer nectar: feN: "found empty nectar patch"
            if pollenForager = false
            [
              set knownNectarPatch -1
              set activityList lput "feN" activityList
            ]
          ]

        ifelse ( pollenForager = true
          and [ amountPollen_g ] of flowerPatch chosenPatch >= (POLLENLOAD * SQUADRON_SIZE))
            ; collection of POLLEN - only if pollen is available at the chosen patch!
          [
            set activity "bringingPollen"  ; then the scout becomes a successful pollen forager
            set activityList lput "fP" activityList

            ask flowerPatch knownPollenPatch
            [
              set amountPollen_g (amountPollen_g - (POLLENLOAD * SQUADRON_SIZE))
                ; quantity of nectar in patch is reduced
              set pollenVisitsToday pollenVisitsToday + SQUADRON_SIZE
              set summedVisitors summedVisitors + SQUADRON_SIZE
            ] ; and numbers of visitors increased
          ]
          [
            if pollenForager = true
            [
              set knownPollenPatch -1
              set activityList lput "feP" activityList
            ]
          ] ; ELSE: found patch does not offer nectar: feP: "found empty pollen patch"
      ] ; "ifelse random-float 1 < TotalFPdetectionProb"

      ; ELSE: no patch is found; uS = unsuccessful searching
      [
        set activityList lput "uS" activityList
      ]
  ] ; "ask foragerSquadrons with [ activity = "searching" ]"

  ask foragerSquadrons with ; ask recruited NECTAR foragers:
     [ activity = "recForaging" ; forager is recruited
       and knownNectarPatch >= 0 ; it knows a patch where it is recruited to
       and pollenForager = false ] ; and it is looking for nectar
  [ ; the flights of recruited bees are counted:
    set RecruitedFlightsToday RecruitedFlightsToday + SQUADRON_SIZE
    ; IF(1) recruited Forager finds the nectar patch:
    ifelse random-float 1 < FIND_DANCED_PATCH_PROB
      [ ; and IF (2) nectar is still there:
        ifelse [ quantityMyl ] of flowerPatch knownNectarPatch >= (CROPVOLUME * SQUADRON_SIZE)
          [  ; .. then the recruit becomes a successful nectar forager
            set activity "bringingNectar"
            ; which is recorded in its activityList:
            set activityList lput "frN" activityList
            ask flowerPatch knownNectarPatch
            [  ; the nectar in the patch is then reduced:
              set quantityMyl (quantityMyl - (CROPVOLUME * SQUADRON_SIZE))
              ; the visit is counted:
              set nectarVisitsToday nectarVisitsToday + SQUADRON_SIZE
              set summedVisitors summedVisitors + SQUADRON_SIZE
            ]
          ]
          [  ; ELSE(2): if patch has not enough nectar, recruit becomes a scout again
            set activity "searching"
            set activityList lput "eSn" activityList
            ; and the patch is forgotten:
            set knownNectarPatch -1
          ]
      ]
      [ ; ELSE(1): if the recruits does not find the patch, it starts searching
        set activity "searching"
        set activityList lput "mSn" activityList
        ; and forgets "known" nectar patch
        set knownNectarPatch -1
      ]
  ]

  ; also recruited POLLEN foragers are searching a patch:
  ask foragerSquadrons with
     [ activity = "recForaging"
       and knownPollenPatch >= 0
       and pollenForager = true ]
  [
    set RecruitedFlightsToday RecruitedFlightsToday + SQUADRON_SIZE
    ; they find their patch with the probability of FIND_DANCED_PATCH_PROB
    ifelse random-float 1 < FIND_DANCED_PATCH_PROB
      ; IF(1) recruited Forager finds the pollen patch...
      [
        ifelse [ amountPollen_g ] of flowerPatch knownPollenPatch >= (POLLENLOAD * SQUADRON_SIZE)
          ; ..and pollen is still there..
          [ set activity "bringingPollen"
            ; .. then the recruit becomes a successful pollen forager
            set activityList lput "frP" activityList
            ask flowerPatch knownPollenPatch
            [
              set amountPollen_g (amountPollen_g - (POLLENLOAD * SQUADRON_SIZE))
                ; ..pollen in the patch is reduced
              set pollenVisitsToday pollenVisitsToday + SQUADRON_SIZE
              set summedVisitors summedVisitors + SQUADRON_SIZE
            ]  ; ..and numbers of visitors increased
          ]
          [ ; ELSE(2): if patch has not enough pollen, recruit becomes a scout again
            set activity "searching"
            set activityList lput "eSp" activityList
            set knownPollenPatch -1
          ]
      ]
      [ ; ELSE(1): if she does not find the patch, she starts searching
        ; (but can't find another patch in this foraging round)
        set activity "searching"
        set activityList lput "mSp" activityList
        ; it forgets its "known" pollen patch:
        set knownPollenPatch -1
      ]
  ] ; "ask foragerSquadrons with [ activity = "recForaging"]"

end;

; ********************************************************************************************************************************************************************************

to Foraging_collectNectarPollenProc
  ; successful foragers gather nectar/pollen (if still available) and decrease
  ; nectar/pollen in flower patch

   ; ask experienced NECTAR foragers:
  ask foragerSquadrons with
     [ activity = "expForaging"
       and knownNectarPatch >= 0
       and pollenForager = false ]
  [ ; does patch still have enough nectar?:
    ifelse [ quantityMyl ] of flowerPatch knownNectarPatch >= (CROPVOLUME * SQUADRON_SIZE)
      [ ; the forager will then be bringing nectar:
        set NectarFlightsToday NectarFlightsToday + SQUADRON_SIZE
        set activity "bringingNectar"
        ; this is recorded in its activityList:
        set activityList lput "N" activityList

        ask flowerPatch knownNectarPatch
        [ ; available nectar in the patch is reduced:
          set quantityMyl (quantityMyl - ( CROPVOLUME * SQUADRON_SIZE))
          ; the visits are counted:
          set nectarVisitsToday nectarVisitsToday + SQUADRON_SIZE
          ; and numbers of visitors increased:
          set summedVisitors summedVisitors + SQUADRON_SIZE
        ]
      ]
      [ ; ELSE: not enough nectar available at the patch
        ; the forager will then become a scout:
        set activity "searching"
        set activityList lput "eSn" activityList
        ; the bee forgets this empty nectar patch
        set knownNectarPatch -1
      ]
  ]

  ; ask experienced POLLEN foragers:
  ask foragerSquadrons with
     [ activity = "expForaging"
       and knownPollenPatch >= 0
       and pollenForager = true ]
  [ ; does patch still have enough pollen?
    ifelse [ amountPollen_g ] of flowerPatch knownPollenPatch >= (POLLENLOAD * SQUADRON_SIZE)
     [ ; IF patch has enough pollen:
       set PollenFlightsToday PollenFlightsToday + SQUADRON_SIZE
       ; the forager will then be bringing pollen:
       set activity "bringingPollen"
       set activityList lput "P" activityList

       ask flowerPatch knownPollenPatch
       [  ; available pollen in the patch is reduced:
         set amountPollen_g (amountPollen_g - (POLLENLOAD * SQUADRON_SIZE))
         set pollenVisitsToday pollenVisitsToday + SQUADRON_SIZE
          ; and numbers of visitors increased
         set summedVisitors summedVisitors + SQUADRON_SIZE ]
     ]
     [ ; ELSE: not enough pollen available at the patch
       ; the forager will then become a scout:
       set activity "searching"
       set activityList lput "eSp" activityList
       set knownPollenPatch -1
     ]
  ]

  ; experienced pollen foragers, who know a nectar patch but no pollen patch
  ; or experienced nectar foragers, who know a pollen patch but no nectar patch:
  ; this can happen if e.g. an exp. nectar foragers switches to pollen foraging
  ; these bees switch to "resting" and DO NOT LEAVE THE HIVE!
  ; hence, their mileometer or km_today doesn't change
  ; and they are not considered in the Foraging_MortalityProc
  ask foragerSquadrons with
     [ ( activity = "expForaging"    ; experienced (but got its experience as pollen forager!)
         and pollenForager = false   ; has now switched to nectar foraging
         and knownNectarPatch = -1   ; but doesn't know a nectar patch
         )
         or
       ( activity = "expForaging"    ; experienced (but got its experience as nectar forager!)
         and pollenForager = true    ; has now switched to pollen foraging
         and knownPollenPatch = -1   ; but doesn't know a pollen patch
         )]
  [
    set activity "resting"       ; switch to resting - i.e. they haven't left the hive in this foraging round
    set activityList lput "Rx" activityList
  ]

  ; ask successful NECTAR foragers:
  ask foragerSquadrons with [ activity = "bringingNectar" ]
  [ ; the energy content of their cropload is calculated, which depends on the nectar concentration:
    set cropEnergyLoad ([ nectarConcFlowerPatch ] of
       flowerPatch knownNectarPatch * CROPVOLUME * ENERGY_SUCROSE)  ; [kJ]

    ; the distance they have travelled today is increased..
    set km_today km_today + ([ flightCostsNectar ] of
       flowerPatch knownNectarPatch / (FLIGHTCOSTS_PER_m * 1000))

    ; and also their total travelled distance:
    set mileometer mileometer + ([ flightCostsNectar ] of
      flowerPatch knownNectarPatch / (FLIGHTCOSTS_PER_m * 1000))  ;

    ifelse readInfile = true
      [ ; if patch data are read in, then the color of the bee
        ; reflects the ID of the flower patch:
        ; set color knownNectarPatch
        let memoColor 0
        ask flowerPatch knownNectarPatch [ set memoColor color ]
        set color memoColor
      ]
      [ ; ELSE: if there are 2 patches, defined via GUI,
        ; then the color of the bee reflects the patch it is foraging at:
        if knownNectarPatch = -1 [ set color grey ]
        if knownNectarPatch = 0 [ set color red ]
        if knownNectarPatch > 0 [ set color green ]
      ]
  ]

  ; and similar for successful POLLEN foragers:
  ask foragerSquadrons with [ activity = "bringingPollen" ]
  [ ; the pollen load is the same for all patches!
    set collectedPollen POLLENLOAD ; [g]
    set shape "bee_mb_pollen"

    ; the distance they have travelled today is increased..
    set km_today km_today + ([ flightCostsPollen ] of
      flowerPatch knownPollenPatch / (FLIGHTCOSTS_PER_m * 1000))

    ; and also their total travelled distance:
    set mileometer mileometer + ([ flightCostsPollen ] of
      flowerPatch knownPollenPatch / (FLIGHTCOSTS_PER_m * 1000))  ;

    ifelse readInfile = true
      [ ; the color of the bee is set according to its flower patch:
        ; set color knownPollenPatch
        let memoColor 0
        ask flowerPatch knownPollenPatch [ set memoColor color ]
        set color memoColor
      ]
      [
        if knownPollenPatch = -1 [ set color grey ]
        if knownPollenPatch = 0 [ set color red ]
        if knownPollenPatch > 0 [ set color green ]
      ]
  ]
end;

; ********************************************************************************************************************************************************************************

to Foraging_flightCosts_flightTimeProc
  ; sums up travelled distance for unsuccessful scouts and honey consumption due to foraging, trip duration
  ; consumption is subtracted from honey store, not from the crop, as it is empty for unsuccessful scouts
  let energyConsumption 0

  ; flight distance for successful foragers is calculated in Foraging_collectNectarPollenProc!
  ; flight distance for unsuccessful scout is calculated here:
  ask foragerSquadrons with [ activity = "searching" ]
  [ ; the search length [m] of the foraging trip is added to today's km and the lifetime km (mileometer):
    set km_today km_today + ( SEARCH_LENGTH_M / 1000 )
    set mileometer mileometer + ( SEARCH_LENGTH_M / 1000 )  ; mileometer: [km]

    ; honey store in the colony is reduced to reflect the energy consumed during the trip:
    set HoneyEnergyStore HoneyEnergyStore - ( SEARCH_LENGTH_M * FLIGHTCOSTS_PER_m * SQUADRON_SIZE )
    set ColonyTripDurationSum ColonyTripDurationSum + (SEARCH_LENGTH_M / FLIGHT_VELOCITY )  ; sums up time of a search trip

    ; sums up # foragers doing a trip & unsuccessful foraging trips:
    set ColonyTripForagersSum ColonyTripForagersSum + 1
    set EmptyFlightsToday EmptyFlightsToday + SQUADRON_SIZE
  ]

  ; energy consumption for successful foragers:
  ask foragerSquadrons with
    [ activity = "bringingNectar"
      or activity = "bringingPollen" ]
  [
    if pollenForager = false ; ask NECTAR foragers
    [
      ask flowerPatch knownNectarPatch
      [ ; flightCostsNectar is a flowerPatch variable, reflecting distance and handling time
        set energyConsumption flightCostsNectar
         ; energy is used, according to the flight costs of the patch
        set ColonyTripDurationSum ColonyTripDurationSum + tripDuration + TIME_UNLOADING
      ]  ; adds duration of this nectar trip to the sum of all trips performed during this foraging round so far
    ]
    if pollenForager = true ; ask POLLEN foragers
      [
        ask flowerPatch knownPollenPatch
        [
          set energyConsumption flightCostsPollen
            ; energy is used, according to the flight costs of the patch
          set ColonyTripDurationSum ColonyTripDurationSum + tripDurationPollen + TIME_UNLOADING_POLLEN
        ] ; adds duration of this pollen trip to the sum of all trips performed during this foraging round so far
      ]

      ; colony's honey store is decreased:
    set HoneyEnergyStore HoneyEnergyStore - ( energyConsumption * SQUADRON_SIZE)
      ; sums up # foragers doing a trip:
    set ColonyTripForagersSum ColonyTripForagersSum + 1
  ]

end


; ********************************************************************************************************************************************************************************

to Foraging_mortalityProc
  ; mortality of foragers during their foraging trip, counts # dying foragers and their lifespan
  let emptyTripDuration SEARCH_LENGTH_M / FLIGHT_VELOCITY  ; [s] = 10 min

  ask foragerSquadrons with [ activity = "searching" ]
  [ ; mortality risk of unsuccessful scouts depends on their time spent for searching
    ; mortality risk calculated as probability to NOT survive every single second of the foraging trip:
    if random-float 1 < 1 - ((1 - MORTALITY_FOR_PER_SEC) ^ emptyTripDuration)
    [ ; deaths are counted and the lifespans summed up to later calculate a mean lifespan:
      set DeathsAdultWorkers_t DeathsAdultWorkers_t + SQUADRON_SIZE
      set DeathsForagingToday DeathsForagingToday + SQUADRON_SIZE
      set SumLifeSpanAdultWorkers_t SumLifeSpanAdultWorkers_t + (age * SQUADRON_SIZE)
      die
    ]
  ]
  ; this is similar for NECTAR foragers, but here with a patch specific mortalityRisk
  ask foragerSquadrons with [ activity = "bringingNectar" ]
  [
    if random-float 1 < ([ mortalityRisk ] of flowerPatch knownNectarPatch)
    [
      set DeathsAdultWorkers_t DeathsAdultWorkers_t + SQUADRON_SIZE
      set DeathsForagingToday DeathsForagingToday + SQUADRON_SIZE
      set SumLifeSpanAdultWorkers_t SumLifeSpanAdultWorkers_t + (age * SQUADRON_SIZE)
      die
    ]
  ]
  ; and again for POLLEN foragers, with a patch specific mortalityRiskPollen:
  ask foragerSquadrons with [ activity = "bringingPollen" ]
  [
    if random-float 1 < ([ mortalityRiskPollen ] of flowerPatch knownPollenPatch)
    [
      set DeathsAdultWorkers_t DeathsAdultWorkers_t + SQUADRON_SIZE
      set DeathsForagingToday DeathsForagingToday + SQUADRON_SIZE
      set SumLifeSpanAdultWorkers_t SumLifeSpanAdultWorkers_t + (age * SQUADRON_SIZE)
      die
    ]
  ]
end;

; ********************************************************************************************************************************************************************************

to Foraging_dancingProc
  ; foragers dance for a good patch and recruit 2 pollen foragers or up to 5 nectar foragers
  ; to the advertised patch

  let EEFdancedPatch -999   ; correct number set later
    ; energetic efficiency of the flower patch danced for (set to nonsense number as control)

  let tripDurationDancedPatch -999  ; correct number set later
    ; trip duration to a pollen patch

  let patchNumberDanced -999  ; correct number set later
    ; ...and the number of that flower patch

  ask foragerSquadrons with
    [ activity = "bringingNectar"
      or activity = "bringingPollen" ]
      ; successful pollen or nectar foragers are addressed
  [
    if activity = "bringingNectar" ; NECTAR FORAGERS
    [
      set EEFdancedPatch [ EEF ] of flowerPatch knownNectarPatch
      set patchNumberDanced knownNectarPatch
        ; successful foragers dance; they communicate EEF and ID of flowerPatch

      let danceFollowersNectarNow
        random-poisson [ danceFollowersNectar ] of flowerPatch knownNectarPatch

      if [ danceFollowersNectarNow ] of flowerPatch knownNectarPatch >= 1
      [
        set activityList lput "Dn" activityList
      ]

      if ( count foragerSquadrons with
          [ activity = "resting" ]) >=
              [ danceFollowersNectarNow ] of flowerPatch knownNectarPatch
              ; only if enough resting foragers are present, there will be dances
      [
        ask n-of
              ([ danceFollowersNectarNow ] of flowerPatch knownNectarPatch)
                 foragerSquadrons with [ activity = "resting" ]
                    ; depending on EEF of the patch, (0-5) resting foragers will follow the dance
        [
          ifelse knownNectarPatch = -1
            [    ; unexperienced foragers will always accept the advertised patch:
              set knownNectarPatch patchNumberDanced
              set activity "recForaging"
              set pollenForager false
                ; and become a nectar forager
              set activityList lput "rFnNF" activityList
            ]
            [
              ifelse EEFdancedPatch > [ EEF ] of flowerPatch knownNectarPatch
                ; if(2) ; experienced foragers: if the advertised patch has higher EEF
                ; than the known flowerPatch,
                [
                  set knownNectarPatch patchNumberDanced
                    ; the dance follower will switch to new patch

                  set pollenForager false
                    ; and become a nectar forager

                  set activity "recForaging"
                  set activityList lput "rFnxNF" activityList
                ]
                [ ; ELSE 2 (i.e. experienced foragers, knowing a BETTER patch) are activated
                  set activity "expForaging"
                  set activityList lput "Xnr" activityList
                ]  ; else (2) they become active foragers to their own, known patch
            ]
        ]
      ]
    ]

    if activity = "bringingPollen"                                                               ; POLLEN FORAGERS
    [
      set tripDurationDancedPatch [ tripDurationPollen ] of flowerPatch knownPollenPatch
      set patchNumberDanced knownPollenPatch
      if POLLEN_DANCE_FOLLOWERS >= 1 ; pollen foragers dance ALWAYS (as POLLEN_DANCE_FOLLOWERS = 2)
      [
        set activityList lput "Dp" activityList
      ]

      if ( count foragerSquadrons with [ activity = "resting" ])
        >= POLLEN_DANCE_FOLLOWERS
          ; only if enough resting foragers are present, there will be dances
      [
        ask n-of POLLEN_DANCE_FOLLOWERS foragerSquadrons
          with [ activity = "resting" ]
          ; # pollen dance followers: constant and independent of patch distance!!
        [
          ifelse knownPollenPatch = -1
            [  ; unexperienced forager will always accept the advertised patch:
              set knownPollenPatch patchNumberDanced
              set activity "recForaging"

              ; and become a pollen forager:
              set pollenForager true
              set activityList lput "rFpPF" activityList
            ]
            [ ; if(2) ; experienced foragers: if the advertised patch offers a
              ;  shorter trip duration than the known pollen patch..
              ifelse tripDurationDancedPatch < [ tripDurationPollen ]
                of flowerPatch knownPollenPatch
                [ ; .. then the dance follower will switch to new patch
                  set knownPollenPatch patchNumberDanced
                  ; and become a pollen forager:
                  set pollenForager true

                  set activity "recForaging"
                  set activityList lput "rFpxPF" activityList
                ]
                [ ; else (2) they become active foragers to their own, known patch:
                  set activity "expForaging"
                  set activityList lput "Xpr" activityList
                ]
            ]
        ]
      ]
    ]
  ]

end;

; ********************************************************************************************************************************************************************************

to Foraging_unloadingProc
  ; successful foragers increase honey or pollen store of the colony and become experienced foragers

  ask foragerSquadrons with [ activity = "bringingNectar" ]
  [
    set HoneyEnergyStore HoneyEnergyStore + (cropEnergyLoad * SQUADRON_SIZE)

    if HoneyEnergyStore > MAX_HONEY_ENERGY_STORE
    [
      set HoneyEnergyStore MAX_HONEY_ENERGY_STORE
    ]  ; honey store can't be larger than maximum

    set activityList lput "bN" activityList
    set cropEnergyLoad 0
    set activity "expForaging"
    set activityList lput "Xn" activityList

    ;PollenModule Addition ##########################################################
    set NectarForagersToday NectarForagersToday + 1
    ;##################################################################################
  ]

  ask foragerSquadrons with [ activity = "bringingPollen" ]
  [
    ;set PollenStore_g PollenStore_g + (collectedPollen * SQUADRON_SIZE)


    ;################################################PollenModule##########################################################################################
    set PollenStoreList_g replace-item 0 PollenStoreList_g (item 0 PollenStoreList_g + collectedPollen * SQUADRON_SIZE)
    set PollenForagersToday PollenForagersToday + 1
    ;###########################################################################################################################################################


    set collectedPollen 0
    set activityList lput "bP" activityList
    set activity "expForaging"
    set activityList lput "Xp" activityList
  ]

  ask foragerSquadrons with [ activity = "searching" ]
  [
    set activityList lput "E" activityList
  ]  ; unsuccessful souts return empty

end;

; ********************************************************************************************************************************************************************************

to ForagersLifespanProc
  ; foragers also die due to age, max. travelled distance or by chance inside
  ; the colony; dying foragers are counted to calculate mean lifespan

  ask foragerSquadrons
  [
    if age >= LIFESPAN
    [
      set DeathsAdultWorkers_t DeathsAdultWorkers_t + SQUADRON_SIZE
      set SumLifeSpanAdultWorkers_t SumLifeSpanAdultWorkers_t + (age * SQUADRON_SIZE)
      die
    ]

    if mileometer >= MAX_TOTAL_KM
    [
      set DeathsAdultWorkers_t DeathsAdultWorkers_t + SQUADRON_SIZE
      set DeathsForagingToday DeathsForagingToday + SQUADRON_SIZE
      set SumLifeSpanAdultWorkers_t SumLifeSpanAdultWorkers_t + (age * SQUADRON_SIZE)
      die
    ]

    let dailyRiskToDie MORTALITY_INHIVE
      ; the daily background mortality of (healthy) foragers, which is equal to MORTALITY_INHIVE of the inhive bees

    if infectionState = "infectedAsPupa"
    [
      set dailyRiskToDie MORTALITY_INHIVE_INFECTED_AS_PUPA
    ]  ; except for infected as pupa foragers, which have a higher mortality

    if infectionState = "infectedAsAdult"
    [
      set dailyRiskToDie MORTALITY_INHIVE_INFECTED_AS_ADULT
    ]  ; except for infected as adult foragers, which have a higher mortality

    if random-float 1 < dailyRiskToDie
    [
      set DeathsAdultWorkers_t DeathsAdultWorkers_t + SQUADRON_SIZE
      set SumLifeSpanAdultWorkers_t SumLifeSpanAdultWorkers_t + (age * SQUADRON_SIZE)
      die
    ]
  ] ; ask foragerSquadrons
end;

; ********************************************************************************************************************************************************************************

;  ==============================================================================================================================================================================
;  ===============   END OF IBM FORAGING SUBMODEL ====================================================================   END OF IBM FORAGING SUBMODEL ===========================
;  ==============================================================================================================================================================================

; ********************************************************************************************************************************************************************************


; ********************************************************************************************************************************************************************************
; ...............  THE VARROA MITE SUBMODEL   ...............................................................  THE VARROA MITE SUBMODEL   .......................................
; ********************************************************************************************************************************************************************************

to MiteProc ; calls the Varroa related procedures
  CreateMiteOrganisersProc
  CountingProc ; updating number of brood & adults of drones & workers
  MitesInvasionProc
  MitePhoreticPhaseProc
  MiteDailyMortalityProc
  MiteOrganisersUpdateProc
end


; ********************************************************************************************************************************************************************************

to CreateMiteOrganisersProc
  ; called by MiteProc, creates a single miteOrganiser turtle, that
  ; stores info on number and distribution of mites newly invaded into the brood cells

  create-miteOrganisers 1
  [
    setxy -1 -7
    set heading 0
    set size 1.3
    set color 33.5
    set shape "VarroaMite03"   ;"Virus1" ;"VarroaMite03"
    set workerCellListCondensed n-values (MAX_INVADED_MITES_WORKERCELL + 1) [ 0 ]
      ; +1 as also the number of mite free cells is stored in this list

    set droneCellListCondensed n-values (MAX_INVADED_MITES_DRONECELL + 1) [ 0 ]
      ; +1 as also the number of mite free cells is stored in this list

    set label-color white
    set cohortInvadedMitesSum 0
      ; sum of all mites that invaded a worker or drone cell on the same Day

    set invadedMitesHealthyRate PhoreticMitesHealthyRate
      ; rate of healthy mites in this cohort of invading mites equals the rate of healthy
      ; phoretic mites on this day

    set age INVADING_WORKER_CELLS_AGE
      ; "age" refers to age of invaded brood. If age for invasion differs in
      ; worker and drone brood..

    if INVADING_DRONE_CELLS_AGE < INVADING_WORKER_CELLS_AGE
    [
      set age INVADING_DRONE_CELLS_AGE
    ] ; ..then age refers to the younger of both
  ]
end

; ********************************************************************************************************************************************************************************

to MitesInvasionProc
  ; called by MiteProc  calculates the number of phoretic mites that
  ; enter worker and drone brood cells on this day based on: Calis et al. 1999, Martin 2001

  let factorDrones 6.49  ; (Boot et al. 1995, Martin 2001)
  let factorWorkers 0.56 ; (Boot et al. 1995, Martin 2001)
  let adultsWeight_g (TotalIHbees + TotalForagers) * WEIGHT_WORKER_g
    ; weight of all adult worker bees
  let invadingBroodCellProb 0
    ; probability for a phoretic mite to enter any suitable brood cell
  let invadingWorkerCellProb 0
    ; probaility to invade a worker cell (only if any cell was invaded)
  let suitableWorkerCells 0
  let suitableDroneCells 0
    ; number of worker and drone cells, that are suitable for mite invasion
  let rD 0
  let rW 0
    ; rD, rW: Rate of invasion into Drone cells and Worker cells (Boot et al. 1995)

  ask larvaeCohorts with [ age = INVADING_WORKER_CELLS_AGE ]
  [
    set suitableWorkerCells number
  ] ; (age = 8) mites enter worker larvae cells ~1d before capping (at 9d age) (Boot, Calis, Beetsma 1992)

  ask droneLarvaeCohorts with [ age = INVADING_DRONE_CELLS_AGE ]
  [
    set suitableDroneCells number
  ]  ; (age = 8) mites enter drone larvae cells ~ 2d before capping (at 10d age) (Boot, Calis, Beetsma 1992)

  if adultsWeight_g > 0
  [ ; invasion rates in worker and drone cells:
    set rW factorWorkers * (suitableWorkerCells / adultsWeight_g)  ; (Martin 1998, 2001; Calis et al.1999)
    set rD factorDrones * (suitableDroneCells / adultsWeight_g)
  ]

  let exitingMites 0
    ; # mites, that theoretically should invade cells but leave it immediatly,
    ; because the cell is already invaded by the max. number of mites

  let workerCellListTemporary n-values suitableWorkerCells [ 0 ]
    ; two temporary lists of all suitable worker/drone cells, to store
    ; the number of mites in each cell..

  let droneCellListTemporary n-values suitableDroneCells [ 0 ]
    ; .. of which later the number of cells invaded by 0, 1, 2.. mites can be calculated

  let cell -1
    ;  stores randomly chosen cell, which is invaded by a mite in the below
    ; "repeat phoreticMites.." process. -1 will be changed to a random number >= 0

  set InvadingMitesWorkerCellsTheo 0
  set InvadingMitesDroneCellsTheo 0
  set invadingBroodCellProb (1 - (exp (-(rW + rD))))
    ; probability for a phoretic mite to enter a brood cell; similar to
    ; Martin 2001, however: we use probability instead of proportion

  if rW + rD > 0 ; if invasion takes place..
  [
    set invadingWorkerCellProb (rW / (rW + rD))
  ]

  ; based on the Boot/Martin/Calis rates of cell invasion, which are used as probabilities,
  ; it is calculated how many phoretic mites enter a brood cell, and whether it is
  ; a drone or a worker cell; each invading mite is then associated with a random brood
  ; cell number (WorkerCellsInvasionList), finally, the mites in each "brood cell" are
  ; counted and saved in the condensed nMitesInCellsList
  repeat PhoreticMites
  [
    if random-float 1 < invadingBroodCellProb
      ; mites have a chance to enter a brood cell
    [
      ifelse random-float 1 < invadingWorkerCellProb ; the brood cell might be a WORKER cell
        [
          set InvadingMitesWorkerCellsTheo InvadingMitesWorkerCellsTheo + 1
            ; mites entering worker cells are counted

          set cell random suitableWorkerCells
            ; randomly, one of the suitable WORKER cells is invaded by a mite

          set WorkerCellListTemporary replace-item cell WorkerCellListTemporary
            (item cell WorkerCellListTemporary + 1)
            ; this list contains all worker cells and the number of mites
            ; invading into each cell
        ]
        [
          ; ELSE: invasion into DRONE cell
          set InvadingMitesDroneCellsTheo InvadingMitesDroneCellsTheo + 1
          set cell random suitableDroneCells
            ; randomly, one of the suitable drone cells is invaded by a mite

          set DroneCellListTemporary replace-item cell DroneCellListTemporary
            (item cell DroneCellListTemporary + 1)
            ; this list contains all drone cells and the number of mites
            ; invading into each cell
        ]
    ]
  ]

  ; excess of invaded mites: # mites in each cells is restricted to MAX_INVADED_MITES:
  let counter 0
  foreach WorkerCellListTemporary
  [
    ; (note: items are addressed in ordered way - NOT randomly)
    x ->

    if x > MAX_INVADED_MITES_WORKERCELL
    [
      set exitingMites exitingMites + (x - MAX_INVADED_MITES_WORKERCELL)
        ; if too many mites in cells: they leave the cell ("?": # of mites in the cell)

      set WorkerCellListTemporary replace-item
        counter WorkerCellListTemporary MAX_INVADED_MITES_WORKERCELL
          ; .. mites left in the cell = max. mites in worker cell
    ]

    set counter counter + 1
  ]
  set InvadingMitesWorkerCellsReal InvadingMitesWorkerCellsTheo - exitingMites

  ; and the same for the drones..
  set counter 0  ; resetting the counter

  foreach DroneCellListTemporary
  [
    x ->
    if x > MAX_INVADED_MITES_DRONECELL
    [
      set exitingMites exitingMites + (x - MAX_INVADED_MITES_DRONECELL)
        ; if too many mites in cells: they leave the cell ("?": # of mites in the cell)

      set DroneCellListTemporary replace-item counter
        DroneCellListTemporary MAX_INVADED_MITES_DRONECELL
        ; .. mites left in the cell = max. mites in drone cell
    ]
    set counter counter + 1
  ]

  set InvadingMitesDroneCellsReal InvadingMitesDroneCellsTheo
    - exitingMites
    + (InvadingMitesWorkerCellsTheo - InvadingMitesWorkerCellsReal)
      ; mites invaded drone cells = mites theor. invading drone cells
      ; - mites exiting drone&worker cells
      ; + mites exiting worker cells (here: exitingMites: sum of worker&drone cell mites!)

  set PhoreticMites PhoreticMites
    - InvadingMitesWorkerCellsTheo
    - InvadingMitesDroneCellsTheo
    + exitingMites
      ; # of phoretic mites left (=phor.mites - invading mites
      ; + mites immediately leaving cells and become phoretic again

  if PhoreticMites < 0
  [
    user-message "Error in MitesInvasionProc - negative number of phoretic Mites"
    set BugAlarm true
  ] ; assertion

  let memory -1 ; -1: = no cohort invaded

  ask miteOrganisers with [age = INVADING_WORKER_CELLS_AGE]
  [
    foreach workerCellListTemporary
      ; checks the list that contains all worker brood cells for
      ; how many mites have entered..
    [
      x ->
      set workerCellListCondensed replace-item x workerCellListCondensed
        ((item x workerCellListCondensed) + 1)
    ]  ; sums up the number of cells entered by 0, 1,2..n mites in the mitesOrganisers own list

    set cohortInvadedMitesSum cohortInvadedMitesSum + InvadingMitesWorkerCellsReal

    let whoMO who  ; stores the "who" of the current miteOrganiser
    ask larvaeCohorts with [age = INVADING_WORKER_CELLS_AGE]
    [
      set invadedByMiteOrganiserID whoMO
      set memory who
    ]
    set invadedWorkerCohortID memory
  ] ; "ask miteorganisers ..."

  ask miteOrganisers with [age = INVADING_DRONE_CELLS_AGE]
  [
    foreach droneCellListTemporary
      ; checks the list that contains all drone brood cells for
      ; how many mites have entered..
    [
      x ->
      set droneCellListCondensed replace-item x droneCellListCondensed
        ((item x droneCellListCondensed) + 1)
    ] ; sums up the cell entered by 0, 1,2..n mites in the mitesOrganisers own list

    set cohortInvadedMitesSum cohortInvadedMitesSum + InvadingMitesDroneCellsReal
    set memory -1  ; -1: = no cohort invaded

    ask droneLarvaeCohorts with [age = INVADING_DRONE_CELLS_AGE]
    [
      set memory who
    ]
    set invadedDroneCohortID memory
    let whoMO who  ; stores the "who" of the current miteOrganiser

    ask droneLarvaeCohorts with [ age = INVADING_DRONE_CELLS_AGE ]
    [
      set invadedByMiteOrganiserID whoMO
    ]
  ] ; "ask miteOrganisers with ..."

  if (PhoreticMites + InvadingMitesWorkerCellsReal
    +  InvadingMitesDroneCellsReal) > 0 ; avoid div 0!
  [
    set PropNewToAllPhorMites NewReleasedMitesToday
      / ( PhoreticMites + InvadingMitesWorkerCellsReal + InvadingMitesDroneCellsReal)
  ] ; Proportion of new emerged phoretic mites (today) to all phoretic mites
    ; present (needed in the MitePhoreticPhaseProc to determine # of newly infected phoretic mites etc)
end

; ********************************************************************************************************************************************************************************

to-report MiteDensityFactorREP [ ploidyMiteOrg mitesIndex ]
  ; reports the (single) density factor for a certain number of invaded mites
  ; depending on ploidy of bee brood and chosen reproduction model

  let dataList []

  if MiteReproductionModel = "Martin"
  [ ifelse ploidyMiteOrg = 2
    [ set dataList [ 0 1 0.91 0.86 0.60 ] ]
      ; workers  (list length: 5) [ 0 1 0.91 0.86 0.60 ]
      ; from Martin 1998, Tab. 4; first value (0) doesn't matter, as no
      ; mother mite invaded these cells

    [ set dataList [ 0 1 0.84 0.65 0.66 ] ]
  ]   ; drones (list length: 5)  [ 0 1 0.84 0.65 0.66 ] from Martin 1998, Tab. 4

  if MiteReproductionModel = "Fuchs&Langenbach"
  [
    ifelse ploidyMiteOrg = 2
      [ set dataList [ 0 1 0.96 0.93 0.89 0.86 0.82 0.79 0 ]]
        ; workers   (list length: 9) calculated from Fuchs&Langenbach 1989 Tab.III
      [ set dataList [ 0 1 0.93 0.86 0.80 0.73 0.66 0.59 0.52 0.45 0.39 0.32 0.25 0.18 0.11 0.05 0 ] ]
  ]  ; (list length: 17) calculated from Fuchs&Langenbach 1989 Tab.III

  if MiteReproductionModel = "No Mite Reproduction"  ; only for model testing
  [
    ifelse ploidyMiteOrg = 2
      [ set dataList [ 0 1 1 1 1 1 ] ] ; workers   (list length: 6)
      [ set dataList [ 0 1 1 1 1 1 ] ]
  ]  ; drones  (list length: 6)

  if MiteReproductionModel = "Martin+0"
    ; like Martin, but max # of mites in brood cell is increased by
    ; one with a rel. reprod. rate of 0 (= 0 at the end of the list)

  [ ; Martin Test with 0
    ifelse ploidyMiteOrg = 2
      [ set dataList [ 0 1 0.91 0.86 0.60 0 ] ]
        ; workers   (list length: 6) [ 0 1 0.91 0.86 0.60 0 ]
        ; from Martin 1998, Tab. 4; first value (0) doesn't matter, as no
        ; mother mite invaded these cells
      [ set dataList [ 0 1 0.84 0.65 0.66 0 ] ]
  ]  ; drones (list length: 6)  [ 0 1 0.84 0.65 0.66 0 ] from Martin 1998, Tab. 4

  report item mitesIndex dataList

end

; ********************************************************************************************************************************************************************************

to-report  MiteOffspringREP [ ploidyMiteOrg ]
  ; reports offspring per mite depending on ploidy of bee brood and chosen reproduction model

  let result 0
  if ploidyMiteOrg != 1 and ploidyMiteOrg != 2
  [
    set BugAlarm true
    type "BUG ALARM in MiteOffspringREP! Wrong ploidyMiteOrg: "
    print ploidyMiteOrg
  ]

  if MiteReproductionModel = "Martin" or MiteReproductionModel = "Martin+0"
  [
    ifelse ploidyMiteOrg = 2
      [ set result 1.01 ]
        ; workers (1.01: Martin 1998; fertilisation already taken into account)

      [ set result 2.91 ]
  ]     ; drones (2.91: Martin 1998; fertilisation already taken into account)

 if MiteReproductionModel = "Fuchs&Langenbach"
 [
   ifelse ploidyMiteOrg = 2
     [ set result 1.4 * 0.95 ]
       ; workers (1.4: Fuchs&Langenbach 1989; of which 5% are
       ; unfertilised (Martin 1998 p.271))
     [ set result 2.21 * 0.967 ]
 ]  ; drones (2.21: Fuchs&Langenbach 1989; of which 3.3% are unfertilised (Martin 1998 p.271))

 if MiteReproductionModel = "No Mite Reproduction"  ; only for model testing
 [
   ifelse ploidyMiteOrg = 2
      [ set result 0 ]   ; workers
      [ set result 0 ]
 ] ; drones

 report result
end

; ********************************************************************************************************************************************************************************

; MitesReleaseProc: determines how many healthy and infected mites emerge from cells with a) dead or b) emerging bees
; CALLED BY: WorkerLarvaeDevProc (dying), DroneLarvaeDevProc (dying), WorkerPupaeDevProc (2x, for dying & emerging brood)
; DronePupaeDevProc (2x, for dying & emerging brood), BroodCareProc (4x, dying of drone & worker larvae & pupae)

; .. all these procedures are called BEFORE the mite module (MiteProc)!

to MitesReleaseProc [ miteOrganiserID ploidyMiteOrg diedBrood releaseCausedBy ]
    ; 1. rate of healthy mites in the cellList 2. the relevant worker/drone
    ; cellListCondensed 3.  # died broodCells (0..n) 4. "emergingBrood" or "dyingBrood"

  let cellListCondensed []
    ; to not double the code for worker and drones, the local variable
    ; cellListCondensed is defined which stores EITHER the workerCellListCondensed
    ; OR the droneCellListCondensed

  let mitesInfectedSumUncappedCells 0
    ; sums up the infected mites of the current cohort

  let mitesHealthySumUncappedCells 0 ; sums up the healthy mites of the current cohort
  let mitesHealthy&InfectedSumUncappedCells 0
    ; sums up the healthy and infected mites of the current cohort

  let nPhoreticMitesBeforeEmergenceHealthy round (PhoreticMitesHealthyRate * PhoreticMites)
    ; saves the number healthy phoretic mites before the new mites emerge from their
    ; cells - necessary to calculate new PhoreticMitesHealthyRate

  let nPhoreticMitesBeforeEmergenceInfected PhoreticMites - nPhoreticMitesBeforeEmergenceHealthy
    ; saves the number infected phoretic mites before the new mites emerge from
    ; their cells - necessary to calculate new PhoreticMitesHealthyRate

  let healthyRateMiteOrg 0
    ; proportion of healthy mites in the current cohort (miteOrganiser)

  let totalCells 0
    ; number of brood cells in the current cohort

  let releasedPupaeCohortsID -1

  let repetitions MAX_INVADED_MITES_WORKERCELL + 1
    ; to count the brood cells; (for worker cells); +1 as cells can also bee mite free
  if ploidyMiteOrg = 1
  [
    set repetitions MAX_INVADED_MITES_DRONECELL + 1
  ] ; ..the same for drone cells, +1 as cells can also bee mite free

  ; to save the required "cellListCondensed" and to determine the "who"
  ; of the affected (worker or drone) pupaeCohort:
  ask miteOrganisers with [ who = miteOrganiserID ]
  [
    ifelse ploidyMiteOrg = 1
      [
        set cellListCondensed droneCellListCondensed
          ; IF DRONES: local cellListCondensed =  droneCellListCondensed
        set releasedPupaeCohortsID invadedDroneCohortID
      ]   ; ... and affected droneCohort is the miteOrganisers "invadedDroneCohortID"
      [
        set cellListCondensed workerCellListCondensed
          ; ELSE WORKERS: local cellListCondensed = workerCellListCondensed
        set releasedPupaeCohortsID invadedWorkerCohortID
      ]  ; ... and affected workerCohort is the miteOrganisers "invadedWorkerCohortID"
    set healthyRateMiteOrg invadedMitesHealthyRate
      ; saves the rate of healthy mites invaded to the current miteOrganiser
  ]

  let i 0
  repeat repetitions
  ; repetitions = MAX_INVADED_MITES_WORKER/DRONE_CELL + 1
  [
    ; counts the # of cells in the cellList
    set totalCells totalCells + (item i cellListCondensed)
    set i i + 1
  ]

  let uncappedCells 0  ; number of cells that are uncapped ...
  if releaseCausedBy = "dyingBrood" [ set uncappedCells diedBrood  ]
    ; .. because some pupae died..

  if releaseCausedBy = "emergingBrood" [ set uncappedCells totalCells  ]
    ; .. or because all pupae emerge

  if releaseCausedBy != "dyingBrood" and  releaseCausedBy != "emergingBrood"
  [
    set BugAlarm true
    type "BUG ALARM in ReleaseMitesProc(1)! releaseCausedBy: "
    print releaseCausedBy
  ]  ; assertion

  repeat uncappedCells
  [
    ; uncapped brood cells are randomly chosen from all brood cells of
    ; this cohort. These cells may contain 0,1,2..invadedMitesCounter mites.
    ; These mother mites are released from the cell WITH OR WITHOUT
    ; reproduction and become phoretic

    let randomCell (random totalCells) + 1
      ; choses a random cell -> 1..totalCells (+1 as: random n = 0, 1, ..n-1)
      ; (totalCells is decreased at the end of each repetition by 1)

    let cellCounter 0
    let allMitesInSingleCell -1
      ; starting value of allMitesInSingleCell: -1 as it is increased by 1 in the
      ; following "while" loop
      ; allMitesInSingleCell: # of mites that invaded the randomly chosen cell

    while [ cellCounter < randomCell ]
      ; determines, by how many mites the "random cell"
      ; is invaded: sums up the # of cells invaded by 0 mites (1st loop)
      ; by 1 mite (2nd loop) etc. until the cellCounter >= randomCell
      ; the number of mites in random cell is then allMitesInSingleCell
    [
      set allMitesInSingleCell allMitesInSingleCell + 1
        ; in 1st loop: allMitesInSingleCell = 0! (i.e. item 0 = first item in list = 0 mites)
        ; in 2nd loop: 1 mite etc.

      set cellCounter cellCounter + (item allMitesInSingleCell cellListCondensed)
        ; cellCounter is increased by the # of cells with x mites in it
        ; (x = allMitesInSingleCell, i.e. 0,1,2..n)
    ]

    ; how many of the released mites are infected? -> 1. how many infected
    ; mites entered? 2. did they infect the larva? 3. how many healthy mites become
    ; infected by the infected larva?
    let mitesIndex allMitesInSingleCell
      ; to address the correct item in the cellListCondensed after mite
      ; reproduction (i.e. when allMitesInSingleCell has changed)

    let pupaInfected false ; a young larva is healthy
    let infectedMitesInSingleCell 0
      ; the number of mites that were diseased on day of cell invasion

    repeat allMitesInSingleCell
    [
      ; invaded mites might be infected: repeat over all mites in the current brood cell
      if random-float 1 > healthyRateMiteOrg
      [
        set infectedMitesInSingleCell infectedMitesInSingleCell + 1
        ; this invaded mite was infected when invading the cell and is now counted as infected
      ]
    ]

    let healthyMitesInSingleCell allMitesInSingleCell - infectedMitesInSingleCell
      ; healthy invaded mites are all invaded mites minus infected ones

    if random-float 1 > (1 - VIRUS_TRANSMISSION_RATE_MITE_TO_PUPA) ^ infectedMitesInSingleCell
    [
      set pupaInfected true
    ] ; as soon as at least 1 infected mite successfully infects the bee pupa, the bee pupa is infected

    ; PUPA ALIVE OR DEAD? (either died normally, died due to lack of nursing or killed by virus
    let pupaAlive 1 ; (0 or 1) 1: = "yes", pupa is alive 0: = "no", pupa is dead
    if pupaInfected = true
    [
      if random-float 1 < VIRUS_KILLS_PUPA_PROB
      [
        set pupaAlive 0
      ]
    ] ; infected pupa might be killed by the virus. In this case:
      ; no offspring mites but still transmission of viruses to healthy mites in this cell
      ; (at least for DWV)

    if releaseCausedBy = "dyingBrood"
    [
      set pupaAlive 0
    ] ; larva/pupa is dead, if MitesReleaseProcis called, BECAUSE the brood died..

    if releaseCausedBy = "emergingBrood" and allMitesInSingleCell > 0
    [
      ; callow bees are emerging and with them the invaded mother mites and their offspring
      if pupaAlive = 0
      [
        ask turtles with [ who = releasedPupaeCohortsID ]
        [
          set number number - 1
            ; pupa died, hence the number of bees in this pupae cohort is reduced by 1
          set number_healthy number_healthy - 1
            ; pupa dies due to virus infection and has previously been healthy
          set Pupae_W&D_KilledByVirusToDay Pupae_W&D_KilledByVirusToDay + 1
        ]
      ]

      ; surviving but infected pupae:
      if pupaAlive = 1 and pupaInfected = true
      [
        ask turtles with [ who = releasedPupaeCohortsID ]
        [
          set number_infectedAsPupa number_infectedAsPupa + 1
          ; the bee was infected as pupa
          set number_healthy number_healthy - 1
          ; the pupa has become infected and is no longer healthy
        ]
      ]

      let averageOffspring
        random-poisson (MiteOffspringREP ploidyMiteOrg * MiteDensityFactorREP ploidyMiteOrg mitesIndex)
        ; average # offspring of a single mother mite in the single cell (depends on ploidy of bee pupa and # invaded mites)

      set healthyMitesInSingleCell allMitesInSingleCell
        * averageOffspring
            ; Offspring: all mites in cell x reprod. rate. NOTE: also infected mites
            ; may have healthy offspring! (MiteOffspringREP: reports # offspring for
            ; 1 mite in single invaded cell, for drones or workers)
        * pupaAlive
          ; pupaAlive =  1 or 0; if pupa is alive: normal mite reproduction, if dead:
          ; offspring = 0
        + healthyMitesInSingleCell             ; + mother mites

      set healthyMitesInSingleCell round healthyMitesInSingleCell
      ; this line is NOT NECESSARY as averageOffspring is integer!
      set allMitesInSingleCell healthyMitesInSingleCell + infectedMitesInSingleCell
        ; update of total mites in the cell
    ]  ; END of "if releaseCausedBy = 'emergingBrood' "

    if pupaAlive = 1 and pupaInfected = true
    [
      ; if the bee pupa was infected by an infected mite AND IS STILL ALIVE,
      ; then the healthy mites (invaded or offspring) might become infected too

      repeat healthyMitesInSingleCell
      [
        ; all healthy mites have then the risk to become infected too
        if random-float 1 < VIRUS_TRANSMISSION_RATE_PUPA_TO_MITES
        ; if random number < the transmission rate from bee pupa to mite, the healthy
        ; mite becomes infected
        [
          set healthyMitesInSingleCell healthyMitesInSingleCell - 1
            ; hence: the number of healthy released mites decreases by 1..

          set infectedMitesInSingleCell infectedMitesInSingleCell + 1
        ]  ; .. and the number of infected released mites increases by 1
      ] ; end of 'repeat sumInvadedMitesHealthy'
    ] ; end of 'IF pupaInfected' - now the numbers of healthy and infected (mother) mites in
    ; single cell is known (= healthyMitesInSingleCell and infectedMitesInSingleCell)

    if healthyMitesInSingleCell + infectedMitesInSingleCell != allMitesInSingleCell
    [
      set BugAlarm true
      type "BUG ALARM in ReleaseMitesProc(2)! allMitesInSingleCell: "
      type allMitesInSingleCell
      type " infectedMitesInSingleCell: "
      type infectedMitesInSingleCell
      type " healthyMitesInSingleCell: "
      print healthyMitesInSingleCell
    ]

    ; MITE FALL:
    let miteFallProb MITE_FALL_DRONECELL
    if ploidyMiteOrg = 2
    [
      set miteFallProb MITE_FALL_WORKERCELL
    ] ; probabilities of mites to fall from comb, depending on cell type

    repeat healthyMitesInSingleCell
    [ ; determined for healthy and infected mites separately
      if random-float 1 < miteFallProb
      [
        set healthyMitesInSingleCell healthyMitesInSingleCell - 1
        set allMitesInSingleCell allMitesInSingleCell - 1
        set DailyMiteFall DailyMiteFall + 1
      ]
    ]

    repeat infectedMitesInSingleCell
    [
      if random-float 1 < miteFallProb
      [
        set infectedMitesInSingleCell infectedMitesInSingleCell - 1
        set allMitesInSingleCell allMitesInSingleCell - 1
        set DailyMiteFall DailyMiteFall + 1
      ]
    ]

    set mitesHealthySumUncappedCells mitesHealthySumUncappedCells + healthyMitesInSingleCell
      ; sums up all healthy mites emerging from current cohort
      ; (set to 0 at beginning of this procedure)

    set mitesInfectedSumUncappedCells mitesInfectedSumUncappedCells + infectedMitesInSingleCell
      ; same for infected mites (set to 0 at beginning of this procedure)

    set PhoreticMites PhoreticMites + allMitesInSingleCell
      ; mother mites in this uncapped brood cell are released from the brood
      ; cell and become phoretic..

    set mitesHealthy&InfectedSumUncappedCells
      mitesHealthy&InfectedSumUncappedCells + allMitesInSingleCell
        ; released mites from all brood cell in this cohort are totaled up

    set cellListCondensed replace-item mitesIndex cellListCondensed
      (item mitesIndex cellListCondensed - 1)
        ; .. and one brood cell is removed; mitesIdex: number of mother mites that
        ; invaded the brood cell

    if item mitesIndex cellListCondensed < 0
    [
      set BugAlarm true
      type "BUG ALARM in ReleaseMitesProc(3)! Negative number in cellListCondensed (releaseMitesProc)! "
      show cellListCondensed
    ]

    set totalCells totalCells - 1
      ; number of total brood cells in this cohort is reduced by 1

    if totalCells < 0
    [
      set BugAlarm true
      type "BUG ALARM in ReleaseMitesProc(4)! Negative number of  total cells in releaseMitesProc: "
      print totalCells
    ]
  ] ; END OF "REPEAT UNCAPPEDCELLS"

  set NewReleasedMitesToday
    NewReleasedMitesToday + mitesHealthy&InfectedSumUncappedCells
      ; # of newly released (mother+offspring) mites (only those that survived
      ; MiteFall) is summed up (set to 0 in DailyUpdateProc)

  if mitesInfectedSumUncappedCells + mitesHealthySumUncappedCells
     != mitesHealthy&InfectedSumUncappedCells
  [ ; assertion
    set BugAlarm true
    type "BUG ALARM in ReleaseMitesProc(5)! mitesInfectedSumUncappedCells: "
    type mitesInfectedSumUncappedCells
    type " mitesHealthySumUncappedCells: "
    type mitesHealthySumUncappedCells
    type " mitesHealthy&InfectedSumUncappedCells: "
    print mitesHealthy&InfectedSumUncappedCells
  ]

  if mitesInfectedSumUncappedCells < 0 or mitesHealthySumUncappedCells < 0
  [ ; assertion
    set BugAlarm true
    type "BUG ALARM in ReleaseMitesProc(6)! mitesInfectedSumUncappedCells: "
    type mitesInfectedSumUncappedCells
    type " mitesHealthySumUncappedCells: "
    type mitesHealthySumUncappedCells
    type " mitesHealthy&InfectedSumUncappedCells: "
    print mitesHealthy&InfectedSumUncappedCells
  ]

 ; Updating of the actual cell lists - either for the drone or for the worker brood:
  ask miteOrganisers with [ who = miteOrganiserID ]
  [ ; assertion
    if ploidyMiteOrg = 1 [ set droneCellListCondensed cellListCondensed ]    ; IF drones
    if ploidyMiteOrg = 2 [ set workerCellListCondensed cellListCondensed ]    ; IF workers
    if (ploidyMiteOrg != 1) and (ploidyMiteOrg != 2)
    [
      set BugAlarm true
      type "BUG ALARM in releaseMitesProc(7)! Wrong ploidyMiteOrg: "
      print ploidyMiteOrg
    ]
                                                    ]
  ; UPDATE of the healthy mite rate:
  if ( nPhoreticMitesBeforeEmergenceHealthy
       + nPhoreticMitesBeforeEmergenceInfected
       + mitesHealthySumUncappedCells
       + mitesInfectedSumUncappedCells) > 0
  [
    set PhoreticMitesHealthyRate
      ( nPhoreticMitesBeforeEmergenceHealthy + mitesHealthySumUncappedCells)
        / ( nPhoreticMitesBeforeEmergenceHealthy
            + nPhoreticMitesBeforeEmergenceInfected
            + mitesHealthySumUncappedCells
            + mitesInfectedSumUncappedCells )
  ]

 end

; ********************************************************************************************************************************************************************************

to MiteDailyMortalityProc
  ifelse ( TotalEggs + TotalLarvae
           + TotalPupae + TotalDroneEggs
           + TotalDroneLarvae + TotalDronePupae) > 0 ; is it within brood period?
    [
      set PhoreticMites
        (PhoreticMites - random-poisson (PhoreticMites *  MITE_MORTALITY_BROODPERIOD))
    ]  ; IF brood is present
    [
      set PhoreticMites
      (PhoreticMites - random-poisson (PhoreticMites *  MITE_MORTALITY_WINTER))
    ] ; ELSE: if no brood is present
end

; ********************************************************************************************************************************************************************************

to MitePhoreticPhaseProc
  ; infection of healthy worker bees via infected phoretic mites and of
  ; healthy phoretic mites via infected workers; Called daily by MiteProc

  let healthyPhoreticMites round (PhoreticMites * PhoreticMitesHealthyRate)
    ; # of healthy, phoretic mites is calculated from the rate of healthy phoretic mites

  let infectedPhoreticMites PhoreticMites - healthyPhoreticMites
    ; all other phoretic mites are infected

  let phoreticMitesPerIHbee 0

  if ( TotalIHbees + InhivebeesDiedToday
       + NewForagerSquadronsHealthy
       + NewForagerSquadronsInfectedAsPupae
       + NewForagerSquadronsInfectedAsAdults > 0 ) ; avoid division by 0
  [
    set phoreticMitesPerIHbee
       ( PhoreticMites - NewReleasedMitesToday)
         / (TotalIHbees + InhivebeesDiedToday
            + SQUADRON_SIZE *
               ( NewForagerSquadronsHealthy
                 + NewForagerSquadronsInfectedAsPupae
                 + NewForagerSquadronsInfectedAsAdults
               )
           )
  ] ; phoretic mites are assumed to infest only inhive bees,
    ; "ih-bees" here = current ih-bees + ih-bees died today
    ;                  + ih-bees developed into foragers today!

 ; mites are released from inhive bees, if ih-bees die or develop into foragers:
  let mitesReleasedFromInhivebees
    precision
       (
        phoreticMitesPerIHbee
         * ( InhivebeesDiedToday  ; died ih-bees
             + SQUADRON_SIZE      ; new foragers:
              * ( NewForagerSquadronsHealthy
                  + NewForagerSquadronsInfectedAsPupae
                  + NewForagerSquadronsInfectedAsAdults
                )
            )
       ) 5

  if mitesReleasedFromInhivebees > PhoreticMites
  [
    set BugAlarm true
    type "BugAlarm!!! mitesReleasedFromInhivebees > PhoreticMites! mitesReleasedFromInhivebees: "
    type mitesReleasedFromInhivebees
    type " PhoreticMites: "
    print PhoreticMites
  ]

  let healthyPhoreticMitesSwitchingHosts
    round
      (
        mitesReleasedFromInhivebees * PhoreticMitesHealthyRate
        + PhoreticMites * PropNewToAllPhorMites * PhoreticMitesHealthyRate
      )  ; # healthy phoretic mites that infest a bee. These are: newly
         ; released mites that haven't entered a brood cell (hence:
         ; "phoreticMites * PropNewToAllPhorMites") and phoretic mites, where the host
         ; bee just died; all multiplied with PhoreticMitesHealthyRate as only healthy
         ; mites are considered

  if healthyPhoreticMitesSwitchingHosts > healthyPhoreticMites
  [
    ; set BugAlarm true
    if (healthyPhoreticMitesSwitchingHosts - healthyPhoreticMites) > 1
    [
      set BugAlarm true  ; if difference > 1 it can't be explained by rounding errors..
      type "BugAlarm!!! (MitePhoreticPhaseProc)  healthyPhoreticMitesSwitchingHosts > healthyPhoreticMites! healthyPhoreticMitesSwitchingHosts: "
      type healthyPhoreticMitesSwitchingHosts
      type " healthyPhoreticMites: "
      print healthyPhoreticMites
    ]

    set healthyPhoreticMitesSwitchingHosts healthyPhoreticMites
  ] ; to ensure that not more mites switch their hosts than actually present!

  ; healthy and infected IN-HIVE bees:
  let totalInfectedWorkers 0
  let totalHealthyWorkers 0
  ask IHbeeCohorts
  [
    set totalInfectedWorkers
      totalInfectedWorkers + number_infectedAsPupa + number_infectedAsAdult
        ; infected: either during pupal phase or as adults
    set totalHealthyWorkers totalHealthyWorkers + number_healthy
  ]

  ; Infection of healthy mites:
  let newlyInfectedMites 0
   ; the probability of healthy mites to become infected equals the proportion of
    ; infected in-hive workers to all in-hive workers:
  if (totalInfectedWorkers + totalHealthyWorkers) > 0  ; avoid division by 0!
   [
    repeat healthyPhoreticMitesSwitchingHosts
     [
       if random-float 1 <  totalInfectedWorkers / (totalInfectedWorkers + totalHealthyWorkers)
        [
          set newlyInfectedMites newlyInfectedMites + 1
        ]
      ]
   ]

  ; infection of healthy adult workers - ONLY IN-HIVE WORKERS!
  let allInfectedMitesSwitchingHosts
    round
      ( PhoreticMites * PropNewToAllPhorMites * (1 - PhoreticMitesHealthyRate)
        + mitesReleasedFromInhivebees * (1 - PhoreticMitesHealthyRate))
        ; # infected phoretic mites that infest a new bee. These are: newly
        ; released mites, that haven't entered a brood cell (hence: "phoreticMites
        ; * PropNewToAllPhorMites") and phoretic mites, where the host bee just died;
        ; all multiplied with (1 - PhoreticMitesHealthyRate) as only infected mites are considered

  ask IHbeeCohorts
  [
    if TotalIHbees > 0 and number > 0  ; avoid division by 0!
    [
      let infectedMitesSwitchingHostsInThisCohort
        (allInfectedMitesSwitchingHosts / TotalIHbees) *  number
          ; # of infected mites switching their host in current bee cohort: # mites per ih-bee * number of ih-bees
          ; in this cohort (assumes an equal distribution of mites)

      let newlyInfectedIHbeesInThisCohort 0
      repeat number_healthy  ; only healthy bees can become newly infected
        [
          if random-float 1 > (1 - (1 / number)) ^ infectedMitesSwitchingHostsInThisCohort
          ; "number" (i.e. all bees in this cohort) as mites can also jump on already infected bees
            [
              set newlyInfectedIHbeesInThisCohort newlyInfectedIHbeesInThisCohort + 1
               ; # of newly infected bees is increased by 1
              set infectedMitesSwitchingHostsInThisCohort infectedMitesSwitchingHostsInThisCohort - 1
              if infectedMitesSwitchingHostsInThisCohort < 0
                 [ set infectedMitesSwitchingHostsInThisCohort 0 ]
            ]
        ]


      ; Assertion to be sure there are not more newly infected bees than there were healthy bees:
      if newlyInfectedIHbeesInThisCohort > number_healthy
      [
        set BugAlarm true
        print "Bug Alarm! newlyInfectedIHbeesInThisCohort > number_healthy!"

      ]

      set number_infectedAsAdult number_infectedAsAdult + newlyInfectedIHbeesInThisCohort
      set number_healthy  number_healthy - newlyInfectedIHbeesInThisCohort

      if number_healthy < 0
      [
        set BugAlarm true
        type "BUG ALARM!!! (MitePhoreticPhaseProc) Negative number of healthy IH bees (MitePhoreticPhaseProc): "
        show number_healthy
      ]

      if number_healthy + number_infectedAsPupa + number_infectedAsAdult != number
      [
        set BugAlarm true
        type "BUG ALARM!!! (MitePhoreticPhaseProc) Wrong sum of healthy + infected bees in this cohort: "
        type number_healthy + number_infectedAsPupa + number_infectedAsAdult
        type " instead of: "
        show number
      ]
    ]  ; end "if TotalIHbees > 0 and number > 0 "
  ] ; end "ask IHbeeCohorts "

  set infectedPhoreticMites infectedPhoreticMites + newlyInfectedMites
  set healthyPhoreticMites healthyPhoreticMites - newlyInfectedMites

  if healthyPhoreticMites < 0
  [
    set BugAlarm true
    type "BUG ALARM!!! Negative number of healthy mites (MitePhoreticPhaseProc): "
    show healthyPhoreticMites
  ]

  if infectedPhoreticMites + healthyPhoreticMites > 0
  [
    set PhoreticMitesHealthyRate
      healthyPhoreticMites / (infectedPhoreticMites + healthyPhoreticMites)
  ]

end

; ********************************************************************************************************************************************************************************

to MiteOrganisersUpdateProc
  set TotalMites 0
    ; all mites in the colony, irrespective if phoretic or in cells

  ask miteOrganisers
  [
    back 1 ; new position in the GUI
    set age age + 1
    set cohortInvadedMitesSum 0
    let counter 0
      ; counts total numbers of mites in brood cells for each miteOrganiser (="mite cohort")

    foreach workerCellListCondensed
    [
      x ->
      set cohortInvadedMitesSum cohortInvadedMitesSum + (x * counter)
      set counter counter + 1
    ] ; sums up the mites in worker cells ( multiplication of # cells with X mites in them * X) (X = counter)

    set counter 0

    foreach droneCellListCondensed
    [
      x ->
      set cohortInvadedMitesSum cohortInvadedMitesSum
          + (x * counter)
      set counter counter + 1
    ] ; sums up the mites in drone cells ( multiplication of # cells with X mites in them * X) (X = counter)

    set label cohortInvadedMitesSum
    set TotalMites TotalMites + cohortInvadedMitesSum
      ; interim result: summing up all the mites in the cells

    if (age > DRONE_EMERGING_AGE) and (age >= EMERGING_AGE)
    [
      die
    ]  ; ">" (not ">=") as they age at the beginning of this procedure
  ] ; end "ask miteOrganisers "

 set TotalMites TotalMites + PhoreticMites
   ; final result: TotalMites = all mites in the cells + phoretic mites
end

; ********************************************************************************************************************************************************************************

; ...............  END OF THE VARROA MITE SUBMODEL   ...................................................................  END OF THE VARROA MITE SUBMODEL   .....................


; ********************************************************************************************************************************************************************************

to CountingProc
  ; counts # bees in different stages, castes CALLED BY: 1. BroodCareProc 2. Go 3. MiteProcedure

  ; WORKERS:
  set TotalEggs 0 ask eggCohorts [ set TotalEggs (TotalEggs + number)]
  set TotalLarvae 0 ask larvaeCohorts [ set TotalLarvae (TotalLarvae + number)]
  set TotalPupae 0 ask pupaeCohorts [ set TotalPupae (TotalPupae + number)]
  set TotalIHbees 0 ask IHbeeCohorts [ set TotalIHbees (TotalIHbees + number)]
  set TotalForagers (count foragerSquadrons) * SQUADRON_SIZE

  ;ELRtModule####################
  ;Summer Foragers are counted, so they can be used for the Probability of Pollen Collection (as Winterbees are not used in the calculation)
  set summerForagers (count foragerSquadrons with [Winterbee = 0]) * SQUADRON_SIZE

  ;#########################

  ; DRONES:
  set TotalDroneEggs 0 ask DroneEggCohorts [ set TotalDroneEggs (TotalDroneEggs + number)]
  set TotalDroneLarvae 0 ask DroneLarvaeCohorts [ set TotalDroneLarvae (TotalDroneLarvae + number)]
  set TotalDronePupae 0 ask DronePupaeCohorts [ set TotalDronePupae (TotalDronePupae + number)]
  set TotalDrones 0 ask DroneCohorts [ set TotalDrones (TotalDrones + number)]
  set TotalWorkerAndDroneBrood TotalEggs + TotalLarvae + TotalPupae + TotalDroneEggs + TotalDroneLarvae + TotalDronePupae
  if TotalEggs  < 0 OR TotalLarvae < 0 OR TotalPupae < 0 OR TotalIHbees < 0 OR TotalForagers < 0
  [
    set BugAlarm true
    output-show (word ticks " BUG ALARM! negative number in total bees")
    type "TotalEggs: "
    type TotalEggs
    type " TotalLarvae: "
    type TotalLarvae
    type " TotalPupae: "
    type TotalPupae
    type " TotalIHbees: "
    type TotalIHbees
    type " TotalForagers: "
    print TotalForagers
  ]

  ask turtles
  [
    if number < 0
    [
      set BugAlarm true
      type (word ticks " BUG ALARM! negative number in turtles: ")
      show number
      ]
  ]

  if TotalMites < 0 or PhoreticMites < 0 or PhoreticMitesHealthyRate > 1  or PhoreticMitesHealthyRate < 0
  [
    set BugAlarm true
    output-show (word ticks " BUG ALARM! Check number of mites and PhoreticMitesHealthyRate!")
    type "PhoreticMitesHealthyRate: "
    type PhoreticMitesHealthyRate
    type " TotalMites: "
    type TotalMites
    type " PhoreticMites: "
    type PhoreticMites
  ]

  ask (turtle-set pupaeCohorts dronePupaeCohorts droneCohorts)
  [
    if number != number_infectedAsPupa + number_healthy
    [
      set BugAlarm true
      show "BUG ALARM! (CountingProc) number <> healthy + infected"
    ]
  ]

  ask IHbeeCohorts
  [
    if number != number_infectedAsAdult + number_infectedAsPupa + number_healthy
    [
      set BugAlarm true
      show "BUG ALARM! (CountingProc) number <> healthy + infected (IH-bees)"
    ]
  ]
end

; ********************************************************************************************************************************************************************************

to PollenConsumptionProc
  ; calculates the daily pollen consumption

  let DAILY_POLLEN_NEED_ADULT 1.5 ;0.023;1.5 ; 0 ;1.5 ; 1.5 ;
    ; 1.5 mg fresh pollen per Day per bee (based on
    ; Pernal, Currie 2000, value for 14d old bees, Fig. 3)

  let DAILY_POLLEN_NEED_ADULT_DRONE 2 ; just an ESTIMATION

  let DAILY_POLLEN_NEED_LARVA 142 / (PUPATION_AGE - HATCHING_AGE)
    ; (23.6 mg/d) see HoPoMo
  let DAILY_POLLEN_NEED_DRONE_LARVA 50
    ; ESTIMATION, Rortais et al. 2005: "The pollen consumption of drone larvae has never been determined."

  let pollenStoreLasting_d 7
    ; similar to "FACTORpollenstorage" of HoPoMo model, which is set to 6.
    ; Seeley 1995: pollen stores last for about 1 week;

  let needPollenAdult
    ((TotalIHbees + TotalForagers) *  DAILY_POLLEN_NEED_ADULT
      + TotalDrones * DAILY_POLLEN_NEED_ADULT_DRONE )

  let needPollenLarvae (TotalLarvae * DAILY_POLLEN_NEED_LARVA
      + TotalDroneLarvae * DAILY_POLLEN_NEED_DRONE_LARVA )

  set DailyPollenConsumption_g (needPollenAdult + needPollenLarvae) / 1000 ; [g]
  set PollenStore_g PollenStore_g - DailyPollenConsumption_g


  ;##############################################################PollenModule / ELRtModule############################################################################
  ;The Pollen Consumption with the new Pollen List is done in this Procedure
  ConsumptionFunc
  ;Set PollenStore_g to sum of fresh pollen in PollenStoreList_g, as "PollenStore_g" is used at different points in the code. This is easier than replacing each use of "PollenStore_g"
  UpdatePollenStore

  ; ELRtModule
  ;The Ideal Pollenstore is set to a rolling average of the last days.
 ; set AverageIdealPollenList lput (DailyPollenConsumption_g * pollenStoreLasting_d) AverageIdealPollenList
 ; set AverageIdealPollenList remove-item 0 AverageIdealPollenList
 ; set IdealPollenStore_g mean AverageIdealPollenList


  ;######################################################################################################################

  set IdealPollenStore_g DailyPollenConsumption_g * pollenStoreLasting_d

    if PollenStore_g < 0
  [
    set PollenStore_g 0
  ]


  if IdealPollenStore_g < MIN_IDEAL_POLLEN_STORE
  [
    set IdealPollenStore_g MIN_IDEAL_POLLEN_STORE
  ]

  ; PollenIdeal: switch in GUI, if true: pollen stores are always "ideal":
  if PollenIdeal = true
  [
    set PollenStore_g IdealPollenStore_g
  ]

  ; if no more pollen is left, protein stores of nurse bees are reduced.
  ;Assumption: protein stores of nurses can last for 7d, if the max. amount of brood (rel. to # nurses) is present, or proportionally longer if less brood is present:
  let workloadNurses 0
  if (TotalIHbees + TotalForagers * FORAGER_NURSING_CONTRIBUTION) * MAX_BROOD_NURSE_RATIO > 0
  [
    set workloadNurses
      TotalWorkerAndDroneBrood /
        ((TotalIHbees + TotalForagers * FORAGER_NURSING_CONTRIBUTION) * MAX_BROOD_NURSE_RATIO)
  ]

  ifelse (sum PollenStoreList_g) > 0  ;ELRtModule;  Originially uses "PollenStore_g > 0", but Nurse Bees (probably) consume any stored Pollen if there is a shortage
    [
      set ProteinFactorNurses ProteinFactorNurses + (1 / PROTEIN_STORE_NURSES_d)
    ] ;  IF pollen in present in colony, nurses can restore the protein stores of
      ; their bodies (within 7d)
    [
      set ProteinFactorNurses ProteinFactorNurses - (workloadNurses / PROTEIN_STORE_NURSES_d)
    ] ; ELSE protein content of brood food decreases, depending on brood to nurse ratio

  if ProteinFactorNurses > 1 [ set ProteinFactorNurses 1 ]
    ; range of ProteinFactorNurses between 1..

  if ProteinFactorNurses < 0 [ set ProteinFactorNurses 0 ]  ; .. and 0
end

; ********************************************************************************************************************************************************************************

to HoneyConsumptionProc
  let DAILY_HONEY_NEED_ADULT_RESTING 11 ; 15 ; (11)
    ; [mg/Day of honey] Rortais et al 2005: Winter bees: 11 mg/d (based on
    ; assumptions from Winston, 1987)

  let DAILY_HONEY_NEED_NURSES 53.42  ; (53.42) [mg/Day of honey]
    ; Rortais et al 2005: average for "brood attending" 34-50mg sugar/d => 43-64mg/d honey

  let THERMOREGULATION_BROOD (DAILY_HONEY_NEED_NURSES - DAILY_HONEY_NEED_ADULT_RESTING)
    / MAX_BROOD_NURSE_RATIO
    ;  additional cost per broodcell (e.g. Thermoregulation): difference between nursing
    ; and resting divided by # broodcells;

  let DAILY_HONEY_NEED_LARVA 65.4 / (PUPATION_AGE - HATCHING_AGE) ; [mg/day]
    ; = 10.9[mg] HONEY per Day per larvae  = 163.5mg nectar in total * 0.4
    ; (0.4: Nectar to honey); HoPoMo =  65.4 mg / 6

  let DAILY_HONEY_NEED_DRONE_LARVA 19.2 ;
    ; [mg/Day of honey] Rortais et al 2005: 98.2mg sugar in 6.5d
    ; sugar to honey: x1.272 i.e. 124.9mg honey in total or 19.2 mg/d

  let DAILY_HONEY_NEED_ADULT_DRONE 10  ;
    ; (9.806 = 10mg honey per day): Winston p62: resting drone 1-3mg sugar/hr
    ; flying drone: 14mg/hr (Mindt 1962); assumptions: 22h resting, 2h flying (MB);
    ; 1 mg sucrose = 17J; 1kJ = 0.008013g Honig

  ; honey costs of all adults, in-hive bees, foragers and drones:
  let needHoneyAdult
      (TotalIHbees + TotalForagers) * DAILY_HONEY_NEED_ADULT_RESTING
      + TotalDrones * DAILY_HONEY_NEED_ADULT_DRONE

  let needHoneyLarvae
      TotalLarvae * DAILY_HONEY_NEED_LARVA
       + TotalDroneLarvae * DAILY_HONEY_NEED_DRONE_LARVA

  set DailyHoneyConsumption
     needHoneyAdult + needHoneyLarvae + TotalWorkerAndDroneBrood
      * THERMOREGULATION_BROOD  ; [mg]

  ; the honey consumption is removed from the honey stores:
  set HoneyEnergyStore
      HoneyEnergyStore
      - (DailyHoneyConsumption / 1000) * ENERGY_HONEY_per_g

  ; sum up the total honey consumption as potential output:
  set CumulativeHoneyConsumption
     CumulativeHoneyConsumption  + DailyHoneyConsumption  ;[mg]

  ; HoneyIdeal: switch in GUI, if true: honey stores are always full:
  if HoneyIdeal = true
  [
    set HoneyEnergyStore MAX_HONEY_ENERGY_STORE
  ]
end

; ********************************************************************************************************************************************************************************

to BeekeepingProc
  let winterPauseStart 320 ; 320 = mid November
  let winterPauseStop 45 ; 45 = mid February
  let minWinterStore_kg 16 ; [kg] honey
  let minSummerStore_kg 3   ; [kg]
  let addedFondant_kg 1 ; [kg]
  ;let addedPollen_kg 0.5  ; [kg]

  ; FEEDING OF COLONY:
  ask Signs with [shape = "ambrosia"] [ hide-turtle]

  if FeedBees = true
     and day < winterPauseStart
     and day > winterPauseStop
     and HoneyEnergyStore / ( ENERGY_HONEY_per_g * 1000 ) < minSummerStore_kg
       ; feeding colony in spring or summer
  [
    set TotalHoneyFed_kg TotalHoneyFed_kg + addedFondant_kg
    set HoneyEnergyStore HoneyEnergyStore + (addedFondant_kg * ENERGY_HONEY_per_g * 1000)
    output-type "Feeding colony on day "
    output-type ceiling (day mod 30.4374999) ; day
    output-type "."
    output-type floor(day / (365.25 / 12)) + 1 ; month
    output-type "."
    output-type ceiling (ticks / 365)     ; year
    output-type " Fondant provided [kg]: "
    output-type precision addedFondant_kg 1
    output-type " total food added [kg]: "
    output-print precision TotalHoneyFed_kg 1
    ask Signs with [shape = "ambrosia"] [ show-turtle]
  ]

  if FeedBees = true
    and day = winterPauseStart
    and HoneyEnergyStore / ( ENERGY_HONEY_per_g * 1000 ) < minWinterStore_kg
      ; feeding colony before winter
  [
    set TotalHoneyFed_kg TotalHoneyFed_kg
       + minWinterStore_kg
       -(HoneyEnergyStore / ( ENERGY_HONEY_per_g * 1000 ))

    output-type "Feeding colony on day "
    output-type day
    output-type ". Ambrosia fed [kg]: "
    output-type precision (minWinterStore_kg - (HoneyEnergyStore / ( ENERGY_HONEY_per_g * 1000 ))) 1
    output-type " total food added [kg]: "
    output-print precision TotalHoneyFed_kg 1
    set HoneyEnergyStore minWinterStore_kg * 1000 * ENERGY_HONEY_per_g
       ; if honey store is smaller than minWinterStore it is filled up to minWinterStore

    ask Signs with [shape = "ambrosia"] [ show-turtle]
  ]

  ; ADD BEES TO WEAK COLONY - a weak colony is "merged" with another
  ; (not modelled!) weak colony (all of them are healthy):
  ask signs with [shape = "colonies_merged"] [ hide-turtle ]
  if MergeWeakColonies = true
    and (TotalIHbees + TotalForagers) < MergeColoniesTH
    and day = winterPauseStart
  [
    set TotalBeesAdded TotalBeesAdded + MergeColoniesTH
    output-type "Merging colonies in autumn! "
    output-type " # added bees: "
    output-type MergeColoniesTH
    output-type " total bees added: "
    output-print TotalBeesAdded
    ask signs with [shape = "colonies_merged"] [ show-turtle ]

    create-foragerSquadrons (MergeColoniesTH / SQUADRON_SIZE)
    [
      set age 60 + random 40
      setxy 30 9
      set color grey
      set size 2
      set heading 90
      set shape "bee_mb_1"
      set mileometer random (MAX_TOTAL_KM / 5)
      set activity "resting"
      set activityList [ ]
      set cropEnergyLoad 0 ; [kJ] no nectar in the crop yet
      set collectedPollen 0 ; [g] no pollen pellets
      set knownNectarPatch -1  ; -1 = no nectar Flower patch known
      set knownPollenPatch -1 ; -1 = no pollen Flower patch known
      set pollenForager false ; new foragers are nectar foragers
      set infectionState "healthy"
        ; possible infection states are: "healthy" "infectedAsPupa" "infectedAsAdult"
    ]
  ]  ; if MergeWeakColonies = true  ...

  ; ADDING POLLEN IN SPRING:
  ask signs with [shape = "pollengrain"] [ hide-turtle ]
  if AddPollen = true and day < 100 and ColonyDied = false ; day 90: end of March
  [
    ask signs with [shape = "pollengrain"] [ show-turtle ]
    set TotalPollenAdded TotalPollenAdded + addedPollen_kg
    output-type "Added pollen [kg]: "
    output-type addedPollen_kg
    output-type " total pollen added [kg]: "
    output-print TotalPollenAdded
    set PollenStore_g PollenStore_g + addedPollen_kg * 1000

    set PollenStoreList_g replace-item 0 PollenStoreList_g (item 0 PollenStoreList_g + day / 2)

  ]

  ask Signs with [shape = "honeyjar"] [ hide-turtle ]
  if ((Day >=  HarvestingDay)
    and (Day <  HarvestingDay + HarvestingPeriod)
    and (HoneyHarvesting = true))
      ; honey can only be harvested within HarvestingPeriod
  [
    if HoneyEnergyStore / ( ENERGY_HONEY_per_g * 1000 ) > HarvestingTH
    [
      set HarvestedHoney_kg (HoneyEnergyStore  / (ENERGY_HONEY_per_g * 1000)) - RemainingHoney_kg
      set HoneyEnergyStore HoneyEnergyStore - (HarvestedHoney_kg * ENERGY_HONEY_per_g * 1000)
      set TotalHoneyHarvested_kg TotalHoneyHarvested_kg + HarvestedHoney_kg
      output-type "Honey harvest on day "
      output-type ceiling (day mod 30.4374999)
      output-type "."
      output-type floor(day / (365.25 / 12)) + 1
      output-type "."
      output-type ceiling (ticks / 365)
      output-type ". Amount [kg]: "
      output-type precision HarvestedHoney_kg 1
      output-type " total honey harvested: "
      output-print precision TotalHoneyHarvested_kg 1
      ask Signs with [shape = "honeyjar"]
      [
        show-turtle
        set label precision HarvestedHoney_kg 1
      ]
    ]
  ]

  if QueenAgeing = true
  [
    let requeening true ; true
    if requeening = true and Queenage >= 375
    [
      set Queenage 10
      output-print word "New queen inserted on day " day
    ]  ; old queen is replaced by the beekeeper
   ]

  ; begin ***NEW FOR BEEHAVE_BEEMAPP2015***
    ; let treatmentDay 270   ; 270: 27.September
    ; let treatmentDuration 40  ; (28-40d) Fries et al. 1994
    ; let treatmentEfficiency 0.115
    ; (0.115) Fries et al. 1994 kills X*100% of phoretic mites each treatment Day

  ; treatment #1:
  if EfficiencyPhoretic > 1 [ set EfficiencyPhoretic 1 ]
  ifelse ((varroaTreatment = true) and (Day >= treatmentDay)
    and (Day <=  treatmentDay + treatmentDuration ))
    [
      set PhoreticMites round(PhoreticMites * (1 - EfficiencyPhoretic))
      ask signs with [shape = "x" or shape = "varroamite03"] [ show-turtle]



      if KillOpenBrood = true
        [
          ask (turtle-set eggCohorts larvaeCohorts) with [ age < PUPATION_AGE ] [ set number 0 ]
          ask (turtle-set droneEggCohorts droneLarvaeCohorts) with [ age < DRONE_PUPATION_AGE ] [ set number 0 ]
          ask miteOrganisers with [ age <= 10 ] ; i.e. those mite organisers, connected to dying larvae cohorts
          [
            if age < 10 ; for workers: age 10 brood is already capped, i.e. not affected!
              [ set workerCellListCondensed n-values (MAX_INVADED_MITES_WORKERCELL + 1) [ 0 ]]
            set droneCellListCondensed n-values (MAX_INVADED_MITES_DRONECELL + 1) [ 0 ]
            let memoInvadedW invadedWorkerCohortID
            let memoInvadedD invadedDroneCohortID
            if any? turtles with [ who = memoInvadedW ] [ set workerCellListCondensed replace-item 0 workerCellListCondensed [number] of turtle invadedWorkerCohortID ]
            if any? turtles with [ who = memoInvadedD ] [ set droneCellListCondensed replace-item 0 droneCellListCondensed [number] of turtle invadedDroneCohortID ]
          ]
        ]

     if KillAllMitesInCells = true
        [
          ask miteOrganisers
          [
            set workerCellListCondensed n-values (MAX_INVADED_MITES_WORKERCELL + 1) [ 0 ]
            set droneCellListCondensed n-values (MAX_INVADED_MITES_DRONECELL + 1) [ 0 ]
            let memoInvadedW invadedWorkerCohortID
            let memoInvadedD invadedDroneCohortID
            if any? turtles with [ who = memoInvadedW ] [ set workerCellListCondensed replace-item 0 workerCellListCondensed [number] of turtle invadedWorkerCohortID ]
            if any? turtles with [ who = memoInvadedD ] [ set droneCellListCondensed replace-item 0 droneCellListCondensed [number] of turtle invadedDroneCohortID ]
          ]
        ]
    ]
    [
      ask signs with [shape = "x" or shape = "varroamite03"] [ hide-turtle]
    ]

  ; treatment #2:
  if EfficiencyPhoretic2 > 1 [ set EfficiencyPhoretic2 1 ]
  if ((varroaTreatment = true) and (Day >= treatmentDay2)
    and (Day <=  treatmentDay2 + treatmentDuration2 ))
    [
      set PhoreticMites round (PhoreticMites * (1 - EfficiencyPhoretic2))
      ask signs with [shape = "x" or shape = "varroamite03"] [ show-turtle]
      if KillOpenBrood2 = true
        [
          ask (turtle-set eggCohorts larvaeCohorts) with [ age < PUPATION_AGE ] [ set number 0 ]
          ask (turtle-set droneEggCohorts droneLarvaeCohorts) with [ age < DRONE_PUPATION_AGE ] [ set number 0 ]
          ask miteOrganisers with [ age <= 10 ] ; i.e. those mite organisers, connected to dying larvae cohorts
          [
            if age < 10 ; for workers: age 10 brood is already capped, i.e. not affected!
              [ set workerCellListCondensed n-values (MAX_INVADED_MITES_WORKERCELL + 1) [ 0 ]]
            set droneCellListCondensed n-values (MAX_INVADED_MITES_DRONECELL + 1) [ 0 ]
            let memoInvadedW invadedWorkerCohortID
            let memoInvadedD invadedDroneCohortID
            if any? turtles with [ who = memoInvadedW ] [ set workerCellListCondensed replace-item 0 workerCellListCondensed [number] of turtle invadedWorkerCohortID ]
            if any? turtles with [ who = memoInvadedD ] [ set droneCellListCondensed replace-item 0 droneCellListCondensed [number] of turtle invadedDroneCohortID ]
          ]
        ]

      if KillAllMitesInCells2 = true
        [
         ask miteOrganisers
          [
            set workerCellListCondensed n-values (MAX_INVADED_MITES_WORKERCELL + 1) [ 0 ]
            set droneCellListCondensed n-values (MAX_INVADED_MITES_DRONECELL + 1) [ 0 ]
            let memoInvadedW invadedWorkerCohortID
            let memoInvadedD invadedDroneCohortID
            if any? turtles with [ who = memoInvadedW ] [ set workerCellListCondensed replace-item 0 workerCellListCondensed [number] of turtle invadedWorkerCohortID ]
            if any? turtles with [ who = memoInvadedD ] [ set droneCellListCondensed replace-item 0 droneCellListCondensed [number] of turtle invadedDroneCohortID ]
          ]
        ]

    ]

  ; removal drone brood:
  if (ContinuousBroodRemoval = true) or (DroneBroodRemoval = true and (day = RemovalDay1 or day = RemovalDay2 or day = RemovalDay3 or day = RemovalDay4 or day = RemovalDay5))
  [
    ask dronePupaeCohorts
    [
      set number 0
      set number_healthy 0
      set number_infectedAsPupa 0
    ]
    ask miteOrganisers with [ age >=  DRONE_PUPATION_AGE + 1 ]
    [
       set droneCellListCondensed n-values (MAX_INVADED_MITES_DRONECELL + 1) [ 0 ]
    ]
    CountingProc
  ]

  ; re-infestation of varroa-mites
  if AllowReinfestation = true
  [
    let additionalMites random-poisson MiteReinfestation
    if DailyForagingPeriod = 0 [ set additionalMites 0 ]
    if phoreticMites + additionalMites > 0
      [ set PhoreticMitesHealthyRate  (phoreticMites * phoreticMitesHealthyRate + additionalMites / 2) / (phoreticMites + additionalMites)] ; assumes 50% of new mites are infected with virus
    set PhoreticMites PhoreticMites + additionalMites
    set TotalMites TotalMites + additionalMites
  ]

  ask miteOrganisers  ; update the number of invaded mites for each mite organiser:
  [
    let counter 0
    set cohortInvadedMitesSum 0
    foreach workerCellListCondensed
    [
      x ->
      set cohortInvadedMitesSum cohortInvadedMitesSum + (x * counter)
      set counter counter + 1
    ]
    set counter 0
    foreach droneCellListCondensed
    [
      x ->
      set cohortInvadedMitesSum cohortInvadedMitesSum + (x * counter)
      set counter counter + 1
    ]
    set label cohortInvadedMitesSum
  ]


  ; end ***NEW FOR BEEHAVE_BEEMAPP2015***




end

; ********************************************************************************************************************************************************************************

;.............................................................................................................................................................................
;              PLOT PROCEDURES
;.............................................................................................................................................................................


; ********************************************************************************************************************************************************************************

to DoPlotsProc
; CAUTION: choosing "age forager squadrons", "mileometer" or "mean total km per day" will affect
; the sequence of random numbers!
; with-local-randomness [  ; to run the procedure is run without affecting subsequent random events
  if showAllPlots = true [ DrawForagingMapProc ]

  ask Signs with [ shape = "arrow" ]
  [
    facexy (xcor + 1000000) (ycor + (HoneyEnergyStore - HoneyEnergyStoreYesterday)
       / ( ENERGY_HONEY_per_g / 1000))

    set label  word "H: " precision ((HoneyEnergyStore - HoneyEnergyStoreYesterday)
        / ( ENERGY_HONEY_per_g * 1000 )) 2

    ifelse (HoneyEnergyStore - HoneyEnergyStoreYesterday)
      / ( ENERGY_HONEY_per_g * 1000 ) >= 0
      [ set color green ]
      [ set color red ]
  ]

  ask Signs with [ shape = "arrowpollen" ]
  [
    facexy (xcor - 100) (ycor + (PollenStore_g - PollenStore_g_Yesterday))
    set label word "P: " precision ((PollenStore_g - PollenStore_g_Yesterday) / 1000) 2
    ifelse (PollenStore_g - PollenStore_g_Yesterday) > 0
      [ set color green ]
      [ set color red ]
  ]

  ask Signs with [shape = "pete"]
  [
    ifelse VarroaTreatment = true
           or FeedBees = true
           or HoneyHarvesting = true
           or AddPollen
           or MergeWeakColonies = TRUE
      [ show-turtle]
      [ hide-turtle ]
  ]

  ; calling GenericPlottingProc (8x) with plotname & plotChoice as input:
  GenericPlottingProc "Generic plot 1" GenericPlot1
  GenericPlottingProc "Generic plot 2" GenericPlot2
  GenericPlottingProc "Generic plot 3" GenericPlot3
  GenericPlottingProc "Generic plot 4" GenericPlot4
  GenericPlottingProc "Generic plot 5" GenericPlot5
  GenericPlottingProc "Generic plot 6" GenericPlot6
  GenericPlottingProc "Generic plot 7" GenericPlot7
  GenericPlottingProc "Generic plot 8" GenericPlot8
; ] ; end "with-local-randomness"
end
; ********************************************************************************************************************************************************************************

to GenericPlotClearProc
  ; clear those plots, that only show output of 'today'

  let i 1
  while [ i <= N_GENERIC_PLOTS ]

  [
    let plotname (word "Generic plot " i)
      ; e.g. "Generic plot 1"
     if (i = 1 and (GenericPlot1 = "foragers today [%]" or GenericPlot1 = "active foragers today [%]"))
     or (i = 2 and (GenericPlot2 = "foragers today [%]" or GenericPlot2 = "active foragers today [%]"))
     or (i = 3 and (GenericPlot3 = "foragers today [%]" or GenericPlot3 = "active foragers today [%]"))
     or (i = 4 and (GenericPlot4 = "foragers today [%]" or GenericPlot4 = "active foragers today [%]"))
     or (i = 5 and (GenericPlot5 = "foragers today [%]" or GenericPlot5 = "active foragers today [%]"))
     or (i = 6 and (GenericPlot6 = "foragers today [%]" or GenericPlot6 = "active foragers today [%]"))
     or (i = 7 and (GenericPlot7 = "foragers today [%]" or GenericPlot7 = "active foragers today [%]"))
     or (i = 8 and (GenericPlot8 = "foragers today [%]" or GenericPlot8 = "active foragers today [%]"))
        [
          set-current-plot plotname
          clear-plot
        ]
    set i i + 1
  ]
end
; ********************************************************************************************************************************************************************************



to GenericPlottingProc [ plotname plotChoice ]
 set TotalEventsToday NectarFlightsToday + PollenFlightsToday + EmptyFlightsToday
 set-current-plot plotname

 set TotalWeightBees_kg
   ( TotalEggs * 0.0001     ; 0.0001g (wegg, HoPoMo)
     + TotalLarvae * 0.0457
         ; 0.0457g : average weight of a larva (using wlarva 1..5 from HoPoMo (p. 231)
     + TotalPupae * 0.16      ; 0.16g wpupa (HoPoMo)
     + (TotalIHbees + TotalForagers) * WEIGHT_WORKER_g      ; 0.1g wadult (HoPoMo)
     + TotalDroneEggs * 0.0001
     + TotalDrones * 0.22
         ; 0.22g (Rinderer, Collins, Pesante (1985), Apidologie)
     + TotalDroneLarvae *(0.1 * (0.22 / WEIGHT_WORKER_g))
        ; estimation of drone larva weight on basis of worker larva weight and
        ; adult worker:drone weight
        ; 0.10054 = 0.0457*2.2 = estimated drone larva weight
     + TotalDronePupae * (0.16 * (0.22 / WEIGHT_WORKER_g))
        ; estimation of drone pupa weight on basis of worker pupa weight and adult worker:drone weight
    ) / 1000 ; [g] -> [kg]

  if plotChoice = "colony weight [kg]" ; total weight of the colony without hive/supers etc.
  [
    create-temporary-plot-pen "weight"
    plot TotalWeightBees_kg ;
  ]

  if plotChoice = "foragingPeriod"
    [
     create-temporary-plot-pen "period"
     plotxy ticks DailyForagingPeriod / 3600
    ]
  if plotChoice = "# completed foraging trips (E-3)"
    [
      create-temporary-plot-pen "# trips"
      plotxy ticks totalEventsToday / 1000
    ]

 if plotChoice = "trips per hour sunshine (E-3)"
    [
      create-temporary-plot-pen "trips/h"
      ifelse DailyForagingPeriod > 0
       [ plotxy ticks (TotalEventsToday / 1000) / (DailyForagingPeriod / 3600) ]
       [ plotxy ticks 0 ]
    ]

 if plotChoice = "active foragers [%]"
    [
      create-temporary-plot-pen "active%"
      set-plot-y-range  0 100
      set-plot-pen-mode 1 ; 1: bars
      ifelse TotalForagers > 0
        [ plotxy ticks (100 * SQUADRON_SIZE
                 * (count foragersquadrons with [km_today > 0])) / TotalForagers ]
        [ plotxy ticks 0 ]
    ]

 if plotChoice = "mean trip duration"
    [
      create-temporary-plot-pen "trip [min]"
      set-plot-pen-mode 1 ; 1: bars
      ifelse ForagingRounds > 0
       [ plotxy ticks ( DailyForagingPeriod  / (ForagingRounds * 60)) ]
        ; mean Foraging trip duration [min] on this day
       [ plotxy ticks 0 ] ; if no foraging takes place
    ]

 if plotChoice = "mean total km per day"
    [
      create-temporary-plot-pen "km/d"
      set-plot-pen-mode 0 ; 0: lines
      ifelse count foragerSquadrons > 0
        [ plotxy ticks mean [km_today] of foragerSquadrons ]
        [ plotxy ticks 0 ]
    ]

 if plotChoice = "mileometer"
    [
      create-temporary-plot-pen "km"
      set-plot-x-range  0 850
      set-plot-y-range  0 40
      set-plot-pen-mode 1 ; 1: bars
      set-plot-pen-interval 25
      histogram [ mileometer ] of foragerSquadrons
    ]


 if plotChoice = "loads returning foragers [%]"
    [
      set totalEventsToday NectarFlightsToday + PollenFlightsToday + EmptyFlightsToday
      ifelse totalEventsToday > 0
        [
          create-temporary-plot-pen "nectar"
          set-plot-pen-color yellow
          plotxy ticks (100 * NectarFlightsToday) / totalEventsToday
          create-temporary-plot-pen "pollen"
          set-plot-pen-color orange
          plotxy ticks (100 * PollenFlightsToday) / totalEventsToday
          create-temporary-plot-pen "empty"
          set-plot-pen-color cyan
          plotxy ticks (100 * EmptyFlightsToday) / totalEventsToday
        ]
        [
          create-temporary-plot-pen "nectar"
          set-plot-pen-color yellow
          plotxy ticks 0
          create-temporary-plot-pen "pollen"
          set-plot-pen-color orange
          plotxy ticks 0
          create-temporary-plot-pen "empty"
          set-plot-pen-color cyan
          plotxy ticks 0
        ]
    ]

  if plotChoice = "broodcare [%]"
    [
      set-plot-y-range 0 150
      create-temporary-plot-pen "Protein"
        set-plot-pen-color orange
        plot ( ProteinFactorNurses * 100 )  ; Proteinfactor of nurses [%]
      create-temporary-plot-pen "Workload"
       if ((TotalIHbees + TotalForagers * FORAGER_NURSING_CONTRIBUTION)
         * MAX_BROOD_NURSE_RATIO) > 0 ; avoids division by 0
       [
         plot ( 100 * (TotalWorkerAndDroneBrood / ((TotalIHbees + TotalForagers
              * FORAGER_NURSING_CONTRIBUTION) * MAX_BROOD_NURSE_RATIO)) )
       ]

      create-temporary-plot-pen "Pollen"
        set-plot-pen-color green
        plot (PollenStore_g / IdealPollenStore_g) * 100
    ]


 if plotChoice = "consumption [g/day]"
    [
      create-temporary-plot-pen "honey"
        set-plot-pen-color yellow
        plot (DailyHoneyConsumption / 1000)  ;[g/day]

      create-temporary-plot-pen "pollen"
        set-plot-pen-color orange
        plot (DailyPollenConsumption_g)   ;[g/day]
    ]


 if plotChoice = "drones"
    [
      create-temporary-plot-pen "Eggs"  ; DRONE eggs
        set-plot-pen-color blue
        plot (TotalDroneEggs)
      create-temporary-plot-pen "Larvae"  ; DRONE larvae
        set-plot-pen-color yellow
        plot (TotalDroneLarvae)
      create-temporary-plot-pen "Pupae"   ; DRONE pupae
        set-plot-pen-color brown
        plot (TotalDronePupae)
      create-temporary-plot-pen "Drones"
        plot (TotalDrones)
    ]



 if plotChoice = "colony structure workers"
    [
      create-temporary-plot-pen "Eggs"
        set-plot-pen-color blue
        plot (TotalEggs)
      create-temporary-plot-pen "Larvae"
        set-plot-pen-color yellow
        plot (TotalLarvae)
      create-temporary-plot-pen "Pupae"
        set-plot-pen-color brown
        plot (TotalPupae)
      create-temporary-plot-pen "IHbees"
        set-plot-pen-color orange
        plot (TotalIHbees)
      create-temporary-plot-pen "Foragers"
        set-plot-pen-color green
        plot (TotalForagers)
      create-temporary-plot-pen "Adults"
        set-plot-pen-color black
        plot (TotalForagers + TotalIHbees)
      create-temporary-plot-pen "Brood"
        set-plot-pen-color violet
        plot (TotalEggs + TotalLarvae + TotalPupae)
      create-temporary-plot-pen "AllPop"
        set-plot-pen-color red
        plot (TotalEggs + TotalLarvae + TotalPupae + TotalForagers + TotalIHbees)
      create-temporary-plot-pen "BroodPheromone"
        set-plot-pen-color magenta
        plot (BroodPheromone)
    ]




  let totalNectarAvailableToDay 0
  let totalPollenAvailableToDay 0
  ask flowerPatches
  [
    set totalNectarAvailableToDay totalNectarAvailableToDay + quantityMyl
    set totalPollenAvailableToDay totalPollenAvailableToDay + amountPollen_g
  ]

 if plotChoice = "nectar availability [l]"
  [
    ifelse readInfile = false
      [
        create-temporary-plot-pen "Patch 0"
          set-plot-pen-color red
          plot (([ quantityMyl ] of flowerPatch 0 ) / 1000000 )  ;[l] nectar
        create-temporary-plot-pen "Patch 1"
          set-plot-pen-color green
          plot (([ quantityMyl ] of flowerPatch 1 ) / 1000000 )  ;[l] nectar
      ]
      [
        create-temporary-plot-pen "all patches"
        set-plot-pen-color yellow ; black
        plot (totalNectarAvailableToDay / 1000000 )  ;[l] nectar
      ]
  ]


  if plotChoice =  "pollen availability [kg]"
  [
    ifelse readInfile = false
      [
        create-temporary-plot-pen "Patch 0"
          set-plot-pen-color red
          plot (([ amountPollen_g ] of flowerPatch 0 ) / 1000 )  ; [kg] pollen
        create-temporary-plot-pen "Patch 1"
          set-plot-pen-color green
          plot (([ amountPollen_g ] of flowerPatch 1 ) / 1000 )  ; [kg] pollen
      ]
      [
        create-temporary-plot-pen "all patches"
          set-plot-pen-color orange; black
          plot (totalPollenAvailableToDay / 1000 )  ; [kg] pollen
      ]
  ]

 if plotChoice = "egg laying"
 [
  create-temporary-plot-pen "new eggs"
  plot (NewWorkerEggs)
 ]

  if plotChoice = "honey gain [kg]"
    [
      set-plot-y-range -3 10
      create-temporary-plot-pen "gain"
      set-plot-pen-mode 1 ; 1: bars
      ifelse (HoneyEnergyStore - HoneyEnergyStoreYesterday) / ( ENERGY_HONEY_per_g * 1000 ) < 0
        [ set-plot-pen-color red ]
        [ set-plot-pen-color black ]
      plotxy ticks (HoneyEnergyStore - HoneyEnergyStoreYesterday) / ( ENERGY_HONEY_per_g * 1000 )
    ]

 if plotChoice = "honey & pollen stores [kg]"
 [ create-temporary-plot-pen "honey"
     set-plot-pen-color yellow
     plot (HoneyEnergyStore / ( ENERGY_HONEY_per_g * 1000 ) )  ;[ml] honey
  ; create-temporary-plot-pen "decent honey"
  ;    set-plot-pen-color brown
  ;   plot (TotalIHbees + TotalForagers ) * 0.0015
     ;; 1.5g honey per bee = estimated honey necessary for the colony to survive the winter
   create-temporary-plot-pen "pollen x 20"
     set-plot-pen-color orange
     plot 20 * (PollenStore_g / 1000)  ;[kg * 10] pollen stored in the colony in kg
 ]

  if plotChoice = "mites"
  [
    create-temporary-plot-pen "totalMites"
      plot (TotalMites)  ; # all mites (phoretic & in cells)
    create-temporary-plot-pen "phoreticMites"
      set-plot-pen-color brown
      plot (PhoreticMites)  ; # phoretic mites
    create-temporary-plot-pen "phoreticMitesInfected"
      set-plot-pen-color red
      plot (PhoreticMites * (1 - PhoreticMitesHealthyRate))  ; # infected phoretic mites
    create-temporary-plot-pen "phoreticMitesHealthy"
      set-plot-pen-color green
      plot (PhoreticMites * PhoreticMitesHealthyRate)  ; # healthy phoretic mites
    create-temporary-plot-pen "miteDrop x 10"
      set-plot-pen-color violet
      plot (DailyMiteFall * 10)  ; # dropping mites
  ]

  if plotChoice = "proportion infected mites"
  [
    create-temporary-plot-pen "proportion"
    ;if TotalMites > 0 [ plotxy ticks (1 - PhoreticMitesHealthyRate) ]  ; ***NEW FOR BEEHAVE_BEEMAPP2015***
    plotxy ticks (1 - PhoreticMitesHealthyRate)  ; ***NEW FOR BEEHAVE_BEEMAPP2015***
  ]

  if plotChoice = "aff & lifespan"
  [
    create-temporary-plot-pen "aff"
      set-plot-y-range 0 200
      set-plot-pen-mode 1 ; 1: bars
      if count foragerSquadrons with [age = aff] > 0
         [ plotxy ticks (aff) ]
    create-temporary-plot-pen "lifespan"
      set-plot-pen-color green
      set-plot-pen-mode 2 ; 2: dots
      ifelse (DeathsAdultWorkers_t > 0)
        and ((SumLifeSpanAdultWorkers_t / deathsAdultWorkers_t) < MIN_AFF)
           [ plot-pen-down ]
           [ plot-pen-up  ]
      plot (SumLifeSpanAdultWorkers_t / (DeathsAdultWorkers_t + 0.0000001)) ; to avoid division by 0
  ]

  if plotChoice =  "age forager squadrons"
  [
    set-plot-y-range 0 10
    set-plot-x-range 0 300

    create-temporary-plot-pen "foragersHealthy"
      set-plot-pen-mode 1 ; 1: bars
      set-plot-pen-interval 1
      histogram [ age ] of foragerSquadrons
        with [ infectionState = "healthy" ]

    create-temporary-plot-pen "foragersDiseased"
      set-plot-pen-mode 1 ; 1: bars
      set-plot-pen-interval 1
      set-plot-pen-color red
      histogram [ age ] of foragerSquadrons
        with [ infectionState = "infectedAsPupa" ]
        ; infectedAsPupa = true or infectedAsAdult = true ]

    create-temporary-plot-pen "foragersCarrier"
      set-plot-pen-mode 1 ; 1: bars
      set-plot-pen-interval 1
      set-plot-pen-color blue
      histogram [ age ] of foragerSquadrons
        with [ infectionState = "infectedAsAdult" ]
  ]

end


; ********************************************************************************************************************************************************************************

to DrawForagingMapProc
; CAUTION: choice of ForagingMap and DotDensity affects the sequence of random numbers!
; with-local-randomness [  ; procedure is run without affecting subsequent random events
  set-current-plot "foraging map"
  set-current-plot-pen "default"
  clear-plot
  let xplot 0
  let yplot 0
  ask flowerPatches
  [
    if ForagingMap = "Nectar foraging"
    [
      repeat nectarVisitsToday * DotDensity
      [
        let radius sqrt(size_sqm / pi)
          ; the (hypothetical) radius of the patch (assumed to be circular)

        set xplot (xcorMap - radius) + (random-float (2 * radius))
          ; x coordinate randomly chosen from centre +- radius

        let yRange sqrt((radius ^ 2) - ((xplot - xcorMap) ^ 2))
          ; calculate the range of possible y-coordinates for chosen x-coordinate,

        set yplot (ycorMap - yRange) + (random-float (2 * yRange))
          ; y coordinate randomly chosen from the range of possible values

        set-plot-pen-color yellow
        plotxy xplot yplot
      ]
    ]

    if ForagingMap = "Pollen foraging"
    [
      repeat pollenVisitsToday * DotDensity
      [
        let radius sqrt(size_sqm / pi)
        ; the (hypothetical) radius of the patch (assumed to be circular)

        set xplot (xcorMap - radius) + (random-float (2 * radius))
          ; x coordinate randomly chosen from centre +- radius

        let yRange sqrt((radius ^ 2) - ((xplot - xcorMap) ^ 2))
          ; calculate the range of possible y-coordinates for chosen x-coordinate,

        set yplot (ycorMap - yRange) + (random-float (2 * yRange))
          ; y coordinate randomly chosen from the range of possible values )

        set-plot-pen-color orange
        plotxy xplot yplot
      ]
    ]

    if ForagingMap = "All visits"
    [
      repeat (nectarVisitsToday + pollenVisitsToday) * DotDensity
      [
        let radius sqrt(size_sqm / pi)
          ; the (hypothetical) radius of the patch (assumed to be circular)

        set xplot (xcorMap - radius) + (random-float (2 * radius))
          ; x coordinate randomly chosen from centre +- radius

        let yRange sqrt((radius ^ 2) - ((xplot - xcorMap) ^ 2))
          ; calculate the range of possible y-coordinates for chosen x-coordinate,

        set yplot (ycorMap - yRange) + (random-float (2 * yRange))
          ; y coordinate randomly chosen from the range of possible values

        set-plot-pen-color black
        plotxy xplot yplot
      ]
    ]

     if ForagingMap = "All patches"
     [
       repeat 10000 * DotDensity
       [
         let radius sqrt(size_sqm / pi)
           ; the (hypothetical) radius of the patch (assumed to be circular)

         set xplot (xcorMap - radius) + (random-float (2 * radius))
           ; x coordinate randomly chosen from centre +- radius

         let yRange sqrt((radius ^ 2) - ((xplot - xcorMap) ^ 2))
           ; calculate the range of possible y-coordinates for chosen x-coordinate,

         set yplot (ycorMap - yRange) + (random-float (2 * yRange))
           ; y coordinate randomly chosen from the range of possible values

         if patchType = "YellowField"
            or patchType = "OilSeedRape"
         [
           set-plot-pen-color yellow
         ]
         if patchType = "RedField" [ set-plot-pen-color red ]
         if patchType = "BlueField" [ set-plot-pen-color blue ]
         if patchType = "GreenField" [ set-plot-pen-color green ]
         plotxy xplot yplot
       ]
     ]

     if ForagingMap = "Available patches"
     [
       let proportionPollen 0
       let pollenAvailable amountPollen_g / POLLENLOAD
         ; # pollen loads available

       let nectarAvailable quantityMyl / CROPVOLUME
         ; # crop loads available

       if pollenAvailable + nectarAvailable > 0
       [
         set proportionPollen pollenAvailable / (pollenAvailable + nectarAvailable)
       ]

       repeat round sqrt((pollenAvailable + nectarAvailable) * DotDensity)
         ; sqrt to avoid too many repeats
       [
         let radius sqrt(size_sqm / pi)
           ; the (hypothetical) radius of the patch (assumed to be circular)

         set xplot (xcorMap - radius) + (random-float (2 * radius))
           ; x coordinate randomly chosen from centre +- radius

         let yRange sqrt((radius ^ 2) - ((xplot - xcorMap) ^ 2))
           ; calculate the range of possible y-coordinates for chosen x-coordinate,

         set yplot (ycorMap - yRange) + (random-float (2 * yRange))
           ; y coordinate randomly chosen from the range of possible values

         ifelse random-float 1 < proportionPollen
           [ set-plot-pen-color orange ]
           [ set-plot-pen-color yellow ]
         plotxy xplot yplot
       ]
     ]

     if ForagingMap = "Nectar and Pollen"
     [
       let proportionPollen 0
       if pollenVisitsToday + nectarVisitsToday > 0
       [
         set proportionPollen pollenVisitsToday
          / ( pollenVisitsToday
            + nectarVisitsToday )
       ]

       repeat (pollenVisitsToday + nectarVisitsToday) * DotDensity
       [
         let radius sqrt(size_sqm / pi)
           ; the (hypothetical) radius of the patch (assumed to be circular)

         set xplot (xcorMap - radius) + (random-float (2 * radius))
           ; x coordinate randomly chosen from centre +- radius

         let yRange sqrt((radius ^ 2) - ((xplot - xcorMap) ^ 2))
         set yplot (ycorMap - yRange) + (random-float (2 * yRange))
         ifelse random-float 1 < proportionPollen
           [ set-plot-pen-color orange ]
           [ set-plot-pen-color yellow ]
         plotxy xplot yplot
       ]
     ]
    ]  ; end of: "Ask flowerpatches"

  set-plot-pen-color brown  ; draw the colony:
  repeat 10000
  [
    plotxy (-50 + random 100) (-50 + random 100)
  ]
; ]   ; end "local randomness"
end

; ********************************************************************************************************************************************************************************

to WriteToFileProc
  ; writes data in file, copied from: Netlogo: Library:
  ; Code Examples: "File Output Example"

  let year ceiling (ticks / 365)
  foreach sort flowerPatches
  [
    x -> ask x
    [
      file-print
         ( word year " " word ticks " " ForagingRounds " " word self
           " distance: " distanceToColony
           " concentration: " nectarConcFlowerPatch
           " EEF: " EEF
           " quantity: " quantityMyl)
    ]
  ]

  foreach sort foragerSquadrons
  [
    x -> ask x
    [
      file-print
        (word year " " word ticks " " ForagingRounds " "  word self
          " age: " age
          " km: " mileometer)
    ]
  ]

end

; ********************************************************************************************************************************************************************************

to-report DateREP
  let month-names (list "January" "February" "March" "April" "May" "June" "July" "August" "September" "October" "November" "December")
  let days-in-months (list 31 28 31 30 31 30 31 31 30 31 30 31)


  let year floor (ticks / 365.01) + 1
  let month 0
  let dayOfYear remainder ticks 365
  if dayOfYear = 0 [ set dayOfYear 365 ]
  let dayOfMonth 0
  let sumDaysInMonths 0
  while [ sumDaysInMonths < dayOfYear ]
  [
    set month month + 1
    set sumDaysInMonths sumDaysInMonths + item (month - 1) days-in-months
    set dayOfMonth dayOfYear - sumDaysInMonths + item (month - 1) days-in-months
  ]

  report (word dayOfMonth "  " (item (month - 1) month-names) " " year )

end

; ********************************************************************************************************************************************************************************

to ReadFileProc
  ; reads data in from file, copied from: Netlogo: Library:
  ; Code Examples: "File Input Example"

  ifelse ( file-exists? INPUT_FILE )
    ; We check to make sure the file exists first
    [
      set AllDaysAllPatchesList []
        ; IF: data are saved in a list (list still empty)

      file-open INPUT_FILE
      let dustbin file-read-line
        ; first line of input file with headings is read - but not used for anything

      while [ not file-at-end? ]
      [
        set AllDaysAllPatchesList sentence AllDaysAllPatchesList
           (list (list file-read file-read file-read file-read file-read
                       file-read file-read file-read file-read file-read
                       file-read file-read file-read file-read file-read))]
           ; 15 data colums are read in
        file-close  ; closes file
        set N_FLOWERPATCHES ((length AllDaysAllPatchesList) / 365)
        if (N_FLOWERPATCHES mod 1) != 0
        [
          user-message "Error in Infile - wrong number of lines"
          set BugAlarm true
        ]
    ] ; end "ifelse"
    [
      user-message "There is no such INPUT_FILE in current directory!"
    ]
end

; ********************************************************************************************************************************************************************************


to ReadBeeMappFileProc
  ; reads colony data in from file, created by the BeeMapp app

  ifelse ( file-exists? BeeMapp_FILE )
    [
      set AllBeeMappCorrectionsList []
      file-open BeeMapp_FILE
      let dustbin file-read-line
        ; first line of input file with headings is read - but not used for anything

      while [ not file-at-end? ]
      [
        set AllBeeMappCorrectionsList sentence AllBeeMappCorrectionsList ; 10 columns in BeeMapp input file:
           (list (list ; repeat nColumns [ file-read ]
                       file-read file-read file-read file-read
                       file-read file-read file-read file-read
                  ))]
        set AssessmentNumber 0
        ;(list (list file-read-line ))]


        file-close
    ] ; end "ifelse"
    [
      user-message "There is no such BeeMapp_FILE in current directory!"
    ]
end

; ********************************************************************************************************************************************************************************

to BeeMappCorrectionProc ; ***NEW FOR BEEHAVE_BEEMAPP2015***

  let nextBeeMappCorrectionList item AssessmentNumber AllBeeMappCorrectionsList

  if ticks = item 1 nextBeeMappCorrectionList  ; if day = date of colony next colony assessment
  [
   ; correct honey stores according to real honey stores:
   set HoneyEnergyStore ENERGY_HONEY_per_g * 1000 * item 7 nextBeeMappCorrectionList ;

   ; correct number of workers according to real colony size:
   let correctedNumberWorkers item 6 nextBeeMappCorrectionList ;
   if correctedNumberWorkers < 0 [ set correctedNumberWorkers 0 ]

   ; correct # foragers:
   let correctedNumberForagers correctedNumberWorkers * (totalForagers / (totalIHbees + totalForagers)) ;
   let correctedNumberForagerSquadrons round (correctedNumberForagers / SQUADRON_SIZE)

   ifelse correctedNumberForagerSquadrons * SQUADRON_SIZE < totalForagers
   [
      repeat totalForagers / SQUADRON_SIZE - correctedNumberForagerSquadrons    ; if foragers have to be REMOVED from the simulation
       [ ask one-of foragerSquadrons [ die ] ]
   ]
   [
     repeat correctedNumberForagerSquadrons - totalForagers / SQUADRON_SIZE     ; if foragers have to be ADDED to the simulation
       [ ask one-of foragerSquadrons [ hatch 1 ] ]
   ]

   ; correct # in-hive bees:
   let correctedNumberIHbees correctedNumberWorkers - correctedNumberForagerSquadrons * SQUADRON_SIZE
   let changeNumberBy1 0

   ifelse correctedNumberIHbees - totalIHbees < 0
   [ set changeNumberBy1 -1 ]  ; if IHbees have to be REMOVED from the simulation
   [ set changeNumberBy1 1 ]   ; if IHbees have to be ADDED to the simulation

   repeat sqrt ((correctedNumberIHbees - totalIHbees) ^ 2)
    [
      ask one-of IHbeecohorts with [ number > 0 ]
       [
         let chooseBee 1 + random number  ; to determine which sub-cohort (healthy, infected as pupa or as adult) is affected, depending on number of bees in each cohort
         let changeHealthy false
         let changeInfPupa false
         let changeInfAdult false

         ; determine which sub-cohort is changed:
         if chooseBee <= number_healthy
            [ set changeHealthy true ]

         if chooseBee > number_healthy and chooseBee <= number_healthy + number_infectedAsPupa
            [ set changeInfPupa true ]

         if chooseBee > number_healthy + number_infectedAsPupa and chooseBee <= number_healthy + number_infectedAsPupa + number_infectedAsAdult
            [ set number_infectedAsAdult number_infectedAsAdult + changeNumberBy1 ]


         ; do the change in numbers (separate step, otherwise errors might occur)
         set number number + changeNumberBy1

         if changeHealthy = true
            [ set number_healthy number_healthy + changeNumberBy1 ]

         if changeInfPupa = true
            [ set number_infectedAsPupa number_infectedAsPupa + changeNumberBy1 ]

         if changeInfAdult = true
            [ set number_infectedAsAdult number_infectedAsAdult + changeNumberBy1 ]
       ]
    ]

   ; PRESENCE/ABSENCE of QELP: -1: not assessed, 0: not present, 1: present
   ; new queen, if no queen was found in real colony
   if item 2 nextBeeMappCorrectionList = 0
    [ set Queenage 0 ]


   ; remove eggs, if no eggs were found in real colony
   if item 3 nextBeeMappCorrectionList = 0
   [
     ask eggcohorts [ set number 0 ]
     set NewWorkerLarvae 0
     ask droneeggcohorts [ set number 0]
     set NewDroneLarvae 0
   ]

   ; remove larvae, if no larvae were found in real colony
   if item 4 nextBeeMappCorrectionList = 0
   [
     ask larvaecohorts [ set number 0 ]
     set NewWorkerPupae 0
     ask dronelarvaecohorts [ set number 0 ]
     set NewDronePupae 0
   ]

   ; remove pupae, if no pupae were found in real colony
   if item 5 nextBeeMappCorrectionList = 0
   [
     ask pupaecohorts [ set number 0 set number_healthy 0 set number_infectedAsPupa 0 ]
     set NewIHbees 0
     set NewIHbees_healthy 0
     ask dronepupaecohorts [ set number 0 set number_healthy 0 set number_infectedAsPupa 0 ]
     set NewDrones 0
     set NewDrones_healthy 0
   ]


   if nextBeeMappCorrectionList != last AllBeeMappCorrectionsList ; if current correction is last item in file/AllBeeMappCorrectionsList, then AssessmentNumber is no longer increased
   [
    set AssessmentNumber AssessmentNumber + 1
   ]
  ]

  CountingProc

end


; ********************************************************************************************************************************************************************************

to DefaultProc
; new variables:
set AllowReinfestation FALSE
;set BeeMapp_FILE "ColonyAssessment.txt"
set ContinuousBroodRemoval FALSE
set DroneBroodRemoval FALSE
set EfficiencyPhoretic2 0
; FrameType: no default setting
; HiveType: no default setting
set KillAllMitesInCells FALSE
set KillAllMitesInCells2 FALSE
set KillOpenBrood FALSE
set KillOpenBrood2 FALSE
set MiteReinfestation 0.1
set ReadBeeMappFile FALSE
set RemovalDay1 100
set RemovalDay2 140
set RemovalDay3 180
set RemovalDay4 220
set RemovalDay5 240
set TreatmentDay2 0
set TreatmentDuration2 0
; WeatherFile: no default setting


; new on interface (unchanged default values):
set EfficiencyPhoretic 0.115
set TreatmentDay 270   ; 270: 27.September
set TreatmentDuration 40  ; (28-40d) Fries et al. 1994
set AddedPollen_kg 0.5


; old variables, new default values:
set GenericPlot1 "honey & pollen stores [kg]"

; old variables, removed:
; set Testing "SIMULATION - NO TEST"
; old & unchanged (Beehave2013):
set AddPollen FALSE
set AlwaysDance  FALSE
set CONC_G  1.5
set CONC_R 1.5
set ConstantHandlingTime  FALSE
set CRITICAL_COLONY_SIZE_WINTER  4000
set Details  TRUE
set DANCE_INTERCEPT 0 ; -17.7
set DANCE_SLOPE 1.16
set DETECT_PROB_G 0.2
set DETECT_PROB_R 0.2
set DISTANCE_G  500
set DISTANCE_R 1500
set DotDensity  0.01 ; (affects sequence of random numbers)
set EggLaying_IH  TRUE
set Experiment  "none"
set FeedBees FALSE
set ForagingMap "Nectar and Pollen" ; (affects sequence of random numbers)
set GenericPlot2 "colony structure workers"
set GenericPlot3 "broodcare [%]"
set GenericPlot4 "mites"
set GenericPlot5 "nectar availability [l]"
set GenericPlot6 "pollen availability [kg]"
set GenericPlot7 "mean trip duration"
set GenericPlot8 "foragers today [%]"
set HarvestingDay 135
set HarvestingPeriod 80
set HarvestingTH 20
set HoneyHarvesting  FALSE
set HoneyIdeal  FALSE
;set INPUT_FILE  "Input_2-1_FoodFlow.txt"
set MAX_BROODCELLS  2000099
set MAX_km_PER_DAY  7299
set MAX_HONEY_STORE_kg  50
set MergeColoniesTH 5000
set MergeWeakColonies FALSE
set MiteReproductionModel  "Martin"
set ModelledInsteadCalcDetectProb  FALSE
set N_INITIAL_BEES  10000
set N_INITIAL_MITES_HEALTHY  0
set N_INITIAL_MITES_INFECTED  0
set POLLEN_G_kg 1.0
set POLLEN_R_kg 1.0
set PollenIdeal  FALSE
set ProbLazinessWinterbees 0 ; 0.7
set QUANTITY_G_l 20
set QUANTITY_R_l 20
set QueenAgeing  FALSE
; RAND_SEED: no default setting
set ReadInfile false
set RemainingHoney_kg  5
set SeasonalFoodFlow TRUE
set SHIFT_G -40
set SHIFT_R 30
set ShowAllPlots  TRUE
set SQUADRON_SIZE  100
set StopDead  TRUE
set Swarming  "No swarming"
set TIME_NECTAR_GATHERING 1200
set TIME_POLLEN_GATHERING 600
set VarroaTreatment  FALSE
set Virus  "DWV"
set Weather "Rothamsted (2009)" ; "Rothamsted (2009-2011)"
set WriteFile  FALSE
;set X_Days  7


end


;##############################################################PollenModule / ELRtModule NEW PROCEDURES############################################################################


; Initializing and Parameterization of the various new Global Variables
to ELRtParameterizationProc
  set PollenStoreList_g [0]
  ;set PollenStoreList_g replace-item 0 PollenstoreList_g 0;POLLEN_STORE_INIT


  set PollenForagersToday 0
  set NectarForagersToday 0
  set EggsAddedToday 0

  ;ELRtModule

  set BroodPheromone 0

  set AdultDif 0
  ;set AdultComparison
  ;Data of Mean Adult population from Requier 2017

  ;doesnt matter if not specific weather for optimization
  set AdultComparison [14386	14387	14389	14394	14400	14408	14418	14430	14444	14460	14478	14498	14519	14543	14568	14596	14625	14657	14691	14726	14764	14803	14845	14889	14935	14983	15033	15085	15139	15195	15253	15314	15377	15442	15509	15578	15649	15723	15799	15877	15957	16039	16124	16211	16300	16391	16485	16581	16680	16780	16883	16989	17096	17206	17319	17433	17550	17670	17792	17916	18043	18172	18304	18438	18574	18713	18854	18998	19145	19294	19445	19599	19756	19915	20076	20240	20407	20576	20748	20923	21100	21280	21462	21647	21835	22025	22218	22414	22612	22813	23017	23223	23433	23645	23859	24077	24297	24520	24746	24974	25205	25439	25675	25913	26153	26394	26637	26881	27127	27373	27620	27868	28116	28365	28613	28861	29109	29357	29603	29849	30094	30337	30579	30819	31058	31294	31529	31761	31990	32217	32441	32661	32879	33093	33303	33509	33712	33910	34104	34293	34477	34657	34831	35000	35163	35321	35473	35619	35759	35892	36018	36138	36251	36357	36455	36546	36629	36704	36771	36830	36881	36925	36961	36989	37010	37023	37030	37029	37022	37007	36986	36958	36924	36883	36836	36783	36723	36658	36587	36510	36428	36340	36246	36147	36044	35935	35821	35702	35579	35451	35318	35181	35040	34895	34745	34592	34435	34274	34109	33942	33770	33596	33418	33237	33053	32867	32677	32485	32291	32094	31895	31694	31491	31286	31079	30871	30660	30449	30236	30022	29806	29590	29372	29154	28936	28716	28496	28276	28056	27835	27615	27394	27174	26954	26734	26515	26297	26080	25863	25647	25433	25219	25007	24797	24588	24381	24175	23971	23770	23570	23373	23178	22985	22795	22607	22421	22238	22057	21878	21701	21527	21355	21186	21018	20853	20690	20530	20371	20215	20061	19910	19760	19613	19468	19325	19185	19046	18910	18776	18644	18514	18387	18261	18138	18017	17898	17781	17666	17554	17443	17335	17229	17125	17023	16923	16825	16729	16635	16543	16454	16366	16280	16197	16115	16036	15958	15883	15810	15738	15669	15601	15536	15472	15411	15351	15294	15238	15184	15133	15083	15035	14989	14945	14903	14862	14824	14788	14753	14720	14690	14661	14634	14608	14585	14564	14544	14526	14510	14496	14484	14473	14464	14457	14452	14449	14447	14447	14449	14453	14459	14466	14475	14486	14498	14512	14528	14546	14565	14586	14609	14633	14659	14687	14716	14748 14748
]

  if Weather = "Poitou-Charentes (2008-2012)"
  [
    set AdultComparison [12100	12114.3561640871	12130.5453175348	12148.5517176395	12168.3596216973	12189.9532870047	12213.3169708577	12238.4349305527	12265.291423386	12293.8707066538	12324.1570376523	12356.1346736778	12389.7878720266	12425.100889995	12462.0579848791	12500.6434139753	12540.8414345798	12582.6363039889	12626.0122794988	12670.9536184058	12717.4445780062	12765.4694155962	12815.012388472	12866.05775393	12918.5897692664	12972.5926917774	13028.0507787593	13084.9482875084	13143.2694753209	13202.9985994931	13264.1199173213	13326.6176861017	13390.4761631305	13455.6796057041	13522.2122711186	13590.0584166704	13659.2022996557	13729.6281773708	13801.3203071119	13874.2629461752	13948.4403518572	14023.8367814539	14100.4364922617	14178.2237415768	14257.1827866954	14337.297884914	14418.5532935286	14500.9332698356	14584.4220711312	14669.0039547117	14754.6631778733	14841.3839979123	14929.150672125	15017.9474578076	15107.7586122564	15198.5683927676	15290.3610566375	15383.1208611624	15476.8320636385	15571.478921362	15667.0456916293	15763.5166317366	15860.8759989802	15959.1080506562	16058.197044061	16158.1272364909	16258.8828852421	16360.4482476108	16462.8075808933	16565.9451423859	16669.8451893848	16774.4919791863	16879.8697690866	16985.9628163821	17092.7553783689	17200.2317123434	17308.3760756018	17417.1727254403	17526.6059191552	17636.6599140427	17747.3189673992	17858.5673365209	17970.389278704	18082.7690512449	18195.6909114396	18309.1391165847	18423.0979239762	18537.5515909104	18652.4843746837	18767.8805325922	18883.7243219322	19000	19116.7554517126	19234.2930724704	19352.9788852943	19473.1789132053	19595.2591792246	19719.5857063731	19846.524517672	19976.4416361422	20109.7030848049	20246.674886681	20387.7230647916	20533.2136421577	20683.5126418005	20838.9860867409	21000	21166.6747866577	21338.1483800291	21513.3130954884	21691.0612484095	21870.2851541665	22049.8771281335	22228.7294856844	22405.7345421933	22579.7846130344	22749.7720135815	22914.5890592087	23073.1280652902	23224.2813471998	23366.9412203118	23500	23622.67873499	23735.5134074132	23839.3687327523	23935.1094264901	24023.6002041094	24105.705781093	24182.2908729238	24254.2201950844	24322.3584630577	24387.5703923264	24450.7206983734	24512.6740966815	24574.2953027334	24636.449032012	24700	24765.5413284824	24832.5797644529	24900.3504612075	24968.088572042	25035.0292502523	25100.4076491344	25163.4589219841	25223.4182220974	25279.5207027701	25331.0015172982	25377.0958189776	25417.0387611041	25450.0654969737	25475.4111798823	25492.3109631258	25500	25497.923828918	25486.3695287607	25465.8345635263	25436.8163972128	25399.8124938184	25355.3203173411	25303.837331779	25245.8610011302	25181.8887893928	25112.4181605648	25037.9465786444	24958.9715076296	24875.9904115186	24789.5007543093	24700	24607.8865214621	24513.1623270611	24415.7303340358	24315.4934596252	24212.3546210682	24106.2167356036	23996.9827204703	23884.5554929073	23768.8379701534	23649.7330694476	23527.1437080286	23400.9728031355	23271.1232720071	23137.4980318823	23000	22858.6486037522	22713.9293111432	22566.4441003305	22416.7949494715	22265.5838367237	22113.4127402446	21960.8836381915	21808.598508722	21657.1593299935	21507.1680801634	21359.2267373891	21213.9372798282	21071.9016856381	20933.7219329762	20800	20671.1528241623	20546.8571800974	20426.6048017352	20309.8874230054	20196.1967778376	20085.0246001618	19975.8626239075	19868.2025830046	19761.5362113828	19655.3552429719	19549.1514117015	19442.4164515015	19334.6420963016	19225.3200800316	19113.9421366211	19000	18883.1520577757	18763.7233122667	18642.2054194691	18519.0900353791	18394.868815993	18270.0334173068	18145.0754953168	18020.4867060191	17896.75870541	17774.3831494855	17653.8516942419	17535.6559956754	17420.2877097821	17308.2384925583	17200	17095.9692509047	16996.1647152742	16900.5102259117	16808.9296156204	16721.3467172032	16637.6853634633	16557.8693872039	16481.8226212279	16409.4688983386	16340.7320513391	16275.5359130323	16213.8043162216	16155.4610937098	16100.4300783002	16048.6351027959	16000	15954.4196058299	15911.6727686602	15871.5093399801	15833.6791712784	15797.9321140443	15764.0180197668	15731.6867399347	15700.6881260373	15670.7720295634	15641.6883020021	15613.1867948425	15585.0173595734	15556.929847684	15528.6741106632	15500	15470.7019353271	15440.7526088511	15410.1692809226	15378.9692118917	15347.1696621089	15314.7878919245	15281.8411616888	15248.3467317523	15214.3218624651	15179.7838141778	15144.7498472406	15109.2372220038	15073.2631988179	15036.8450380332	15000	14962.7453450687	14925.0983335896	14887.076225913	14848.6962823894	14809.975763369	14770.9319292022	14731.5820402394	14691.9433568309	14652.033139327	14611.8686480781	14571.4671434346	14530.8458857467	14490.0221353649	14449.0131526395	14407.8361979208	14366.5085315591	14325.0474139049	14283.4701053085	14241.7938661202	14200.0359566903	14158.2136373693	14116.3441685074	14074.4448104551	14032.5328235625	13990.6254681802	13948.7400046585	13906.8936933476	13865.103794598	13823.3875687599	13781.7622761838	13740.24517722	13698.8535322188	13657.6046015306	13616.5156455058	13575.6039244946	13534.8866988474	13494.3812289146	13454.1047750464	13414.0745975934	13374.3079569058	13334.8221133339	13295.6343272281	13256.7618589388	13218.2219688163	13180.0319172109	13142.208964473	13104.7703709529	13067.733397001	13031.1153029677	12994.9333492033	12959.204796058	12923.9469038824	12889.1769330266	12854.9121438412	12821.1697966763	12787.9671518824	12755.3214698098	12723.2500108089	12691.77003523	12660.8988034234	12630.6535757396	12601.0516125287	12572.1101741413	12543.8465209276	12516.277913238	12489.4216114228	12463.2948758324	12437.9149668172	12413.2991447274	12389.4646699134	12366.4288027256	12344.2088035144	12322.82193263	12302.2854504227	12282.6166172431	12263.8326934414	12245.9509393679	12228.988615373	12212.9629818071	12197.8912990204	12183.7908273634	12170.6788271864	12158.5725588397	12147.4892826737	12137.4462590387	12128.4607482852	12120.5500107633	12113.7313068235	12108.0218968161	12103.4390410915
 12100]
  ]
   if Weather = "Idanha_a_Nova (2019-2020)"
  [
        set AdultComparison [14386	14387	14389	14394	14400	14408	14418	14430	14444	14460	14478	14498	14519	14543	14568	14596	14625	14657	14691	14726	14764	14803	14845	14889	14935	14983	15033	15085	15139	15195	15253	15314	15377	15442	15509	15578	15649	15723	15799	15877	15957	16039	16124	16211	16300	16391	16485	16581	16680	16780	16883	16989	17096	17206	17319	17433	17550	17670	17792	17916	18043	18172	18304	18438	18574	18713	18854	18998	19145	19294	19445	19599	19756	19915	20076	20240	20407	20576	20748	20923	21100	21280	21462	21647	21835	22025	22218	22414	22612	22813	23017	23223	23433	23645	23859	24077	24297	24520	24746	24974	25205	25439	25675	25913	26153	26394	26637	26881	27127	27373	27620	27868	28116	28365	28613	28861	29109	29357	29603	29849	30094	30337	30579	30819	31058	31294	31529	31761	31990	32217	32441	32661	32879	33093	33303	33509	33712	33910	34104	34293	34477	34657	34831	35000	35163	35321	35473	35619	35759	35892	36018	36138	36251	36357	36455	36546	36629	36704	36771	36830	36881	36925	36961	36989	37010	37023	37030	37029	37022	37007	36986	36958	36924	36883	36836	36783	36723	36658	36587	36510	36428	36340	36246	36147	36044	35935	35821	35702	35579	35451	35318	35181	35040	34895	34745	34592	34435	34274	34109	33942	33770	33596	33418	33237	33053	32867	32677	32485	32291	32094	31895	31694	31491	31286	31079	30871	30660	30449	30236	30022	29806	29590	29372	29154	28936	28716	28496	28276	28056	27835	27615	27394	27174	26954	26734	26515	26297	26080	25863	25647	25433	25219	25007	24797	24588	24381	24175	23971	23770	23570	23373	23178	22985	22795	22607	22421	22238	22057	21878	21701	21527	21355	21186	21018	20853	20690	20530	20371	20215	20061	19910	19760	19613	19468	19325	19185	19046	18910	18776	18644	18514	18387	18261	18138	18017	17898	17781	17666	17554	17443	17335	17229	17125	17023	16923	16825	16729	16635	16543	16454	16366	16280	16197	16115	16036	15958	15883	15810	15738	15669	15601	15536	15472	15411	15351	15294	15238	15184	15133	15083	15035	14989	14945	14903	14862	14824	14788	14753	14720	14690	14661	14634	14608	14585	14564	14544	14526	14510	14496	14484	14473	14464	14457	14452	14449	14447	14447	14449	14453	14459	14466	14475	14486	14498	14512	14528	14546	14565	14586	14609	14633	14659	14687	14716	14748 14748
]
  ]
  if Weather = "Foulum (2005-2016)"
  [
      set AdultComparison [8793	8770	8750	8732	8717	8704	8694	8686	8680	8677	8677	8678	8683	8689	8699	8710	8724	8741	8760	8782	8806	8833	8862	8894	8928	8965	9004	9046	9090	9138	9187	9239	9294	9351	9411	9474	9539	9607	9677	9750	9825	9904	9984	10068	10154	10243	10334	10428	10525	10624	10727	10831	10939	11049	11162	11278	11396	11517	11641	11767	11896	12028	12163	12301	12441	12584	12730	12878	13030	13184	13341	13500	13663	13828	13996	14167	14341	14518	14697	14880	15065	15253	15444	15638	15834	16034	16236	16442	16650	16861	17075	17292	17512	17735	17960	18189	18421	18655	18893	19133	19377	19623	19873	20125	20380	20639	20900	21164	21432	21702	21976	22252	22532	22814	23100	23388	23680	23975	24273	24574	24878	25185	25495	25808	26124	26444	26767	27092	27421	27753	28088	28426	28768	29112	29460	29811	30165	30521	30878	31238	31598	31959	32321	32682	33043	33402	33761	34117	34471	34823	35172	35517	35858	36195	36527	36854	37176	37491	37801	38103	38398	38686	38966	39237	39499	39752	39996	40229	40452	40664	40864	41053	41230	41395	41548	41689	41818	41935	42040	42132	42212	42279	42334	42376	42406	42423	42427	42418	42396	42361	42313	42252	42178	42092	41993	41882	41760	41626	41481	41325	41159	40983	40796	40600	40395	40180	39957	39725	39485	39237	38982	38719	38450	38173	37890	37602	37307	37007	36701	36391	36075	35756	35432	35105	34774	34440	34103	33764	33422	33078	32733	32386	32038	31689	31339	30989	30640	30290	29941	29594	29247	28902	28558	28217	27878	27542	27209	26879	26553	26230	25910	25595	25282	24973	24668	24366	24068	23773	23482	23194	22909	22628	22350	22076	21805	21538	21273	21013	20755	20501	20250	20003	19759	19518	19280	19046	18815	18587	18363	18142	17924	17709	17497	17289	17083	16881	16683	16487	16294	16105	15918	15735	15555	15378	15204	15033	14866	14701	14539	14380	14225	14072	13923	13776	13632	13492	13354	13219	13087	12958	12832	12709	12589	12472	12357	12246	12137	12031	11928	11828	11730	11636	11544	11455	11369	11285	11205	11127	11051	10979	10909	10842	10777	10716	10657	10600	10546	10495	10447	10401	10358	10317	10279	10243	10210	10180	10152	10127	10104	10084	10066	10051	10038	10028	10020	10014	10011	10011	10013	10017	10024	10033	10044	10058	10075 10075
]

  ]






  ;set dailyTemp [5.41733333  4.45208333  3.27058333  3.34008333  2.69525     3.92716667   4.09041667  3.83133333  4.09683333  3.26058333  2.61583333  3.55541667   3.4045      5.89891667  5.293       4.737       5.27233333  6.71708333   6.79816667  6.73475     5.78966667  5.30266667  5.48283333  5.85625   5.19966667  4.8335      3.316       1.73441667  2.24425     2.87158333   1.4985      2.47708333  0.79141667  1.08383333  2.2675      4.65775   5.5735      3.97158333  2.65666667  1.70091667  2.75308333  2.91733333   1.83225     1.12791667  2.476       2.39833333  2.092       3.64033333   5.3065      5.93875     5.96475     4.906       5.46416667  6.267   7.40458333  8.75708333  8.49141667  7.3825      7.30633333  7.88525   7.53333333  7.62516667  7.27291667  6.12575     4.84766667  4.16725   4.59916667  5.94175     5.60733333  4.75641667  6.33891667  7.768   8.67266667  9.35941667 10.33816667  9.93416667  9.94383333  9.63475   8.78916667  7.79541667  7.2805      7.45983333  8.61033333 10.10725  10.02075    10.09633333  9.719      10.06375    10.37108333  9.821   9.98258333 10.299      11.14633333 10.65458333  9.39341667  9.40025  11.10308333 10.75841667 10.45383333 11.44741667 11.05133333 10.16741667   9.18716667  9.49025     9.92066667  9.54033333  9.64891667  9.83691667  10.67766667 11.91475    12.36991667 12.522      12.75416667 12.134  12.49433333 12.3595     13.07033333 13.22958333 12.02616667 12.05883333  12.28566667 12.32833333 13.18433333 13.9175     13.95491667 13.17616667  14.10866667 15.00083333 14.27775    14.709      16.53008333 17.25125  15.4905     14.45133333 13.08733333 12.35291667 12.27725    12.88375  14.63808333 14.73525    15.586      15.97358333 15.91116667 17.6145  18.07233333 18.68375    16.50083333 15.13033333 15.753      17.13183333  18.06275    17.05691667 16.81458333 17.82416667 19.21458333 18.05566667  17.70825    16.28141667 15.0775     15.42208333 15.8315     16.02958333  16.05425    15.99325    16.82616667 16.3775     16.65425    15.87583333  16.93541667 16.56083333 15.83175    16.09516667 17.6795     17.99558333  17.54383333 18.36333333 19.43225    20.848      21.8495     22.30833333  21.49758333 20.84558333 21.74375    19.97125    19.33541667 20.73041667  19.61375    17.74508333 17.40091667 19.03291667 19.30341667 19.38116667  19.65283333 19.08133333 17.89758333 17.4255     18.18316667 18.46  16.94941667 17.06925    18.7505     18.43941667 18.48816667 18.29666667  18.30458333 18.51691667 18.65108333 20.39108333 21.257      20.56666667  19.53116667 19.31641667 20.41125    19.98291667 19.59758333 19.63383333  19.3835     20.33016667 20.54516667 18.94783333 18.64816667 18.90983333  19.9055     19.7525     19.99041667 19.42983333 18.67008333 19.514  20.52391667 20.37458333 21.41125    22.85975    23.30241667 22.78208333  22.48608333 20.87525    19.35266667 19.18683333 19.47125    18.72125  18.47041667 18.08858333 18.90716667 19.2675     18.29483333 18.56066667  17.79316667 17.45533333 18.03983333 18.46958333 17.91416667 18.2825  20.2575     20.48516667 18.63591667 17.6205     16.21858333 15.69866667  15.37958333 15.67641667 15.59433333 15.79058333 15.19033333 14.81066667  15.88525    16.87133333 16.55775    16.99075    15.802      14.95541667  15.31066667 15.89075    16.09016667 15.61983333 15.624      15.52491667  15.35483333 14.54491667 15.14458333 16.93633333 16.7195     15.99866667  16.36433333 16.321      15.90616667 15.69583333 14.17116667 12.08525  11.54866667 11.4665     11.25058333 11.42258333 11.363      12.73983333  10.11816667 11.34666667 11.71383333 12.41025    11.19333333 11.03075  11.632      10.05433333 10.1465     10.31416667 10.8725     11.17991667  10.88291667 12.43041667 11.90291667 10.75441667 10.383       9.01033333   8.36675     9.574       9.80625    10.43308333 11.48533333 10.96158333  10.0025     10.22733333 10.59966667  9.35983333  9.39625    10.05325  10.35491667 10.44158333  9.23075     7.73525     7.71408333  6.88291667   6.34425     6.16541667  5.741       5.08483333  4.74683333  4.17341667   4.29283333  5.298       6.71266667  7.13625     7.12575     6.6895   6.69241667  5.97525     4.8075      4.28091667  3.44408333  3.07616667   2.92233333  3.343       3.90325     3.09533333  2.93291667  3.90283333   6.46833333  6.73016667  6.81025     5.91491667  5.25275     4.47358333   2.9835      3.38425     5.07641667  6.23116667  6.94083333]



  set summerForagers 0
  set BPRatio_report 0
  set winterbeeCount 0


  set AverageEggsList []
  set AverageIdealPollenList []

  let index 0
  while [index < lenEggLayingAverage]
  [
    set AverageEggsList lput 0 AverageEggsList
    set index index + 1
  ]


  set index 0
  while [index < lenIdealPollenList]
  [
    set AverageIdealPollenList lput 0 AverageIdealPollenList
    set index index + 1
  ]


end





;As PollenStore_g is used at different locations in the code, the variable is set here to the x newest entries of PollenStoreList_g
to UpdatePollenStore
  ifelse length PollenStoreList_g < FreshPollenDays
  [
    set PollenStore_g sum PollenStoreList_g
  ]
  [
    set PollenStore_g 0
    let index1 0
    while [index1 < FreshPollenDays]
    [
      set PollenStore_g PollenStore_g + item index1 PollenStoreList_g
      set index1 index1 + 1
    ]

  ]
end


; As there is a List of Pollen based on days since collection is used, the consumption is more complicated. The amount of consumed pollen is the same.
to ConsumptionFunc
  let ConsumptionLeft DailyPollenConsumption_g

  ;Consumption Chance, based on Functions from Roessink, van der Steen, 2021
  ; The Paper gives cumulative probabilities. Here, we take the probability according to the function for day 1, and from day 2 onward, we substract the chance of X-1 from X, thus gaining the pure probability for that day.
  let LengthPollenStoreList length PollenStoreList_g
  let ConsumptionChance []

  let chanceIndex 1
  while [chanceIndex < LengthPollenStoreList + 1]
  [
    ;if there is no Pollen, the chance is set to 0 instead
    if length PollenStoreList_g < (chanceIndex - 1) [print "Problem"]
    ifelse item (chanceIndex - 1) PollenStoreList_g = 0
    [set ConsumptionChance lput 0 ConsumptionChance]
    [set ConsumptionChance lput  (0.23 * ln (chanceIndex) + 0.4) ConsumptionChance]

    set chanceIndex chanceIndex + 1
  ]

  ; This prevents the consumption of more Pollen than is stored.
  if ConsumptionLeft > sum PollenStoreList_g [set ConsumptionLeft sum PollenStoreList_g]

  ;Reduce Pollen in 1g steps. This way, for each g a new age cohort can be used. Alternative: 0,15g steps (one Cell has ~150mg of Pollen).

  ;There sometimes is a floating Point error, where ConsumptionLeft is at about 1e-20, but wont get reduced further. This fixes the stuck loop
  while [ConsumptionLeft > 0.00000001] [

    ;Reduction stepsize
    let ReducePollen 1
    ;If the consumption left is smaller than the step, the stepsize is reduced
    if ConsumptionLeft < ReducePollen [set ReducePollen ConsumptionLeft]
    ;the PollenStoreList is iterated trough, so only Pollen from non-empty age cohorts is used

    let ConsumptionVariant 1 ;   1 for Random choice based on calculated Probabilites, 2 for LiFo Consumption

    ifelse ConsumptionVariant = 1

    [ ;Variant 1, Random based on calculated probabilities. Fresh Pollen is used preferentially.
      let RandomFloat random-float (max ConsumptionChance)

      let toReduce true
      let index 0
      while [toReduce] [
        ifelse item index ConsumptionChance < RandomFloat
        [
          ;if cell empty, use next one instead
          set index index + 1
        ]
        [
          ;if there is not enough pollen in the cohort, use as much as is possible
          if item index PollenstoreList_g <= ReducePollen [set ReducePollen item index PollenstoreList_g]
          set PollenStoreList_g replace-item index PollenStoreList_g (item index PollenStoreList_g - ReducePollen)
          set toReduce false
        ]
      ]
    ]

    [;Variant 2, LiFo Consumption
      let toReduce true
      let index 0
      while [toReduce] [
        ifelse item index PollenStoreList_g = 0
        [
          ;if cell empty, use next one instead
          set index index + 1
        ]
        [
          ;if there is not enough pollen in the cohort, use as much as is possible
          if item index PollenstoreList_g <= ReducePollen [set ReducePollen item index PollenstoreList_g]
          set PollenStoreList_g replace-item index PollenStoreList_g (item index PollenStoreList_g - ReducePollen)
          set toReduce false
        ]
      ]

    ]


    set ConsumptionLeft ConsumptionLeft - ReducePollen
  ]

end









;The Decay Rate is calculated based on the Temperature  with the Arrhenius equation.  The Brood Pheromone is then reduced based on the variable lenTime. The sum of lenTime roughly adds up to 86400 each day.
to DecayFunction [lenTime]
  let tempToday item (day - 1) DailyTemp
  let UGS  0.008314 ;kilojoules per mole kelvin
  let k_today (k_ref * exp(- E_a / UGS * ( (1 / (tempToday + 273.15 )) - (1 / (T_ref + 273.15)) ) ))

  let Decay  exp(- k_today / 86400  * (lenTime))

  if Decay < 0
  [set Decay 0]

  set BroodPheromone BroodPheromone * Decay ;* (item day speedFactor)

  if BroodPheromone < 0.001
  [set BroodPheromone 0]
end



;Calculates the new Egg Laying Rate based on the currently stored pollen.
to-report ELRtEggLaying
  ; Code copied from PollenConsumptionProc, as the daily Pollen consumption is used in the Variant with "foresight"
  let DAILY_POLLEN_NEED_ADULT 1.5 ; 0 ;1.5 ; 1.5 ;
    ; 1.5 mg fresh pollen per Day per bee (based on
    ; Pernal, Currie 2000, value for 14d old bees, Fig. 3)

  let DAILY_POLLEN_NEED_ADULT_DRONE 2 ; just an ESTIMATION

  let DAILY_POLLEN_NEED_LARVA 142 / (PUPATION_AGE - HATCHING_AGE)
    ; (23.6 mg/d) see HoPoMo
  let DAILY_POLLEN_NEED_DRONE_LARVA 50
    ; ESTIMATION, Rortais et al. 2005: "The pollen consumption of drone larvae has never been determined."

  let needPollenAdult
    ((TotalIHbees + TotalForagers) *  DAILY_POLLEN_NEED_ADULT
      + TotalDrones * DAILY_POLLEN_NEED_ADULT_DRONE )

  let needPollenLarvae (TotalLarvae * DAILY_POLLEN_NEED_LARVA
      + TotalDroneLarvae * DAILY_POLLEN_NEED_DRONE_LARVA )

  set DailyPollenConsumption_g (needPollenAdult + needPollenLarvae) / 1000



  let ELRt 0

  let simpleVariant True
  ifelse simpleVariant
  ;Variant without foresight
  [set ELRt (PollenStore_g * EggsPerPollen_g)]
  ;Variant with foresight
  [set ELRt ((PollenStore_g - (DailyPollenConsumption_g * SafeDays)) * EggsPerPollen_g)]



  ;ELRtModule


  if ELRt > MAX_EGG_LAYING
  [
    set ELRt MAX_EGG_LAYING
  ]


  set AverageEggsList lput ELRt AverageEggsList
  set AverageEggsList remove-item 0 AverageEggsList
  set ELRt mean AverageEggsList





  if (ColonyDied = True)
  [
    set ELRt 0
  ]

  report ELRt
end



;Calculates the Probability of Pollen Collection for one Foraging Round. The probability is based on the Ratio of Brood Pheromone to adult bees (excluding winter bees), and the current amount of stored Pollen.
to-report ELRtProbPollenCalculation
  ;The BPRatio is limited, as it is later used in an exponential function. At times, BPRatio can become very big, which causes an error, as the exponential then grows too large for netlogo.
  let BPRatio ((BroodPheromone + 1) / ( summerForagers + TotalIHBees + 1 ))
  if BPRatio > 50
  [
  set BPRatio 50
  ]

  ; If there is a high amount of Broodpheromone per adult bee ( = high BPRatio), the probability of pollen collection grows. If it is very small, the probability of pollen collection shrinks.
  ; As BPRatio is used in the fraction "1/exp(r_5 * BPRatio)", the limit to 50 only changes the result marginally. The Fraction is basically 0 if BPRatio is 50, or it is 200.
  set ProbPollenCollection (1 - (PollenStore_g / IdealPollenStore_g)) * r_1 * (1 - 1 / (exp( r_5 * BPRatio )))
    * MAX_PROPORTION_POLLEN_FORAGERS
 ; ]
  report ProbPollenCollection

end







;Updates PollenStoreList_g, two Variables used for Data Visualization, and the BroodPheromone amount
to Update_PollenStoreList_BroodPheromone

  ;Add a new Entry into PollenStoreList_g, so newly collected pollen can be deposited in that new entry. Only used once right before Foraging for the day starts.
  set PollenStoreList_g fput 0 PollenStoreList_g


  ; Helper Variables reset, so Pollen/Nectar Ratio of today can be calculated
  set PollenForagersToday 0
  set NectarForagersToday 0



  ; Recount the Population, so the proper amount of Brood Pheromone is added
  CountingProc

  ; Brood Pheromone is produced by Larvae (Male and Female). The amount added is arbitrarily chosen, but other Parameters are optimized based on this amount. So this should not be changed.
  set BroodPheromone BroodPheromone + (TotalLarvae + TotalDroneLarvae) * 0.1
end




;############# Procedures only used for Data Visualization. ############

;Calculates Average collected Pollen over the last 3 days. Used for Data Visualisation, so it is only called if the procedure is added to the Behaviourspace run.
to-report AvgIncPollen
   ifelse length PollenStoreList_g < 3
  [
    report ((sum PollenStoreList_g) / (length PollenStoreList_g))
  ]
  [
    let index 0
    let PolSum 0
    let maxindex 2
    while [index < maxindex]
    [
      set PolSum PolSum + item index PollenStoreList_g
      set index index + 1
    ]
    report PolSum / (maxindex + 1)
  ]
end

;Calculates the ratio of Pollen to Nectar Foragers. Used for Data Visualisation, so it is only called if the procedure is added to the Behaviourspace run.
to-report PollenNectarRatio
  ifelse PollenForagersToday + NectarForagersToday = 0
  [report 0]
  [report (PollenForagersToday / (PollenForagersToday + NectarForagersToday))]

end

;Reports the amount of Worker eggs added today. Used for Data Visualisation. Probably not necessary, but used just in case ELRt gets set to a new value.
to-report AddedEggsToday ;Just worker Eggs
  report EggsAddedToday
end

;#############################################End of newly added Procedures##########################################################################



; ********************************************************************************************************************************************************************************
; ***   END   *********   END   *********   END   *********   END   *********   END   *********   END   *********   END   *********   END   *********   END   *********   END   **
; ********************************************************************************************************************************************************************************
@#$#@#$#@
GRAPHICS-WINDOW
0
10
561
717
-1
-1
8.52
1
10
1
1
1
0
0
0
1
-20
44
-71
10
1
1
1
ticks
30.0

BUTTON
669
647
772
686
RUN
StartProc
T
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
565
686
634
724
1 Day
StartProc\n
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
564
647
669
686
Setup
Setup\n
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
706
686
772
724
1 Year
repeat 365 [ StartProc ]
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

MONITOR
564
601
624
646
Julian Day
day  ;;ticks mod 365.0000001
5
1
11

BUTTON
633
686
706
724
1 Month
if ticks = 0 [ StartProc ] ; to set date to 1 January\nlet days-in-months (list 31 28 31 30 31 30 31 31 30 31 30 31)\nlet month 0\nlet dayOfYear remainder ticks 365.01\n  let dayOfMonth 0\n  let sumDaysInMonths 0\n  while [ sumDaysInMonths < dayOfYear ]\n  [\n    set month month + 1 \n    set sumDaysInMonths sumDaysInMonths + item (month - 1) days-in-months \n    set dayOfMonth dayOfYear - sumDaysInMonths + item (month - 1) days-in-months  \n  ]\n\nrepeat item (month - 1) days-in-months [ StartProc ] \n\n;ifelse ticks = 0\n; [ repeat 31 [ StartProc ] ]\n; [ repeat item (month - 1) days-in-months [ StartProc ] ]\n
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

INPUTBOX
998
139
1098
199
QUANTITY_R_l
20.0
1
0
Number

INPUTBOX
1098
139
1201
199
QUANTITY_G_l
20.0
1
0
Number

INPUTBOX
998
199
1098
259
CONC_R
1.5
1
0
Number

INPUTBOX
1098
199
1201
259
CONC_G
1.5
1
0
Number

INPUTBOX
998
320
1099
380
DISTANCE_R
1500.0
1
0
Number

INPUTBOX
1098
319
1201
379
DISTANCE_G
500.0
1
0
Number

INPUTBOX
998
379
1099
439
DETECT_PROB_R
0.2
1
0
Number

INPUTBOX
1099
379
1201
439
DETECT_PROB_G
0.2
1
0
Number

INPUTBOX
1099
10
1200
70
N_INITIAL_BEES
10000.0
1
0
Number

SWITCH
229
1508
420
1541
EggLaying_IH
EggLaying_IH
0
1
-1000

BUTTON
664
1406
773
1439
close file
file-close
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
664
1372
773
1405
write file
createOutputFileProc
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

SWITCH
775
1406
882
1439
writeFile
writeFile
1
1
-1000

SWITCH
775
1372
882
1405
details
details
0
1
-1000

INPUTBOX
1444
599
1584
659
MAX_HONEY_STORE_kg
50.0
1
0
Number

SWITCH
666
1508
882
1541
stopDead
stopDead
0
1
-1000

OUTPUT
-1
660
559
735
11

INPUTBOX
997
10
1099
70
RAND_SEED
0.0
1
0
Number

SWITCH
1753
442
1980
475
ReadInfile
ReadInfile
1
1
-1000

TEXTBOX
1036
50
1096
68
0: no seed!
11
0.0
1

SWITCH
666
1440
882
1473
modelledInsteadCalcDetectProb
modelledInsteadCalcDetectProb
1
1
-1000

SWITCH
1326
483
1504
516
HoneyHarvesting
HoneyHarvesting
1
1
-1000

INPUTBOX
1325
416
1406
476
HarvestingDay
135.0
1
0
Number

INPUTBOX
1584
416
1698
476
RemainingHoney_kg
5.0
1
0
Number

INPUTBOX
1325
10
1490
70
N_INITIAL_MITES_HEALTHY
0.0
1
0
Number

CHOOSER
1799
56
1929
101
MiteReproductionModel
MiteReproductionModel
"Fuchs&Langenbach" "Martin" "Martin+0" "Test" "No Mite Reproduction"
1

SWITCH
1327
109
1477
142
VarroaTreatment
VarroaTreatment
1
1
-1000

INPUTBOX
1493
10
1658
70
N_INITIAL_MITES_INFECTED
0.0
1
0
Number

CHOOSER
1799
10
1929
55
Virus
Virus
"DWV" "APV" "benignDWV" "modifiedAPV" "TestVirus"
0

MONITOR
1879
999
2011
1044
rate healthy mites
phoreticMitesHealthyRate
5
1
11

TEXTBOX
11
40
103
82
healthy foragers\ninfected as adults\ninfected as pupae
11
0.0
1

SWITCH
223
1311
434
1344
AlwaysDance
AlwaysDance
1
1
-1000

CHOOSER
461
1473
652
1518
Experiment
Experiment
"none" "Experiment A" "Experiment B"
0

MONITOR
1879
952
2011
997
mites in cells
totalMites -  phoreticMites * (1 - phoreticMitesHealthyRate)\n  - phoreticMites * phoreticMitesHealthyRate
10
1
11

SWITCH
1587
625
1702
658
PollenIdeal
PollenIdeal
1
1
-1000

SWITCH
1587
590
1701
623
HoneyIdeal
HoneyIdeal
1
1
-1000

INPUTBOX
998
259
1098
319
POLLEN_R_kg
1.0
1
0
Number

INPUTBOX
1098
259
1201
319
POLLEN_G_kg
1.0
1
0
Number

SWITCH
7
1313
213
1346
SeasonalFoodFlow
SeasonalFoodFlow
0
1
-1000

INPUTBOX
6
1509
103
1569
SHIFT_R
30.0
1
0
Number

INPUTBOX
115
1509
214
1569
SHIFT_G
-120.0
1
0
Number

SWITCH
7
1347
213
1380
ConstantHandlingTime
ConstantHandlingTime
1
1
-1000

CHOOSER
1329
698
1506
743
Swarming
Swarming
"No swarming" "Swarm control" "Swarming (parental colony)" "Swarming (prime swarm)"
0

SWITCH
229
1543
421
1576
QueenAgeing
QueenAgeing
1
1
-1000

BUTTON
565
724
665
784
run X days  
repeat X_days [ startProc ]
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
894
1307
999
1340
Kill!
ask IHbeeCohorts [ if random-float 1 < 1 [ set number 0 set number_Healthy 0 set number_infectedAsPupa 0 set number_infectedAsAdult 0 ] ]\n;ask foragerSquadrons [ set infectionState \"infectedAsAdult\" ]\n;set honeyEnergyStore honeyEnergyStore * 0.01\n;ask foragerSquadrons [ die ]\n;set MORTALITY_INHIVE 0\n; set PollenStore_g 0\n; set honeyEnergyStore 1500\n;ask eggCohorts [set number 0]\n;ask droneEggCohorts [set number 0]\n;ask larvaeCohorts [set number 0]\n;ask droneLarvaeCohorts [set number 0]\n;ask pupaeCohorts [set number 0 set number_Healthy 0 set number_infectedAsPupa 0]\n;ask dronePupaeCohorts [set number 0 set number_Healthy 0 set number_infectedAsPupa 0]\n;ask IHbeeCohorts [ if random-float 1 < 1 [ set number 0 set number_Healthy 0 set number_infectedAsPupa 0 set number_infectedAsAdult 0 ] ]\n;ask foragerSquadrons [ set age age + 20 ]\n;ask foragerSquadrons with [ infectionState = \"infectedAsPupa\" ] [ die ];\n;set phoreticMites 0\nCountingProc
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

INPUTBOX
663
1308
773
1368
SQUADRON_SIZE
100.0
1
0
Number

PLOT
1234
844
1873
1018
Generic plot 3
NIL
NIL
0.0
10.0
0.0
0.01
true
true
"" ""
PENS

INPUTBOX
997
74
1201
134
CRITICAL_COLONY_SIZE_WINTER
4000.0
1
0
Number

BUTTON
894
1341
999
1374
show Patches
type \"day: \" type day print \" \"\nforeach sort flowerpatches [ x -> ask x [\n type \"ID \" type who\n type \" patchType \" type patchType \n ;type \" oldPatchID \" type oldPatchID\n type \" distanceToColony \" type distanceToColony \n type \" x: \" type xcorMap \n type \" y: \" type ycorMap \n type \" size_sqm \" type size_sqm \n type \" Nectar_l \" type precision (quantityMyl / 1000000) 1\n type \" Pollen_kg \" type precision (amountPollen_g / 1000) 1 \n type \" nectarConc \" type nectarConcFlowerPatch \n type \" EEF \" type precision eef 2\n type \" followers \" type precision danceFollowersNectar 2\n type \" detectionProbability \" type precision detectionProbability 4 \n type \" handlingTimeNectar \" type round handlingTimeNectar \n type \" handlingTimePollen \" type round handlingTimePollen\n type \" total visitors \" type summedVisitors\n\n \n \n print \" \"\n] ]
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

CHOOSER
1755
699
1982
744
Weather
Weather
"Weather File" "EfsaFrance (2005-2016)" "Foulum (2005-2016)" "Foulum (2015-2020)" "Foulum (2019-2020)" "Idanha_a_Nova (2019-2020)" "France (2010)" "Osnabrueck (2008 - 2020)" "Stockholm (2008-2020)" "Poitou-Charentes (2008-2012)" "San Marino (2008-2020)" "Rothamsted (2009)" "Rothamsted (2010)" "Rothamsted (2011)" "Rothamsted (2009-2011)" "Berlin (2000-2006)" "Berlin (2000)" "HoPoMo_Season" "HoPoMo_Season_Random" "Constant"
9

BUTTON
895
1375
999
1408
active patches
type \"day: \" type day print \" \"\nforeach sort flowerpatches [ x -> ask  x\n[ if quantityMyl > 0 or amountPollen_g > 0\n[\n type \"ID \" type who\n; type \" patchType \" type patchType \n type \" distanceToColony \" type distanceToColony \n type \" size_sqm \" type size_sqm \n type \" Nectar_l \" type precision (quantityMyl / 1000000) 1\n type \" Pollen_kg \" type precision (amountPollen_g / 1000)1 \n type \" nectarConc \" type nectarConcFlowerPatch \n type \" detectionProbability \" type precision detectionProbability 4 \n type \" handlingTimeNectar \" type round handlingTimeNectar \n type \" handlingTimePollen \" type round handlingTimePollen\n type \" total visitors \" type summedVisitors\n\n \n \n print \" \"\n] ] ]
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
895
1410
1000
1443
activityList
type \"day: \" type day print \" \"\n;foreach sort foragerSquadrons with [km_today > 0]  \nforeach sort foragerSquadrons\n  [ x -> ask x \n     [ type who type \" \" type precision km_today 2 type \" \"  print activityList ]\n  ] 
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

INPUTBOX
463
1309
652
1369
MAX_km_PER_DAY
7299.0
1
0
Number

INPUTBOX
1327
599
1443
659
MAX_BROODCELLS
2000099.0
1
0
Number

PLOT
565
10
994
442
foraging map
NIL
NIL
-5000.0
5000.0
-5000.0
5000.0
false
false
"" ""
PENS
"default" 1.0 2 -16777216 true "" ""
"colony" 1.0 0 -6459832 true "" ""

CHOOSER
793
28
917
73
ForagingMap
ForagingMap
"show nothing" "Nectar foraging" "Pollen foraging" "Nectar and Pollen" "All visits" "All patches" "Available patches"
3

BUTTON
738
28
793
73
Refresh
DrawForagingMapProc
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

INPUTBOX
917
28
987
88
DotDensity
0.01
1
0
Number

MONITOR
599
28
669
73
Nectar visits
 sum [ nectarVisitsToday ] of flowerpatches\n
17
1
11

MONITOR
668
28
738
73
Pollen visits
 sum [ pollenVisitsToday ] of flowerpatches
17
1
11

INPUTBOX
666
724
772
784
X_Days
180.0
1
0
Number

SWITCH
666
1474
882
1507
ShowAllPlots
ShowAllPlots
0
1
-1000

BUTTON
504
628
559
661
Import
import-world \"World_Beehave.csv\"\n;import-world \"World_RRes-real_PopDyn_Foraging_Varroa_10.6 world.csv\"
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
258
10
321
43
1 feeder
set ReadInfile false\nset QUANTITY_R_l 20\nset QUANTITY_G_l 0\nset CONC_R 1.5\nset POLLEN_R_kg 2\nset POLLEN_G_kg 0\nset DISTANCE_R 1500\nset ConstantHandlingTime true\nset seasonalFoodFlow false\nset TIME_NECTAR_GATHERING 79  ;  Seeley\nset TIME_POLLEN_GATHERING 120 ; arbitrary\nset DETECT_PROB_R 0.01  ; 0.15   ; arbitrary\nSetup\n\n
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
321
10
385
43
RRes
set Weather  \"Rothamsted (2009-2011)\"    \nset INPUT_FILE  \"Input_2-1_FoodFlow_RRes.txt\"       \nset ReadInfile  TRUE      \nSetup\n  \n
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
385
10
449
43
varroa
set N_INITIAL_MITES_HEALTHY 10\nset N_INITIAL_MITES_INFECTED 10\nset Virus \"DWV\"\nset MiteReproductionModel \"Martin\"\nset GenericPlot4 \"mites\"\nSetup\n
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
141
10
197
43
DEFAULT
DefaultProc\nSetup
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

INPUTBOX
1408
416
1501
476
HarvestingPeriod
80.0
1
0
Number

INPUTBOX
1504
416
1583
476
HarvestingTH
20.0
1
0
Number

SWITCH
1505
483
1601
516
FeedBees
FeedBees
1
1
-1000

BUTTON
448
10
512
43
beekeeping
set VarroaTreatment TRUE\nset FeedBees TRUE\nset HoneyHarvesting TRUE\nset MergeWeakColonies TRUE \nset MergeColoniesTH 5000\n;set AddPollen TRUE\nset HarvestingDay 135\nset HarvestingPeriod 80\nset RemainingHoney_kg 5\nset HarvestingTH 20\n;Setup\nask signs with [shape = \"jenny\"] [show-turtle]\n\n
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
1327
552
1505
585
add fondant
let addedFondant_kg 1 ; [kg]\nset HoneyEnergyStore HoneyEnergyStore +  addedFondant_kg * ENERGY_HONEY_per_g * 1000 ; adding fondant equivalent to 1 kg of honey\nask Signs with [shape = \"ambrosia\"] [ show-turtle ]\nset TotalHoneyFed_kg TotalHoneyFed_kg + addedFondant_kg\noutput-type \"Fondant provided [kg]: \" output-type precision addedFondant_kg 1 output-type \" total food added [kg]: \" output-print precision TotalHoneyFed_kg 1 
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

SWITCH
1327
517
1504
550
MergeWeakColonies
MergeWeakColonies
1
1
-1000

INPUTBOX
1330
746
1507
806
MergeColoniesTH
5000.0
1
0
Number

BUTTON
449
628
504
661
Export
export-world \"World_Beehave.csv\"
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

SWITCH
1505
517
1601
550
AddPollen
AddPollen
1
1
-1000

BUTTON
895
1446
1001
1479
visited patches
type \"day: \" type day print \" \"\nforeach sort flowerpatches [ x ->  ask x \n[ if pollenVisitsToday > 0 or nectarVisitsToday > 0\n[\n type \"ID \" type who\n; type \" patchType \" type patchType \n type \" distanceToColony \" type distanceToColony \n type \" size_sqm \" type size_sqm \n type \" Nectar_l \" type precision (quantityMyl / 1000000) 1\n type \" Pollen_kg \" type precision (amountPollen_g / 1000)1 \n type \" nectarConc \" type nectarConcFlowerPatch \n type \" detectionProbability \" type precision detectionProbability 4 \n type \" handlingTimeNectar \" type round handlingTimeNectar \n type \" handlingTimePollen \" type round handlingTimePollen\n type \" pollenVisitsToday \" type pollenVisitsToday\n type \" nectarVisitsToday \" type nectarVisitsToday\n \n type \" total visitors \" type summedVisitors\n\n \n \n print \" \"\n] ] ]
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
197
10
260
43
2 patches
set ReadInfile false\nset QUANTITY_R_l 20\nset QUANTITY_G_l 20\nset CONC_R 1.5\nset CONC_G 1.5\nset POLLEN_R_kg 1\nset POLLEN_G_kg 1\nset DISTANCE_R 1500\nset DISTANCE_G 500\nset ConstantHandlingTime FALSE\nset seasonalFoodFlow TRUE\nset SHIFT_R 30\nset shift_G -40\nset TIME_NECTAR_GATHERING 1200\nset TIME_POLLEN_GATHERING 600\nset DETECT_PROB_R 0.2\nset DETECT_PROB_G 0.2\nSetup\n\n
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

INPUTBOX
463
1370
652
1430
ProbLazinessWinterbees
0.0
1
0
Number

BUTTON
1506
552
1700
585
add pollen
  ;let addedPollen_kg 1\n  set PollenStore_g PollenStore_g + (addedPollen_kg * 1000)\n  ask Signs with [shape = \"pollengrain\"] [ show-turtle ]\n  set TotalPollenAdded TotalPollenAdded + addedPollen_kg\n  output-type \"Added pollen [kg]: \" output-type addedPollen_kg output-type \" total pollen added [kg]: \" output-print TotalPollenAdded 
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

TEXTBOX
572
1407
640
1435
(if age > 100)
11
0.0
1

INPUTBOX
6
1383
213
1443
TIME_NECTAR_GATHERING
1200.0
1
0
Number

INPUTBOX
6
1445
213
1505
TIME_POLLEN_GATHERING
600.0
1
0
Number

INPUTBOX
279
1417
434
1477
DANCE_INTERCEPT
0.0
1
0
Number

INPUTBOX
279
1348
434
1408
DANCE_SLOPE
1.16
1
0
Number

BUTTON
223
1444
278
1477
high
; from Seeley 1994\n; bee \"WY\" (lowest dance threshold)\nset DANCE_INTERCEPT -17.7\nset DANCE_SLOPE 1.16   
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
223
1413
278
1446
mean
; from Seeley 1994: mean values\nset DANCE_INTERCEPT -11.1\nset DANCE_SLOPE 0.51  
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
223
1380
278
1413
high 0
; Seeley 1994: highest slope (from bee \"WY\")\n; but intercept = 0 to allow dancing for \n; far patches\nset DANCE_INTERCEPT 0\nset DANCE_SLOPE 1.16  
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

TEXTBOX
1210
18
1281
44
VARROA
18
0.0
1

TEXTBOX
1207
374
1316
399
BEEKEEPING
18
0.0
1

CHOOSER
1233
815
1872
860
GenericPlot3
GenericPlot3
"colony structure workers" "drones" "egg laying" "broodcare [%]" "age forager squadrons" "aff & lifespan" "mileometer" "honey & pollen stores [kg]" "colony weight [kg]" "consumption [g/day]" "honey gain [kg]" "mites" "proportion infected mites" "active foragers [%]" "active foragers today [%]" "foragingPeriod" "foraging probability" "foragers today [%]" "loads returning foragers [%]" "mean trip duration" "mean total km per day" "# completed foraging trips (E-3)" "trips per hour sunshine (E-3)" "nectar availability [l]" "pollen availability [kg]"
3

BUTTON
775
1307
882
1369
Version Test
\nset Rand_seed 1\n\nDefaultProc\n\nset stopDead false\n\n; \"Varroa\"\nset N_INITIAL_MITES_HEALTHY 10\nset N_INITIAL_MITES_INFECTED 10\nset Virus \"DWV\"\nset MiteReproductionModel \"Martin\"\nset GenericPlot4 \"mites\"\nset AllowReinfestation true\nset KillOpenBrood true\nset KillOpenBrood2 true\nset KillAllMitesInCells true\nset KillAllMitesInCells2 true\nset DroneBroodRemoval true\nset ContinuousBroodRemoval true\nset TreatmentDay2 180\nset TreatmentDuration2 20\nset EfficiencyPhoretic2 0.05\n\n; \"Beekeeping\"\nset VarroaTreatment TRUE\nset FeedBees TRUE\nset HoneyHarvesting TRUE\nset MergeWeakColonies TRUE \nset MergeColoniesTH 5000\nset HarvestingDay 135\nset HarvestingPeriod 80\nset RemainingHoney_kg 5\nset HarvestingTH 20\nask signs with [shape = \"jenny\"] [show-turtle]\n\n; SWARMING\nset Swarming \"Swarming (prime swarm)\"\n\nSetup\nrepeat 365 [ startProc ]\nset VarroaTreatment false\nset Swarming \"Swarming (parental colony)\"\nset ContinuousBroodRemoval false\nset KillOpenBrood false\nset KillOpenBrood2 false\nset KillAllMitesInCells false\nset KillAllMitesInCells2 false\n\nrepeat 1825 [ startProc ]\n\nifelse\n(totalForagers = 5300)\nand ( totalIHbees = 41)\nand (totalMites = 7101)\nand (precision (HoneyEnergyStore / ( ENERGY_HONEY_per_g * 1000 )) 6 = 16.297696)\n[ user-message \"OK! No deviations detected from the Beehave_BeeMapp2015 version!\" ]\n[ ask patches [ set pcolor pink ]\n  user-message \"Caution! Changes have been made to the code! THIS IS NOT THE OFFICIAL VERSION OF Beehave_BeeMapp2015!\"]\n
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

PLOT
565
844
1230
1018
Generic plot 1
NIL
NIL
0.0
10.0
0.0
0.0
true
true
"" ""
PENS

PLOT
775
631
1201
783
Generic plot 2
NIL
NIL
0.0
10.0
0.0
0.01
true
true
"" ""
PENS

CHOOSER
565
816
1230
861
GenericPlot1
GenericPlot1
"colony structure workers" "drones" "egg laying" "broodcare [%]" "age forager squadrons" "aff & lifespan" "mileometer" "honey & pollen stores [kg]" "colony weight [kg]" "consumption [g/day]" "honey gain [kg]" "mites" "proportion infected mites" "active foragers [%]" "active foragers today [%]" "foragingPeriod" "foraging probability" "foragers today [%]" "loads returning foragers [%]" "mean trip duration" "mean total km per day" "# completed foraging trips (E-3)" "trips per hour sunshine (E-3)" "nectar availability [l]" "pollen availability [kg]"
7

CHOOSER
774
601
1202
646
GenericPlot2
GenericPlot2
"colony structure workers" "drones" "egg laying" "broodcare [%]" "age forager squadrons" "aff & lifespan" "mileometer" "honey & pollen stores [kg]" "colony weight [kg]" "consumption [g/day]" "honey gain [kg]" "mites" "proportion infected mites" "active foragers [%]" "active foragers today [%]" "foragingPeriod" "foraging probability" "foragers today [%]" "loads returning foragers [%]" "mean trip duration" "mean total km per day" "# completed foraging trips (E-3)" "trips per hour sunshine (E-3)" "nectar availability [l]" "pollen availability [kg]"
0

BUTTON
481
1227
561
1272
clear all plots
clear-all-plots
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

TEXTBOX
1207
115
1339
133
Varroa treatment:
14
0.0
1

TEXTBOX
1211
421
1361
439
Honey harvest:
14
0.0
1

TEXTBOX
1246
488
1312
506
Feeding:
14
0.0
1

TEXTBOX
1220
774
1333
792
Merging colonies:
14
0.0
1

TEXTBOX
466
1448
616
1466
Prepare experiments:\n
14
0.0
1

PLOT
565
471
1202
600
Generic plot 4
NIL
NIL
0.0
10.0
0.0
0.0
true
true
"" ""
PENS

CHOOSER
565
442
1202
487
GenericPlot4
GenericPlot4
"colony structure workers" "drones" "egg laying" "broodcare [%]" "age forager squadrons" "aff & lifespan" "mileometer" "honey & pollen stores [kg]" "colony weight [kg]" "consumption [g/day]" "honey gain [kg]" "mites" "proportion infected mites" "active foragers [%]" "active foragers today [%]" "foragingPeriod" "foraging probability" "foragers today [%]" "loads returning foragers [%]" "mean trip duration" "mean total km per day" "# completed foraging trips (E-3)" "trips per hour sunshine (E-3)" "nectar availability [l]" "pollen availability [kg]"
2

TEXTBOX
9
1243
159
1265
ADVANCED INPUT
18
0.0
1

PLOT
5
845
564
1018
Generic plot 5
NIL
NIL
0.0
10.0
0.0
0.0
true
true
"" ""
PENS

PLOT
4
1051
563
1224
Generic plot 6
NIL
NIL
0.0
10.0
0.0
0.0
true
true
"" ""
PENS

PLOT
565
1050
1233
1224
Generic plot 7
NIL
NIL
0.0
10.0
0.0
0.0
true
true
"" ""
PENS

PLOT
1234
1050
1875
1224
Generic plot 8
NIL
NIL
0.0
10.0
0.0
0.0
true
true
"" ""
PENS

CHOOSER
4
816
563
861
GenericPlot5
GenericPlot5
"colony structure workers" "drones" "egg laying" "broodcare [%]" "age forager squadrons" "aff & lifespan" "mileometer" "honey & pollen stores [kg]" "colony weight [kg]" "consumption [g/day]" "honey gain [kg]" "mites" "proportion infected mites" "active foragers [%]" "active foragers today [%]" "foragingPeriod" "foraging probability" "foragers today [%]" "loads returning foragers [%]" "mean trip duration" "mean total km per day" "# completed foraging trips (E-3)" "trips per hour sunshine (E-3)" "nectar availability [l]" "pollen availability [kg]"
23

CHOOSER
4
1020
563
1065
GenericPlot6
GenericPlot6
"colony structure workers" "drones" "egg laying" "broodcare [%]" "age forager squadrons" "aff & lifespan" "mileometer" "honey & pollen stores [kg]" "colony weight [kg]" "consumption [g/day]" "honey gain [kg]" "mites" "proportion infected mites" "active foragers [%]" "active foragers today [%]" "foragingPeriod" "foraging probability" "foragers today [%]" "loads returning foragers [%]" "mean trip duration" "mean total km per day" "# completed foraging trips (E-3)" "trips per hour sunshine (E-3)" "nectar availability [l]" "pollen availability [kg]"
24

CHOOSER
564
1020
1233
1065
GenericPlot7
GenericPlot7
"colony structure workers" "drones" "egg laying" "broodcare [%]" "age forager squadrons" "aff & lifespan" "mileometer" "honey & pollen stores [kg]" "colony weight [kg]" "consumption [g/day]" "honey gain [kg]" "mites" "proportion infected mites" "active foragers [%]" "active foragers today [%]" "foragingPeriod" "foraging probability" "foragers today [%]" "loads returning foragers [%]" "mean trip duration" "mean total km per day" "# completed foraging trips (E-3)" "trips per hour sunshine (E-3)" "nectar availability [l]" "pollen availability [kg]"
19

CHOOSER
1234
1020
1875
1065
GenericPlot8
GenericPlot8
"colony structure workers" "drones" "egg laying" "broodcare [%]" "age forager squadrons" "aff & lifespan" "mileometer" "honey & pollen stores [kg]" "colony weight [kg]" "consumption [g/day]" "honey gain [kg]" "mites" "proportion infected mites" "active foragers [%]" "active foragers today [%]" "foragingPeriod" "foraging probability" "foragers today [%]" "loads returning foragers [%]" "mean trip duration" "mean total km per day" "# completed foraging trips (E-3)" "trips per hour sunshine (E-3)" "nectar availability [l]" "pollen availability [kg]"
17

TEXTBOX
8
1273
150
1307
Red & green default flower patches:
14
0.0
1

TEXTBOX
1223
608
1373
626
Colony stores:
14
0.0
1

TEXTBOX
36
1571
186
1589
(timing of patch phenology)
11
0.0
1

TEXTBOX
229
1285
379
1303
Dancing:
14
0.0
1

TEXTBOX
465
1284
633
1318
Colony & bee behaviour:
14
0.0
1

TEXTBOX
230
1483
325
1501
Egg laying:
14
0.0
1

TEXTBOX
1256
715
1334
733
Swarming:
14
0.0
1

TEXTBOX
666
1284
816
1302
Program: 
14
0.0
1

TEXTBOX
897
1283
997
1301
Special output:
14
0.0
1

MONITOR
1879
906
2011
951
phoretic mites INFECTED
phoreticMites * (1 - phoreticMitesHealthyRate)
2
1
11

MONITOR
1879
860
2011
905
phoretic mites healthy
phoreticMites * phoreticMitesHealthyRate
2
1
11

MONITOR
2
738
66
783
# workers
totalIHbees + totalForagers
17
1
11

MONITOR
67
738
134
783
# foragers
totalForagers
17
1
11

MONITOR
355
738
409
783
# brood
totalWorkerAndDroneBrood
17
1
11

MONITOR
241
738
291
783
aff
aff
17
1
11

MONITOR
135
738
240
783
mean age foragers
mean [ age ] of foragerSquadrons
1
1
11

MONITOR
1879
1044
2011
1089
mite fall
DailyMiteFall
17
1
11

MONITOR
292
738
354
783
# ih bees
totalIHbees
17
1
11

MONITOR
410
738
468
783
work load
totalWorkerAndDroneBrood / ((totalIHbees + totalForagers * FORAGER_NURSING_CONTRIBUTION) * MAX_BROOD_NURSE_RATIO)
2
1
11

MONITOR
469
739
563
784
% pollen store
(PollenStore_g / IdealPollenStore_g) * 100
1
1
11

MONITOR
1879
1135
2012
1180
pollen store [kg]
pollenStore_g / 1000
3
1
11

MONITOR
1879
1180
2012
1225
honey store [kg]
HoneyEnergyStore / ( ENERGY_HONEY_per_g * 1000 )
8
1
11

BUTTON
895
1482
1002
1515
Video
;; export movie of the view\n;setup\n;movie-start \"out.mov\"\n;movie-set-frame-rate 15\n;movie-grab-view ;; show the initial state\n;repeat 365\n;[ StartProc \n;   movie-grab-view \n; ]\n;movie-close\n\n
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

MONITOR
1879
1089
2012
1134
rate healthy foragers
(count foragerSquadrons with [infectionState = \"healthy\"]) / (totalForagers / SQUADRON_SIZE)
3
1
11

BUTTON
223
1348
278
1381
mean 0
; Seeley 1994: mean slope but intercept = 0\n;  to allow dancing for far patches\nset DANCE_INTERCEPT 0\nset DANCE_SLOPE 0.51  
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
1517
751
1711
805
1-2 foraging file
set ReadInfile TRUE\nset StopDead false\nSetup\nlet filename \"Input_1-2_Foraging.txt\" \nif file-exists? filename   ;; If the file already exists, we begin by deleting it, otherwise new data would be appended to the old contents.\n             [ file-delete filename ]\nfile-open filename    \n   \nfile-print count flowerPatches\nfile-print \"day who nectarVisits pollenVisits\"\nrepeat 365 [ \n  startProc\n  foreach sort flowerpatches [ x -> ask x [\n    file-type day file-type \" \"\n    ;file-type who file-type \" \"\n    file-type oldPatchId file-type \" \"\n    file-type nectarVisitsToday file-type \" \"\n    file-type pollenVisitsToday file-print \" \"\n   ] ]\n] ; end repeat\nfile-close  \nuser-message \"Input file ('Input_1-2_Foraging.txt') was created for the external landscape module BEESCOUT\"
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

MONITOR
1879
814
2010
859
total mites
totalMites
17
1
11

MONITOR
624
601
772
646
Date & Year
DateREP
17
1
11

INPUTBOX
1755
745
1983
805
WeatherFile
WeatherExample.txt
1
0
String

INPUTBOX
1328
145
1444
205
TreatmentDay
270.0
1
0
Number

INPUTBOX
1445
145
1561
205
TreatmentDuration
40.0
1
0
Number

INPUTBOX
1562
145
1678
205
EfficiencyPhoretic
0.115
1
0
Number

INPUTBOX
1327
215
1443
275
TreatmentDay2
0.0
1
0
Number

INPUTBOX
1445
215
1560
275
TreatmentDuration2
0.0
1
0
Number

INPUTBOX
1561
215
1678
275
EfficiencyPhoretic2
0.0
1
0
Number

MONITOR
324
1227
401
1272
Followers R
[ danceFollowersNectar ] of flowerPatch 0
2
1
11

MONITOR
403
1227
480
1272
Followers G
[ danceFollowersNectar ] of flowerPatch 1
2
1
11

MONITOR
1813
149
1951
194
(est. efficiency phoretic 1)
1 - ((1 - EfficiencyPhoretic) ^ TreatmentDuration)
3
1
11

MONITOR
1814
223
1954
268
(est. efficiency phoretic 2)
1 - ((1 - EfficiencyPhoretic2) ^ TreatmentDuration2)
3
1
11

SWITCH
1755
569
1982
602
ReadBeeMappFile
ReadBeeMappFile
1
1
-1000

CHOOSER
1064
1310
1252
1355
HiveType
HiveType
"National, WBC, Smith" "Langstroth" "Commercial" "Dadant"
1

CHOOSER
1064
1356
1252
1401
FrameType
FrameType
"Standard brood/deep frame" "Extra deep/jumbo frame" "Shallow frame"
2

BUTTON
1064
1400
1252
1433
show cells per frame
let cellsPerFrame 0\nlet message \"\"\nif HiveType = \"National, WBC, Smith\"\n [ \n   if FrameType = \"Standard brood/deep frame\" [ set cellsPerFrame 5400 ]\n   if FrameType = \"Extra deep/jumbo frame\" [ set cellsPerFrame 7700 ]\n   if FrameType = \"Shallow frame\" [ set cellsPerFrame 3400 ]\n ] \nif HiveType = \"Langstroth\"\n [ \n   if FrameType = \"Standard brood/deep frame\" [ set cellsPerFrame 7200 ]\n   if FrameType = \"Extra deep/jumbo frame\" [ set cellsPerFrame 9000 ]\n   if FrameType = \"Shallow frame\" [ set cellsPerFrame 4000 ]\n ]\nif HiveType = \"Commercial\"\n [ \n   if FrameType = \"Standard brood/deep frame\" [ set cellsPerFrame 6500 ]\n   if FrameType = \"Shallow frame\" [ set cellsPerFrame 4300 ]\n ]\nif HiveType = \"Dadant\"\n [ \n   if FrameType = \"Standard brood/deep frame\" [ set cellsPerFrame 9000 ]\n   if FrameType = \"Shallow frame\" [ set cellsPerFrame 4800 ]\n ]\nifelse cellsPerFrame > 0\n [ set message (word \"Number of cells per frame (both sides): ca. \" cellsPerFrame) ]\n [ set message \"No data for this combination of hive and frame type\"]\n \nuser-message message
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

SWITCH
1327
277
1499
310
DroneBroodRemoval
DroneBroodRemoval
1
1
-1000

INPUTBOX
1502
277
1586
337
RemovalDay1
100.0
1
0
Number

INPUTBOX
1588
277
1672
337
RemovalDay2
140.0
1
0
Number

INPUTBOX
1673
277
1757
337
RemovalDay3
180.0
1
0
Number

INPUTBOX
1758
277
1841
337
RemovalDay4
220.0
1
0
Number

INPUTBOX
1843
277
1926
337
RemovalDay5
240.0
1
0
Number

SWITCH
1326
311
1499
344
ContinuousBroodRemoval
ContinuousBroodRemoval
1
1
-1000

SWITCH
1679
140
1811
173
KillOpenBrood
KillOpenBrood
1
1
-1000

SWITCH
1679
212
1811
245
KillOpenBrood2
KillOpenBrood2
1
1
-1000

SWITCH
1679
172
1811
205
KillAllMitesInCells
KillAllMitesInCells
1
1
-1000

SWITCH
1679
246
1812
279
KillAllMitesInCells2
KillAllMitesInCells2
1
1
-1000

INPUTBOX
1659
10
1796
70
MiteReinfestation
0.1
1
0
Number

SWITCH
1660
71
1796
104
AllowReinfestation
AllowReinfestation
1
1
-1000

TEXTBOX
1672
51
1822
69
additional mites per day 
11
0.0
1

TEXTBOX
1754
369
1904
391
FILES - in
18
0.0
1

TEXTBOX
1757
544
1974
578
Colony assessment from BeeMapp: 
14
0.0
1

TEXTBOX
1755
677
1977
711
Weather file from Beehave weather:
14
0.0
1

TEXTBOX
1754
403
1974
437
Food sources (e.g. from BeeMapp or BEESCOUT):
14
0.0
1

TEXTBOX
1517
695
1667
717
FILES - out
18
0.0
1

TEXTBOX
1517
726
1719
760
Foraging activity to BEESCOUT:
14
0.0
1

TEXTBOX
1067
1282
1217
1300
Calculator: # cells
14
0.0
1

CHOOSER
1753
475
1980
520
INPUT_FILE
INPUT_FILE
"Input_2-1_FoodFlow.txt" "Input_2-1_FoodFlow_RRes.txt" "Sources.txt"
0

CHOOSER
1755
602
1982
647
BeeMapp_FILE
BeeMapp_FILE
"Assessments.txt"
0

TEXTBOX
1836
522
1978
540
(right click & \"Edit\" to add more)
9
0.0
1

TEXTBOX
1836
652
1975
670
(right click & \"Edit\" to add more)
9
0.0
1

INPUTBOX
1602
490
1700
550
AddedPollen_kg
1.0
1
0
Number

TEXTBOX
1604
478
1708
500
Pollen added 1 March:
9
0.0
1

INPUTBOX
1356
1248
1511
1308
EggsPerPollen_g
18.0
1
0
Number

INPUTBOX
1550
1254
1705
1314
r_1
2.35
1
0
Number

INPUTBOX
1553
1341
1708
1401
r_5
0.3
1
0
Number

INPUTBOX
1357
1321
1512
1381
SafeDays
0.0
1
0
Number

INPUTBOX
1358
1390
1513
1450
FreshPollenDays
20.0
1
0
Number

INPUTBOX
1046
1520
1201
1580
T_ref
27.0
1
0
Number

INPUTBOX
1208
1521
1363
1581
k_ref
0.44
1
0
Number

INPUTBOX
1379
1519
1534
1579
E_a
147.0
1
0
Number

INPUTBOX
1620
1470
1775
1530
lenEggLayingAverage
10.0
1
0
Number

INPUTBOX
1624
1537
1779
1597
lenIdealPollenList
6.0
1
0
Number

INPUTBOX
1551
1408
1706
1468
MAX_EGG_LAYING
1600.0
1
0
Number

@#$#@#$#@
# Terms of use of the software Beehave_BeeMapp (2015)


Beehave (2013) and Beehave_BeeMapp (2015) are implementations of the model BEEHAVE, developed by Matthias Becher and colleagues:

Becher, M.A., Grimm, V., Thorbek, P., Horn, J., Kennedy, P.J. & Osborne, J.L. (2013) BEEHAVE: A systems model of honeybee colony dynamics and foraging to explore multifactorial causes of colony failure. _Journal of Applied Ecology_. 


This implementation is based on the software platform NetLogo (Wilensky 1999), and can be downloaded for free from http://beehave-model.net/.



## Copyright and Licence Information:
Copyright 2015 by Matthias Becher

This program is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation; either version 3 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

A copy of the GNU General Public License can be found at http://www.gnu.org/licenses/gpl.html or write to the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301, USA. 



## Recommendations when using BEEHAVE:

• Please refer to the BEEHAVE publication (Becher et al. 2013; see above) and the BEEHAVE website (http://beehave-model.net/) when using BEEHAVE. 

• We recommend that any publication or report based on using BEEHAVE shall include, in the Supplementary Material, the very NetLogo file that was used to produce the corresponding figure, table, or other kinds of results, as well as the "Experiments" in the BehaviorSpace and all necessary input files (see Supplementary Material of Becher et al. 2013 as example).

• You might want to modify the NetLogo code implementing BEEHAVE, for example by adding further outputs, or running specific scenarios. To check whether you are still using the original version of BEEHAVE click the "Version Test" button, which runs the model under specific settings and defined random numbers and informs the user if the code was changed. Note that not all changes to the code can be detected by this test. If you changed the code, we recommend to document these changes in all detail and to provide a revised ODD model description in which the modified or added elements are highlighted.

 
@#$#@#$#@
default
true
0
Polygon -7500403 true true 150 5 40 250 150 205 260 250

airplane
true
0
Polygon -7500403 true true 150 0 135 15 120 60 120 105 15 165 15 195 120 180 135 240 105 270 120 285 150 270 180 285 210 270 165 240 180 180 285 195 285 165 180 105 180 60 165 15

ambrosia
false
15
Rectangle -1 true true 51 107 246 218
Rectangle -1 true true 46 40 256 205
Rectangle -13345367 true false 60 90 240 180
Circle -1 true true 39 24 42
Circle -1 true true 219 24 42
Circle -1 true true 219 204 42
Circle -1 true true 39 204 42
Rectangle -1 true true 39 45 60 222
Rectangle -1 true true 246 46 261 224
Rectangle -1 true true 57 23 243 53
Rectangle -1 true true 57 218 240 246
Line -1184463 false 72 113 72 158
Line -1184463 false 74 134 88 134
Circle -1184463 false false 102 117 43
Rectangle -2674135 true false 192 9 239 23
Polygon -1 true true 58 27 65 8 140 8 147 27
Line -1184463 false 73 114 97 114
Circle -1184463 false false 151 115 43
Polygon -1184463 false false 207 115 221 117 226 129 226 146 221 155 207 158
Rectangle -16777216 true false 74 16 132 27

arrow
true
0
Polygon -7500403 true true 150 0 0 150 105 150 105 293 195 293 195 150 300 150

arrowpollen
true
0
Polygon -7500403 true true 150 0 0 150 105 150 105 293 195 293 195 150 300 150

bee_mb_1
true
0
Circle -7500403 true true 110 75 80
Circle -7500403 true true 101 157 98
Circle -6459832 true false 107 124 86
Line -7500403 true 150 100 105 60
Line -7500403 true 150 100 195 60
Circle -7500403 true true 103 178 92
Circle -7500403 true true 117 227 62
Polygon -7500403 true true 120 150 60 225 60 240 75 255 105 255 120 240 135 165 120 150
Polygon -7500403 true true 180 150 240 225 240 240 225 255 195 255 180 240 165 165 180 150
Circle -16777216 true false 116 88 19
Circle -16777216 true false 163 86 19
Circle -16777216 true false 112 99 19
Circle -16777216 true false 168 97 19

bee_mb_pollen
true
0
Circle -7500403 true true 110 75 80
Circle -7500403 true true 101 157 98
Circle -6459832 true false 107 124 86
Line -7500403 true 150 100 105 60
Line -7500403 true 150 100 195 60
Circle -7500403 true true 103 178 92
Circle -7500403 true true 117 227 62
Polygon -7500403 true true 120 150 60 225 60 240 75 255 105 255 120 240 135 165 120 150
Polygon -7500403 true true 180 150 240 225 240 240 225 255 195 255 180 240 165 165 180 150
Circle -16777216 true false 116 88 19
Circle -16777216 true false 163 86 19
Circle -16777216 true false 112 99 19
Circle -16777216 true false 168 97 19
Circle -1184463 true false 90 240 30
Circle -1184463 true false 180 240 30

beehive1
false
3
Rectangle -6459832 true true 15 135 285 270
Rectangle -7500403 true false 0 105 300 135
Line -16777216 false 15 240 285 240
Rectangle -16777216 true false 120 240 180 255

beehive1super
false
3
Rectangle -6459832 true true 15 195 150 300
Rectangle -7500403 true false 0 180 165 195
Line -16777216 false 15 285 150 285
Rectangle -16777216 true false 60 285 105 300
Line -16777216 false 15 225 150 225

beehive2
false
3
Rectangle -6459832 true true 15 30 285 270
Rectangle -7500403 true false 0 0 300 30
Line -16777216 false 15 240 285 240
Rectangle -16777216 true false 120 240 180 255
Line -16777216 false 15 135 285 135

beehive2super
false
3
Rectangle -6459832 true true 15 165 150 300
Rectangle -7500403 true false 0 150 165 165
Line -16777216 false 15 285 150 285
Rectangle -16777216 true false 60 285 105 300
Line -16777216 false 15 225 150 225
Line -16777216 false 15 195 150 195

beehive3super
false
3
Rectangle -6459832 true true 15 135 150 300
Rectangle -7500403 true false 0 120 165 135
Line -16777216 false 15 285 150 285
Rectangle -16777216 true false 60 285 105 300
Line -16777216 false 15 225 150 225
Line -16777216 false 15 195 150 195
Line -16777216 false 15 165 150 165

beehive4super
false
3
Rectangle -6459832 true true 15 105 150 300
Rectangle -7500403 true false 0 90 165 105
Line -16777216 false 15 285 150 285
Rectangle -16777216 true false 60 285 105 300
Line -16777216 false 15 225 150 225
Line -16777216 false 15 195 150 195
Line -16777216 false 15 165 150 165
Line -16777216 false 15 135 150 135

beehive5super
false
3
Rectangle -6459832 true true 15 75 150 300
Rectangle -7500403 true false 0 60 165 75
Line -16777216 false 15 285 150 285
Rectangle -16777216 true false 60 285 105 300
Line -16777216 false 15 225 150 225
Line -16777216 false 15 195 150 195
Line -16777216 false 15 165 150 165
Line -16777216 false 15 105 150 105
Line -16777216 false 15 135 150 135

beehive6super
false
3
Rectangle -6459832 true true 15 45 150 300
Rectangle -7500403 true false 0 30 165 45
Line -16777216 false 15 285 150 285
Rectangle -16777216 true false 60 285 105 300
Line -16777216 false 15 225 150 225
Line -16777216 false 15 195 150 195
Line -16777216 false 15 165 150 165
Line -16777216 false 15 105 150 105
Line -16777216 false 15 135 150 135
Line -16777216 false 15 105 150 105
Line -16777216 false 15 75 150 75

beehive7super
false
3
Rectangle -6459832 true true 15 15 150 300
Rectangle -7500403 true false 0 0 165 15
Line -16777216 false 15 285 150 285
Rectangle -16777216 true false 60 285 105 300
Line -16777216 false 15 225 150 225
Line -16777216 false 15 195 150 195
Line -16777216 false 15 165 150 165
Line -16777216 false 15 105 150 105
Line -16777216 false 15 135 150 135
Line -16777216 false 15 105 150 105
Line -16777216 false 15 75 150 75
Line -16777216 false 15 45 150 45

beehivedeephive
false
3
Rectangle -6459832 true true 15 225 150 300
Rectangle -7500403 true false 0 210 165 225
Line -16777216 false 15 285 150 285
Rectangle -16777216 true false 60 285 105 300

beelarva
true
0
Circle -7500403 true true 150 122 60
Circle -7500403 true true 135 110 60
Circle -7500403 true true 120 105 60
Circle -7500403 true true 105 105 60
Circle -7500403 true true 90 105 60
Circle -7500403 true true 69 111 58
Circle -7500403 true true 52 132 44
Circle -7500403 true true 50 152 32
Circle -7500403 true true 54 175 14
Circle -7500403 true true 168 145 44

beelarva_x
true
0
Circle -7500403 true true 140 158 60
Circle -7500403 true true 124 173 60
Circle -7500403 true true 144 143 60
Circle -7500403 true true 145 125 60
Circle -7500403 true true 141 110 60
Circle -7500403 true true 136 96 58
Circle -7500403 true true 132 91 44
Circle -7500403 true true 123 90 32
Circle -7500403 true true 116 95 14
Circle -7500403 true true 117 193 44
Rectangle -2674135 true false 75 135 255 165
Rectangle -2674135 true false 150 60 180 240

beelarva_x2
true
0
Circle -7500403 true true 173 157 54
Circle -7500403 true true 138 119 60
Circle -7500403 true true 161 134 60
Circle -7500403 true true 98 111 52
Circle -7500403 true true 120 108 60
Circle -7500403 true true 80 121 50
Circle -7500403 true true 73 135 44
Circle -7500403 true true 71 155 32
Circle -7500403 true true 73 175 14
Circle -7500403 true true 183 178 44
Rectangle -2674135 true false 80 134 230 164
Rectangle -2674135 true false 136 75 166 225

book
false
0
Polygon -7500403 true true 30 195 150 255 270 135 150 75
Polygon -7500403 true true 30 135 150 195 270 75 150 15
Polygon -7500403 true true 30 135 30 195 90 150
Polygon -1 true false 39 139 39 184 151 239 156 199
Polygon -1 true false 151 239 254 135 254 90 151 197
Line -7500403 true 150 196 150 247
Line -7500403 true 43 159 138 207
Line -7500403 true 43 174 138 222
Line -7500403 true 153 206 248 113
Line -7500403 true 153 221 248 128
Polygon -1 true false 159 52 144 67 204 97 219 82

box
false
0
Polygon -7500403 true true 150 285 285 225 285 75 150 135
Polygon -7500403 true true 150 135 15 75 150 15 285 75
Polygon -7500403 true true 15 75 15 225 150 285 150 135
Line -16777216 false 150 285 150 135
Line -16777216 false 150 135 15 75
Line -16777216 false 150 135 285 75

bug
true
0
Circle -7500403 true true 96 182 108
Circle -7500403 true true 110 127 80
Circle -7500403 true true 110 75 80
Line -7500403 true 150 100 80 30
Line -7500403 true 150 100 220 30

bumblebeenest
false
0
Circle -6459832 true false 135 105 90
Circle -6459832 true false 15 135 90
Circle -6459832 true false 150 180 90
Circle -6459832 true false 75 150 90
Circle -6459832 true false 90 210 90
Circle -6459832 true false 195 120 90
Circle -16777216 true false 45 136 42
Circle -16777216 true false 109 151 42
Circle -16777216 true false 166 181 42
Circle -6459832 true false 15 195 90

butterfly
true
0
Polygon -7500403 true true 150 165 209 199 225 225 225 255 195 270 165 255 150 240
Polygon -7500403 true true 150 165 89 198 75 225 75 255 105 270 135 255 150 240
Polygon -7500403 true true 139 148 100 105 55 90 25 90 10 105 10 135 25 180 40 195 85 194 139 163
Polygon -7500403 true true 162 150 200 105 245 90 275 90 290 105 290 135 275 180 260 195 215 195 162 165
Polygon -16777216 true false 150 255 135 225 120 150 135 120 150 105 165 120 180 150 165 225
Circle -16777216 true false 135 90 30
Line -16777216 false 150 105 195 60
Line -16777216 false 150 105 105 60

car
false
0
Polygon -7500403 true true 300 180 279 164 261 144 240 135 226 132 213 106 203 84 185 63 159 50 135 50 75 60 0 150 0 165 0 225 300 225 300 180
Circle -16777216 true false 180 180 90
Circle -16777216 true false 30 180 90
Polygon -16777216 true false 162 80 132 78 134 135 209 135 194 105 189 96 180 89
Circle -7500403 true true 47 195 58
Circle -7500403 true true 195 195 58

circle
false
0
Circle -7500403 true true 0 0 300

circle 2
false
0
Circle -7500403 true true 0 0 300
Circle -16777216 true false 30 30 240

cloud
false
0
Circle -7500403 true true 13 118 94
Circle -7500403 true true 86 101 127
Circle -7500403 true true 51 51 108
Circle -7500403 true true 118 43 95
Circle -7500403 true true 158 68 134

colonies_merged
false
3
Rectangle -6459832 true true 0 195 135 300
Rectangle -7500403 true false 0 180 135 195
Line -16777216 false 0 285 135 285
Rectangle -16777216 true false 34 285 79 300
Line -16777216 false 0 225 135 225
Rectangle -7500403 true false 165 180 300 195
Rectangle -6459832 true true 165 195 300 300
Line -16777216 false 165 225 300 225
Line -16777216 false 165 285 300 285
Rectangle -16777216 true false 207 285 252 300
Rectangle -2674135 true false 146 238 153 268
Rectangle -2674135 true false 137 249 163 258

cow
false
0
Polygon -7500403 true true 200 193 197 249 179 249 177 196 166 187 140 189 93 191 78 179 72 211 49 209 48 181 37 149 25 120 25 89 45 72 103 84 179 75 198 76 252 64 272 81 293 103 285 121 255 121 242 118 224 167
Polygon -7500403 true true 73 210 86 251 62 249 48 208
Polygon -7500403 true true 25 114 16 195 9 204 23 213 25 200 39 123

cross
true
0
Rectangle -7500403 true true 120 15 180 285
Rectangle -7500403 true true 15 120 285 180

crown
false
0
Polygon -1184463 true false 15 150 45 225 255 225 285 150 15 150
Polygon -1184463 true false 150 120 90 150 210 150 150 120
Polygon -1184463 true false 45 120 15 150 75 150 45 120
Polygon -1184463 true false 255 120 225 150 285 150 255 120
Rectangle -1184463 true false 135 75 165 135
Rectangle -1184463 true false 120 90 180 105
Circle -2674135 true false 120 150 60

crownx
false
0
Polygon -1184463 true false 15 150 45 225 255 225 285 150 15 150
Polygon -1184463 true false 150 120 90 150 210 150 150 120
Polygon -1184463 true false 45 120 15 150 75 150 45 120
Polygon -1184463 true false 255 120 225 150 285 150 255 120
Rectangle -1184463 true false 135 75 165 135
Rectangle -1184463 true false 120 90 180 105
Circle -2674135 true false 120 150 60
Polygon -2674135 true false 15 30 30 15 285 270 270 285 15 30
Polygon -2674135 true false 30 285 15 270 270 15 285 30

cylinder
false
0
Circle -7500403 true true 0 0 300

dot
false
0
Circle -7500403 true true 90 90 120

exclamation
false
0
Circle -7500403 true true 103 198 95
Polygon -7500403 true true 135 180 165 180 210 30 180 0 120 0 90 30

face happy
false
0
Circle -7500403 true true 8 8 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Polygon -16777216 true false 150 255 90 239 62 213 47 191 67 179 90 203 109 218 150 225 192 218 210 203 227 181 251 194 236 217 212 240

face neutral
false
0
Circle -7500403 true true 8 7 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Rectangle -16777216 true false 60 195 240 225

face sad
false
0
Circle -7500403 true true 8 8 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Polygon -16777216 true false 150 168 90 184 62 210 47 232 67 244 90 220 109 205 150 198 192 205 210 220 227 242 251 229 236 206 212 183

fadedflower
false
0
Polygon -6459832 true false 75 195 165 165 180 210 180 240 150 300 165 300 195 240 195 195 165 135
Circle -7500403 true true 10 252 38
Circle -7500403 true true 70 132 38
Circle -7500403 true true 102 175 38
Circle -7500403 true true 87 237 38
Circle -7500403 true true -5 145 38
Circle -7500403 true true 6 156 108
Circle -16777216 true false 23 173 74
Polygon -6459832 true false 189 233 210 225 240 225 225 285 210 240
Polygon -6459832 true false 180 240 150 240 105 240 90 285 120 255

fish
false
0
Polygon -1 true false 44 131 21 87 15 86 0 120 15 150 0 180 13 214 20 212 45 166
Polygon -1 true false 135 195 119 235 95 218 76 210 46 204 60 165
Polygon -1 true false 75 45 83 77 71 103 86 114 166 78 135 60
Polygon -7500403 true true 30 136 151 77 226 81 280 119 292 146 292 160 287 170 270 195 195 210 151 212 30 166
Circle -16777216 true false 215 106 30

flag
false
0
Rectangle -7500403 true true 60 15 75 300
Polygon -7500403 true true 90 150 270 90 90 30
Line -7500403 true 75 135 90 135
Line -7500403 true 75 45 90 45

flower
false
0
Polygon -10899396 true false 135 120 165 165 180 210 180 240 150 300 165 300 195 240 195 195 165 135
Circle -7500403 true true 85 132 38
Circle -7500403 true true 130 147 38
Circle -7500403 true true 192 85 38
Circle -7500403 true true 85 40 38
Circle -7500403 true true 177 40 38
Circle -7500403 true true 177 132 38
Circle -7500403 true true 70 85 38
Circle -7500403 true true 130 25 38
Circle -7500403 true true 96 51 108
Circle -1184463 true false 113 68 74
Polygon -10899396 true false 189 233 219 188 249 173 279 188 234 218
Polygon -10899396 true false 180 255 150 210 105 210 75 240 135 240

flowerorange
false
0
Polygon -10899396 true false 135 120 165 165 180 210 180 240 150 300 165 300 195 240 195 195 165 135
Circle -7500403 true true 85 132 38
Circle -7500403 true true 130 147 38
Circle -7500403 true true 192 85 38
Circle -7500403 true true 85 40 38
Circle -7500403 true true 177 40 38
Circle -7500403 true true 177 132 38
Circle -7500403 true true 70 85 38
Circle -7500403 true true 130 25 38
Circle -7500403 true true 96 51 108
Circle -955883 true false 113 68 74
Polygon -10899396 true false 189 233 219 188 249 173 279 188 234 218
Polygon -10899396 true false 180 255 150 210 105 210 75 240 135 240

honeyjar
false
15
Circle -1184463 true false 39 69 42
Circle -1184463 true false 219 69 42
Circle -1184463 true false 219 204 42
Circle -1184463 true false 39 204 42
Rectangle -1184463 true false 45 75 255 240
Rectangle -1184463 true false 39 87 54 222
Rectangle -1184463 true false 246 85 261 220
Rectangle -1184463 true false 60 70 243 98
Rectangle -1184463 true false 57 218 240 246
Rectangle -7500403 true false 75 29 226 72
Rectangle -1 true true 51 107 246 218
Line -16777216 false 63 129 63 186
Line -16777216 false 80 129 80 186
Line -16777216 false 65 158 79 158
Circle -16777216 false false 85 140 43
Line -16777216 false 134 135 135 185
Line -16777216 false 134 137 154 184
Line -16777216 false 154 185 153 135
Line -16777216 false 168 134 168 186
Line -16777216 false 169 136 182 136
Line -16777216 false 169 160 179 160
Line -16777216 false 168 185 183 185
Line -16777216 false 193 134 205 150
Line -16777216 false 206 152 217 132
Line -16777216 false 207 154 208 185

house
false
0
Rectangle -7500403 true true 45 120 255 285
Rectangle -16777216 true false 120 210 180 285
Polygon -7500403 true true 15 120 150 15 285 120
Line -16777216 false 30 120 270 120

leaf
false
0
Polygon -7500403 true true 150 210 135 195 120 210 60 210 30 195 60 180 60 165 15 135 30 120 15 105 40 104 45 90 60 90 90 105 105 120 120 120 105 60 120 60 135 30 150 15 165 30 180 60 195 60 180 120 195 120 210 105 240 90 255 90 263 104 285 105 270 120 285 135 240 165 240 180 270 195 240 210 180 210 165 195
Polygon -7500403 true true 135 195 135 240 120 255 105 255 105 285 135 285 165 240 165 195

line
true
0
Line -7500403 true 150 0 150 300

line half
true
0
Line -7500403 true 150 0 150 150

linemb
true
0
Line -7500403 true 15 150 150 150

pentagon
false
0
Polygon -7500403 true true 150 15 15 120 60 285 240 285 285 120

person
false
0
Circle -7500403 true true 110 5 80
Polygon -7500403 true true 105 90 120 195 90 285 105 300 135 300 150 225 165 300 195 300 210 285 180 195 195 90
Rectangle -7500403 true true 127 79 172 94
Polygon -7500403 true true 195 90 240 150 225 180 165 105
Polygon -7500403 true true 105 90 60 150 75 180 135 105

person farmer
false
0
Polygon -7500403 true true 105 90 120 195 90 285 105 300 135 300 150 225 165 300 195 300 210 285 180 195 195 90
Polygon -1 true false 60 195 90 210 114 154 120 195 180 195 187 157 210 210 240 195 195 90 165 90 150 105 150 150 135 90 105 90
Circle -7500403 true true 110 5 80
Rectangle -7500403 true true 127 79 172 94
Polygon -13345367 true false 120 90 120 180 120 195 90 285 105 300 135 300 150 225 165 300 195 300 210 285 180 195 180 90 172 89 165 135 135 135 127 90
Polygon -6459832 true false 116 4 113 21 71 33 71 40 109 48 117 34 144 27 180 26 188 36 224 23 222 14 178 16 167 0
Line -16777216 false 225 90 270 90
Line -16777216 false 225 15 225 90
Line -16777216 false 270 15 270 90
Line -16777216 false 247 15 247 90
Rectangle -6459832 true false 240 90 255 300

person_beekeeper
false
13
Polygon -2064490 true true 105 90 120 195 90 285 105 300 135 300 150 225 165 300 195 300 210 285 180 195 195 90
Polygon -1 true false 60 195 90 210 114 154 120 195 180 195 187 157 210 210 240 195 195 90 165 90 150 105 150 150 135 90 105 90
Circle -2064490 true true 110 5 80
Rectangle -2064490 true true 127 79 172 94
Polygon -1 true false 120 90 120 180 120 195 90 285 105 300 135 300 150 225 165 300 195 300 210 285 180 195 180 90 172 89 165 135 135 135 127 90
Polygon -1 true false 115 2 112 19 70 31 70 38 108 46 116 32 143 25 179 24 187 34 223 21 221 12 177 14 166 -2
Rectangle -7500403 true false 225 210 255 255
Rectangle -16777216 false false 115 24 182 99
Line -16777216 false 127 26 128 99
Line -16777216 false 142 24 143 96
Line -16777216 false 156 27 157 99
Line -16777216 false 167 25 168 97
Line -16777216 false 115 76 181 75
Line -16777216 false 115 85 182 85
Line -16777216 false 117 60 180 60
Line -16777216 false 116 45 179 45
Circle -7500403 true false 225 195 30
Polygon -7500403 true false 247 205 255 211 270 196 265 196 248 202
Polygon -6459832 true false 225 211 205 211 227 250
Circle -16777216 true false 142 163 10
Circle -16777216 true false 142 143 10
Circle -16777216 true false 143 180 10
Line -16777216 false 120 195 179 195
Line -16777216 false 115 34 178 34

pete
false
13
Polygon -2064490 true true 105 90 120 195 90 285 105 300 135 300 150 225 165 300 195 300 210 285 180 195 195 90
Polygon -1 true false 60 195 90 210 114 154 120 195 180 195 187 157 210 210 240 195 195 90 165 90 150 105 150 150 135 90 105 90
Circle -2064490 true true 110 5 80
Rectangle -2064490 true true 127 79 172 94
Polygon -1 true false 120 90 120 180 120 195 90 285 105 300 135 300 150 225 165 300 195 300 210 285 180 195 180 90 172 89 165 135 135 135 127 90
Polygon -1 true false 115 2 112 19 70 31 70 38 108 46 116 32 143 25 179 24 187 34 223 21 221 12 177 14 166 -2
Rectangle -7500403 true false 225 209 258 255
Rectangle -16777216 false false 115 24 182 99
Line -16777216 false 127 26 127 95
Line -16777216 false 142 24 143 96
Line -16777216 false 156 27 157 96
Line -16777216 false 167 25 168 96
Line -16777216 false 115 76 181 75
Line -16777216 false 115 85 182 85
Line -16777216 false 117 60 180 60
Line -16777216 false 116 45 179 45
Circle -7500403 true false 222 188 36
Polygon -7500403 true false 249 211 257 217 276 188 268 184 247 195
Polygon -6459832 true false 226 204 199 205 227 250
Circle -16777216 true false 143 173 10
Circle -16777216 true false 142 151 10
Line -16777216 false 120 195 179 195
Line -16777216 false 115 34 178 34

plant
false
0
Rectangle -7500403 true true 135 90 165 300
Polygon -7500403 true true 135 255 90 210 45 195 75 255 135 285
Polygon -7500403 true true 165 255 210 210 255 195 225 255 165 285
Polygon -7500403 true true 135 180 90 135 45 120 75 180 135 210
Polygon -7500403 true true 165 180 165 210 225 180 255 120 210 135
Polygon -7500403 true true 135 105 90 60 45 45 75 105 135 135
Polygon -7500403 true true 165 105 165 135 225 105 255 45 210 60
Polygon -7500403 true true 135 90 120 45 150 15 180 45 165 90

pollengrain
true
0
Circle -7500403 true true 75 75 150
Line -7500403 true 151 61 151 237
Line -7500403 true 60 150 240 150
Line -7500403 true 90 90 210 210
Line -7500403 true 90 210 210 90
Line -7500403 true 75 105 225 195
Line -7500403 true 105 75 195 225
Line -7500403 true 120 75 180 225
Line -7500403 true 135 75 165 225
Line -7500403 true 75 120 225 180
Line -7500403 true 75 135 225 165
Line -7500403 true 75 165 225 135
Line -7500403 true 75 180 225 120
Line -7500403 true 75 195 225 105
Line -7500403 true 105 225 195 75
Line -7500403 true 120 225 180 75
Line -7500403 true 165 75 135 225

queen
true
6
Circle -13840069 true true 114 48 72
Circle -13840069 true true 101 112 98
Circle -16777216 true false 107 79 86
Line -13840069 true 150 70 105 30
Line -13840069 true 150 70 195 30
Circle -13840069 true true 109 170 78
Circle -13840069 true true 125 230 50
Polygon -7500403 true false 120 120 60 195 60 210 75 225 105 225 120 210 135 135 120 120
Polygon -7500403 true false 180 120 240 195 240 210 225 225 195 225 180 210 165 135 180 120
Circle -16777216 true false 116 58 19
Circle -16777216 true false 163 56 19
Circle -16777216 true false 112 69 19
Circle -16777216 true false 168 67 19
Circle -13840069 true true 115 199 70
Circle -13791810 true false 121 95 60
Circle -13840069 true true 137 267 26
Circle -13840069 true true 132 253 34
Line -16777216 false 117 228 181 227
Line -16777216 false 126 258 174 256
Line -16777216 false 166 275 133 276
Line -16777216 false 123 192 176 190

queenx
false
6
Circle -13840069 true true 114 48 72
Circle -13840069 true true 101 112 98
Circle -16777216 true false 107 79 86
Line -13840069 true 150 70 105 30
Line -13840069 true 150 70 195 30
Circle -13840069 true true 109 170 78
Circle -13840069 true true 125 230 50
Polygon -7500403 true false 120 120 60 195 60 210 75 225 105 225 120 210 135 135 120 120
Polygon -7500403 true false 180 120 240 195 240 210 225 225 195 225 180 210 165 135 180 120
Circle -16777216 true false 116 58 19
Circle -16777216 true false 163 56 19
Circle -16777216 true false 112 69 19
Circle -16777216 true false 168 67 19
Circle -13840069 true true 115 199 70
Circle -13791810 true false 121 95 60
Circle -13840069 true true 137 267 26
Circle -13840069 true true 132 253 34
Line -16777216 false 117 228 181 227
Line -16777216 false 126 258 174 256
Line -16777216 false 166 275 133 276
Line -16777216 false 123 192 176 190
Polygon -2674135 true false 15 30 30 15 285 270 270 285
Polygon -2674135 true false 30 285 15 270 270 15 285 30

rabbit
false
0
Polygon -7500403 true true 61 150 76 180 91 195 103 214 91 240 76 255 61 270 76 270 106 255 132 209 151 210 181 210 211 240 196 255 181 255 166 247 151 255 166 270 211 270 241 255 240 210 270 225 285 165 256 135 226 105 166 90 91 105
Polygon -7500403 true true 75 164 94 104 70 82 45 89 19 104 4 149 19 164 37 162 59 153
Polygon -7500403 true true 64 98 96 87 138 26 130 15 97 36 54 86
Polygon -7500403 true true 49 89 57 47 78 4 89 20 70 88
Circle -16777216 true false 37 103 16
Line -16777216 false 44 150 104 150
Line -16777216 false 39 158 84 175
Line -16777216 false 29 159 57 195
Polygon -5825686 true false 0 150 15 165 15 150
Polygon -5825686 true false 76 90 97 47 130 32
Line -16777216 false 180 210 165 180
Line -16777216 false 165 180 180 165
Line -16777216 false 180 165 225 165
Line -16777216 false 180 210 210 240

sheep
false
0
Rectangle -7500403 true true 151 225 180 285
Rectangle -7500403 true true 47 225 75 285
Rectangle -7500403 true true 15 75 210 225
Circle -7500403 true true 135 75 150
Circle -16777216 true false 165 76 116

skull
false
0
Circle -1 true false 17 -5 232
Circle -1 true false 5 10 220
Circle -1 true false 62 0 220
Circle -1 true false 62 19 220
Circle -1 true false 5 10 220
Circle -1 true false 47 -5 232
Rectangle -1 true false 75 225 210 285
Rectangle -7500403 true true 150 258 178 285
Polygon -1 true false 203 250 230 194 177 183
Circle -16777216 true false 46 76 88
Polygon -16777216 true false 135 165 135 210 120 210 135 165
Polygon -16777216 true false 150 165 150 210 165 210 150 165
Line -16777216 false 135 285 135 261
Line -16777216 false 120 285 120 262
Rectangle -7500403 true true 135 269 153 285
Rectangle -7500403 true true 195 260 210 285
Polygon -1 true false 60 195 76 254 105 240 75 210 60 210
Circle -16777216 true false 153 77 88
Rectangle -7500403 true true 75 260 103 285

skull2
false
15
Circle -1 true true 28 13 242
Rectangle -1 true true 75 225 210 285
Rectangle -16777216 true false 150 255 180 285
Polygon -1 true true 60 195 75 255 105 255 105 195 60 195
Polygon -1 true true 210 255 225 195 180 195
Circle -16777216 true false 60 90 60
Circle -16777216 true false 165 90 60
Polygon -16777216 true false 135 165 135 210 120 210 135 165
Polygon -16777216 true false 150 165 150 210 165 210 150 165
Line -16777216 false 135 285 135 255
Line -16777216 false 120 285 120 255
Rectangle -16777216 true false 90 255 105 285
Line -16777216 false 195 285 195 255

square
false
0
Rectangle -7500403 true true 30 30 270 270

square 2
false
0
Rectangle -7500403 true true 30 30 270 270
Rectangle -16777216 true false 60 60 240 240

star
false
0
Polygon -7500403 true true 151 1 185 108 298 108 207 175 242 282 151 216 59 282 94 175 3 108 116 108

sun
false
0
Circle -7500403 true true 75 75 150
Polygon -7500403 true true 300 150 240 120 240 180
Polygon -7500403 true true 150 0 120 60 180 60
Polygon -7500403 true true 150 300 120 240 180 240
Polygon -7500403 true true 0 150 60 120 60 180
Polygon -7500403 true true 60 195 105 240 45 255
Polygon -7500403 true true 60 105 105 60 45 45
Polygon -7500403 true true 195 60 240 105 255 45
Polygon -7500403 true true 240 195 195 240 255 255

target
false
0
Circle -7500403 true true 0 0 300
Circle -16777216 true false 30 30 240
Circle -7500403 true true 60 60 180
Circle -16777216 true false 90 90 120
Circle -7500403 true true 120 120 60

tree
false
0
Circle -7500403 true true 118 3 94
Rectangle -6459832 true false 120 195 180 300
Circle -7500403 true true 65 21 108
Circle -7500403 true true 116 41 127
Circle -7500403 true true 45 90 120
Circle -7500403 true true 104 74 152

triangle
false
0
Polygon -7500403 true true 150 30 15 255 285 255

triangle 2
false
0
Polygon -7500403 true true 150 30 15 255 285 255
Polygon -16777216 true false 151 99 225 223 75 224

truck
false
0
Rectangle -7500403 true true 4 45 195 187
Polygon -7500403 true true 296 193 296 150 259 134 244 104 208 104 207 194
Rectangle -1 true false 195 60 195 105
Polygon -16777216 true false 238 112 252 141 219 141 218 112
Circle -16777216 true false 234 174 42
Rectangle -7500403 true true 181 185 214 194
Circle -16777216 true false 144 174 42
Circle -16777216 true false 24 174 42
Circle -7500403 false true 24 174 42
Circle -7500403 false true 144 174 42
Circle -7500403 false true 234 174 42

turtle
true
0
Polygon -10899396 true false 215 204 240 233 246 254 228 266 215 252 193 210
Polygon -10899396 true false 195 90 225 75 245 75 260 89 269 108 261 124 240 105 225 105 210 105
Polygon -10899396 true false 105 90 75 75 55 75 40 89 31 108 39 124 60 105 75 105 90 105
Polygon -10899396 true false 132 85 134 64 107 51 108 17 150 2 192 18 192 52 169 65 172 87
Polygon -10899396 true false 85 204 60 233 54 254 72 266 85 252 107 210
Polygon -7500403 true true 119 75 179 75 209 101 224 135 220 225 175 261 128 261 81 224 74 135 88 99

varroamite01
false
0
Circle -7500403 true true 29 91 122
Circle -7500403 true true 149 91 122
Circle -7500403 true true 89 61 122
Circle -7500403 true true 89 136 122
Circle -7500403 true true 62 64 86
Circle -7500403 true true 152 64 86
Circle -7500403 true true 62 154 86
Circle -7500403 true true 152 154 86
Circle -7500403 true true 225 75 30
Circle -7500403 true true 45 75 30
Circle -7500403 true true 195 15 30
Circle -7500403 true true 90 30 30
Circle -7500403 true true 180 30 30
Circle -7500403 true true 165 45 30
Circle -7500403 true true 105 45 30
Circle -7500403 true true 75 15 30

varroamite02
false
0
Polygon -7500403 true true 75 75 150 60 225 75 240 150 225 225 150 240 75 225 60 150
Circle -7500403 true true 134 72 154
Circle -7500403 true true 15 73 152
Circle -7500403 true true 197 15 28
Circle -7500403 true true 77 15 28
Circle -7500403 true true 182 30 28
Circle -7500403 true true 92 30 28
Circle -7500403 true true 167 45 28
Circle -7500403 true true 107 45 28
Circle -7500403 true true 212 60 28
Line -7500403 true 150 45 150 75
Circle -7500403 true true 62 60 28
Circle -6459832 true false 92 105 28
Circle -6459832 true false 182 150 28
Circle -6459832 true false 92 150 28
Circle -6459832 true false 197 135 28
Circle -6459832 true false 77 135 28
Circle -6459832 true false 197 120 28
Circle -6459832 true false 77 120 28
Circle -6459832 true false 182 105 28

varroamite03
true
0
Polygon -7500403 true true 75 75 150 60 225 75 240 150 225 225 150 240 75 225 60 150
Circle -7500403 true true 134 72 154
Circle -7500403 true true 15 73 152
Circle -7500403 true true 197 15 28
Circle -7500403 true true 77 15 28
Circle -7500403 true true 182 30 28
Circle -7500403 true true 92 30 28
Circle -7500403 true true 167 45 28
Circle -7500403 true true 107 45 28
Circle -7500403 true true 212 60 28
Line -7500403 true 150 45 150 75
Circle -7500403 true true 62 60 28

virus1
true
0
Polygon -7500403 true true 90 45 120 15 180 15 210 45 210 90 180 120 120 120 90 90 90 45
Rectangle -7500403 true true 135 120 165 195
Rectangle -7500403 true true 105 210 195 195
Rectangle -7500403 true true 105 195 195 210
Polygon -7500403 true true 180 195 195 210 240 165 225 150 180 195 195 210
Polygon -7500403 true true 105 210 120 195 75 150 60 165 105 210
Polygon -7500403 true true 240 165 285 210 270 225 225 180
Polygon -7500403 true true 60 165 75 180 30 225 15 210 60 165
Rectangle -7500403 true true 120 150 135 225
Rectangle -7500403 true true 165 150 180 225

wheel
false
0
Circle -7500403 true true 3 3 294
Circle -16777216 true false 30 30 240
Line -7500403 true 150 285 150 15
Line -7500403 true 15 150 285 150
Circle -7500403 true true 120 120 60
Line -7500403 true 216 40 79 269
Line -7500403 true 40 84 269 221
Line -7500403 true 40 216 269 79
Line -7500403 true 84 40 221 269

x
false
0
Polygon -7500403 true true 270 75 225 30 30 225 75 270
Polygon -7500403 true true 30 75 75 30 270 225 225 270
@#$#@#$#@
NetLogo 6.2.0
@#$#@#$#@
@#$#@#$#@
@#$#@#$#@
<experiments>
  <experiment name="Experiment 1" repetitions="100" runMetricsEveryStep="true">
    <setup>setup</setup>
    <go>go</go>
    <timeLimit steps="1095"/>
    <metric>behaviorspace-run-number</metric>
    <metric>ticks</metric>
    <metric>day</metric>
    <metric>totalEggs</metric>
    <metric>totalLarvae</metric>
    <metric>totalPupae</metric>
    <metric>totalIHbees</metric>
    <metric>totalForagers</metric>
    <metric>totalIHbees + totalForagers</metric>
    <metric>totalDroneEggs</metric>
    <metric>totalDroneLarvae</metric>
    <metric>totalDronePupae</metric>
    <metric>totalDrones</metric>
    <metric>aff</metric>
    <metric>(honeyEnergyStore / ( ENERGY_HONEY_per_g * 1000 ) )</metric>
    <metric>PollenStore_g</metric>
    <metric>harvestedHoney_kg</metric>
    <metric>phoreticMites</metric>
    <metric>totalMites</metric>
    <metric>phoreticMitesHealthyRate</metric>
    <metric>sum PollenStoreList_g</metric>
    <metric>AvgIncPollen</metric>
    <metric>PollenNectarRatio</metric>
    <metric>AddedEggsToday</metric>
    <metric>BroodPheromone</metric>
    <metric>BPRatio_report</metric>
    <metric>winterbeeCount</metric>
    <enumeratedValueSet variable="RAND_SEED">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="AddPollen">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="AlwaysDance">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="CONC_G">
      <value value="1.5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="CONC_R">
      <value value="1.5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ConstantHandlingTime">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="CRITICAL_COLONY_SIZE_WINTER">
      <value value="4000"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DANCE_INTERCEPT">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DANCE_SLOPE">
      <value value="1.16"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="details">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DETECT_PROB_G">
      <value value="0.2"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DETECT_PROB_R">
      <value value="0.2"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DISTANCE_G">
      <value value="500"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DISTANCE_R">
      <value value="1500"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DotDensity">
      <value value="0.01"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="EggLaying_IH">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Experiment">
      <value value="&quot;none&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="FeedBees">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ForagingMap">
      <value value="&quot;Nectar and Pollen&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot1">
      <value value="&quot;aff &amp; lifespan&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot2">
      <value value="&quot;colony structure workers&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot3">
      <value value="&quot;broodcare [%]&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot4">
      <value value="&quot;mites&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot5">
      <value value="&quot;nectar availability [l]&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot6">
      <value value="&quot;pollen availability [kg]&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot7">
      <value value="&quot;mean trip duration&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot8">
      <value value="&quot;foragers today [%]&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HarvestingDay">
      <value value="135"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HarvestingPeriod">
      <value value="80"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HarvestingTH">
      <value value="20"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HoneyHarvesting">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HoneyIdeal">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="INPUT_FILE">
      <value value="&quot;Input_2-1_FoodFlow.txt&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MAX_BROODCELLS">
      <value value="2000099"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MAX_HONEY_STORE_kg">
      <value value="50"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MAX_km_PER_DAY">
      <value value="7299"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MergeColoniesTH">
      <value value="5000"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MergeWeakColonies">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MiteReproductionModel">
      <value value="&quot;Martin&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="modelledInsteadCalcDetectProb">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="N_INITIAL_BEES">
      <value value="10000"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="N_INITIAL_MITES_HEALTHY">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="N_INITIAL_MITES_INFECTED">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="POLLEN_G_kg">
      <value value="1"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="POLLEN_R_kg">
      <value value="1"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="PollenIdeal">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ProbLazinessWinterbees">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="QUANTITY_G_l">
      <value value="20"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="QUANTITY_R_l">
      <value value="20"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="QueenAgeing">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ReadInfile">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="RemainingHoney_kg">
      <value value="5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="SeasonalFoodFlow">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="SHIFT_G">
      <value value="-80"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="SHIFT_R">
      <value value="30"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ShowAllPlots">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="SQUADRON_SIZE">
      <value value="100"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="stopDead">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Swarming">
      <value value="&quot;No swarming&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="TIME_NECTAR_GATHERING">
      <value value="1200"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="TIME_POLLEN_GATHERING">
      <value value="600"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="VarroaTreatment">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Virus">
      <value value="&quot;DWV&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Weather">
      <value value="&quot;Poitou-Charentes (2008-2012)&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="writeFile">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="X_Days">
      <value value="180"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="EggsPerPollen_g">
      <value value="18"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="r_1">
      <value value="2.35"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="r_5">
      <value value="0.3"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MAX_EGG_LAYING">
      <value value="1600"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="T_ref">
      <value value="27"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="k_ref">
      <value value="0.44"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="E_a">
      <value value="147"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="lenIdealPollenList">
      <value value="1"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="lenEggLayingAverage">
      <value value="10"/>
    </enumeratedValueSet>
  </experiment>
  <experiment name="29_08" repetitions="200" runMetricsEveryStep="true">
    <setup>setup</setup>
    <go>go</go>
    <timeLimit steps="1095"/>
    <metric>behaviorspace-run-number</metric>
    <metric>ticks</metric>
    <metric>day</metric>
    <metric>totalEggs</metric>
    <metric>totalLarvae</metric>
    <metric>totalPupae</metric>
    <metric>totalIHbees</metric>
    <metric>totalForagers</metric>
    <metric>totalIHbees + totalForagers</metric>
    <metric>totalDroneEggs</metric>
    <metric>totalDroneLarvae</metric>
    <metric>totalDronePupae</metric>
    <metric>totalDrones</metric>
    <metric>aff</metric>
    <metric>(honeyEnergyStore / ( ENERGY_HONEY_per_g * 1000 ) )</metric>
    <metric>PollenStore_g</metric>
    <metric>harvestedHoney_kg</metric>
    <metric>phoreticMites</metric>
    <metric>totalMites</metric>
    <metric>phoreticMitesHealthyRate</metric>
    <metric>sum PollenStoreList_g</metric>
    <metric>AvgIncPollen</metric>
    <metric>PollenNectarRatio</metric>
    <metric>AddedEggsToday</metric>
    <enumeratedValueSet variable="RAND_SEED">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="AddPollen">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="AlwaysDance">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="CONC_G">
      <value value="1.5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="CONC_R">
      <value value="1.5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ConstantHandlingTime">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="CRITICAL_COLONY_SIZE_WINTER">
      <value value="4000"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DANCE_INTERCEPT">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DANCE_SLOPE">
      <value value="1.16"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="details">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DETECT_PROB_G">
      <value value="0.2"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DETECT_PROB_R">
      <value value="0.2"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DISTANCE_G">
      <value value="500"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DISTANCE_R">
      <value value="1500"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DotDensity">
      <value value="0.01"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="EggLaying_IH">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Experiment">
      <value value="&quot;none&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="FeedBees">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ForagingMap">
      <value value="&quot;Nectar and Pollen&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot1">
      <value value="&quot;aff &amp; lifespan&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot2">
      <value value="&quot;colony structure workers&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot3">
      <value value="&quot;broodcare [%]&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot4">
      <value value="&quot;mites&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot5">
      <value value="&quot;nectar availability [l]&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot6">
      <value value="&quot;pollen availability [kg]&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot7">
      <value value="&quot;mean trip duration&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot8">
      <value value="&quot;foragers today [%]&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HarvestingDay">
      <value value="135"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HarvestingPeriod">
      <value value="80"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HarvestingTH">
      <value value="20"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HoneyHarvesting">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HoneyIdeal">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="INPUT_FILE">
      <value value="&quot;Input_2-1_FoodFlow.txt&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MAX_BROODCELLS">
      <value value="2000099"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MAX_HONEY_STORE_kg">
      <value value="50"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MAX_km_PER_DAY">
      <value value="7299"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MergeColoniesTH">
      <value value="5000"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MergeWeakColonies">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MiteReproductionModel">
      <value value="&quot;Martin&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="modelledInsteadCalcDetectProb">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="N_INITIAL_BEES">
      <value value="10000"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="N_INITIAL_MITES_HEALTHY">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="N_INITIAL_MITES_INFECTED">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="POLLEN_G_kg">
      <value value="1"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="POLLEN_R_kg">
      <value value="1"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="PollenIdeal">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ProbLazinessWinterbees">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="QUANTITY_G_l">
      <value value="20"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="QUANTITY_R_l">
      <value value="20"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="QueenAgeing">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ReadInfile">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="RemainingHoney_kg">
      <value value="5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="SeasonalFoodFlow">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="SHIFT_G">
      <value value="-60"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="SHIFT_R">
      <value value="30"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ShowAllPlots">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="SQUADRON_SIZE">
      <value value="100"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="stopDead">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Swarming">
      <value value="&quot;No swarming&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="TIME_NECTAR_GATHERING">
      <value value="1200"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="TIME_POLLEN_GATHERING">
      <value value="600"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="VarroaTreatment">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Virus">
      <value value="&quot;DWV&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Weather">
      <value value="&quot;Poitou-Charentes (2008-2012)&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="writeFile">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="X_Days">
      <value value="180"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="EggsPerPollen_g">
      <value value="14"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="SafeDays">
      <value value="2.7"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="r_1">
      <value value="1.3"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="r_5">
      <value value="3.25"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="r_6">
      <value value="0.008"/>
    </enumeratedValueSet>
  </experiment>
  <experiment name="29_08_nr2" repetitions="200" runMetricsEveryStep="true">
    <setup>setup</setup>
    <go>go</go>
    <timeLimit steps="1095"/>
    <metric>behaviorspace-run-number</metric>
    <metric>ticks</metric>
    <metric>day</metric>
    <metric>totalEggs</metric>
    <metric>totalLarvae</metric>
    <metric>totalPupae</metric>
    <metric>totalIHbees</metric>
    <metric>totalForagers</metric>
    <metric>totalIHbees + totalForagers</metric>
    <metric>totalDroneEggs</metric>
    <metric>totalDroneLarvae</metric>
    <metric>totalDronePupae</metric>
    <metric>totalDrones</metric>
    <metric>aff</metric>
    <metric>(honeyEnergyStore / ( ENERGY_HONEY_per_g * 1000 ) )</metric>
    <metric>PollenStore_g</metric>
    <metric>harvestedHoney_kg</metric>
    <metric>phoreticMites</metric>
    <metric>totalMites</metric>
    <metric>phoreticMitesHealthyRate</metric>
    <metric>sum PollenStoreList_g</metric>
    <metric>AvgIncPollen</metric>
    <metric>PollenNectarRatio</metric>
    <metric>AddedEggsToday</metric>
    <enumeratedValueSet variable="RAND_SEED">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="AddPollen">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="AlwaysDance">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="CONC_G">
      <value value="1.5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="CONC_R">
      <value value="1.5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ConstantHandlingTime">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="CRITICAL_COLONY_SIZE_WINTER">
      <value value="4000"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DANCE_INTERCEPT">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DANCE_SLOPE">
      <value value="1.16"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="details">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DETECT_PROB_G">
      <value value="0.2"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DETECT_PROB_R">
      <value value="0.2"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DISTANCE_G">
      <value value="500"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DISTANCE_R">
      <value value="1500"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DotDensity">
      <value value="0.01"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="EggLaying_IH">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Experiment">
      <value value="&quot;none&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="FeedBees">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ForagingMap">
      <value value="&quot;Nectar and Pollen&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot1">
      <value value="&quot;aff &amp; lifespan&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot2">
      <value value="&quot;colony structure workers&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot3">
      <value value="&quot;broodcare [%]&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot4">
      <value value="&quot;mites&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot5">
      <value value="&quot;nectar availability [l]&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot6">
      <value value="&quot;pollen availability [kg]&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot7">
      <value value="&quot;mean trip duration&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot8">
      <value value="&quot;foragers today [%]&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HarvestingDay">
      <value value="135"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HarvestingPeriod">
      <value value="80"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HarvestingTH">
      <value value="20"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HoneyHarvesting">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HoneyIdeal">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="INPUT_FILE">
      <value value="&quot;Input_2-1_FoodFlow.txt&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MAX_BROODCELLS">
      <value value="2000099"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MAX_HONEY_STORE_kg">
      <value value="50"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MAX_km_PER_DAY">
      <value value="7299"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MergeColoniesTH">
      <value value="5000"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MergeWeakColonies">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MiteReproductionModel">
      <value value="&quot;Martin&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="modelledInsteadCalcDetectProb">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="N_INITIAL_BEES">
      <value value="10000"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="N_INITIAL_MITES_HEALTHY">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="N_INITIAL_MITES_INFECTED">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="POLLEN_G_kg">
      <value value="1"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="POLLEN_R_kg">
      <value value="1"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="PollenIdeal">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ProbLazinessWinterbees">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="QUANTITY_G_l">
      <value value="20"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="QUANTITY_R_l">
      <value value="20"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="QueenAgeing">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ReadInfile">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="RemainingHoney_kg">
      <value value="5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="SeasonalFoodFlow">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="SHIFT_G">
      <value value="-60"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="SHIFT_R">
      <value value="30"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ShowAllPlots">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="SQUADRON_SIZE">
      <value value="100"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="stopDead">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Swarming">
      <value value="&quot;No swarming&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="TIME_NECTAR_GATHERING">
      <value value="1200"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="TIME_POLLEN_GATHERING">
      <value value="600"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="VarroaTreatment">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Virus">
      <value value="&quot;DWV&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Weather">
      <value value="&quot;Poitou-Charentes (2008-2012)&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="writeFile">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="X_Days">
      <value value="180"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="EggsPerPollen_g">
      <value value="2.5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="SafeDays">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="r_1">
      <value value="1.3"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="r_5">
      <value value="3.25"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="r_6">
      <value value="0.008"/>
    </enumeratedValueSet>
  </experiment>
  <experiment name="31_08" repetitions="300" runMetricsEveryStep="true">
    <setup>setup</setup>
    <go>go</go>
    <timeLimit steps="1095"/>
    <metric>behaviorspace-run-number</metric>
    <metric>ticks</metric>
    <metric>day</metric>
    <metric>totalEggs</metric>
    <metric>totalLarvae</metric>
    <metric>totalPupae</metric>
    <metric>totalIHbees</metric>
    <metric>totalForagers</metric>
    <metric>totalIHbees + totalForagers</metric>
    <metric>totalDroneEggs</metric>
    <metric>totalDroneLarvae</metric>
    <metric>totalDronePupae</metric>
    <metric>totalDrones</metric>
    <metric>aff</metric>
    <metric>(honeyEnergyStore / ( ENERGY_HONEY_per_g * 1000 ) )</metric>
    <metric>PollenStore_g</metric>
    <metric>harvestedHoney_kg</metric>
    <metric>phoreticMites</metric>
    <metric>totalMites</metric>
    <metric>phoreticMitesHealthyRate</metric>
    <metric>sum PollenStoreList_g</metric>
    <metric>AvgIncPollen</metric>
    <metric>PollenNectarRatio</metric>
    <metric>AddedEggsToday</metric>
    <enumeratedValueSet variable="RAND_SEED">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="AddPollen">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="AlwaysDance">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="CONC_G">
      <value value="1.5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="CONC_R">
      <value value="1.5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ConstantHandlingTime">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="CRITICAL_COLONY_SIZE_WINTER">
      <value value="4000"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DANCE_INTERCEPT">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DANCE_SLOPE">
      <value value="1.16"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="details">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DETECT_PROB_G">
      <value value="0.2"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DETECT_PROB_R">
      <value value="0.2"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DISTANCE_G">
      <value value="500"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DISTANCE_R">
      <value value="1500"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DotDensity">
      <value value="0.01"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="EggLaying_IH">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Experiment">
      <value value="&quot;none&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="FeedBees">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ForagingMap">
      <value value="&quot;Nectar and Pollen&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot1">
      <value value="&quot;aff &amp; lifespan&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot2">
      <value value="&quot;colony structure workers&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot3">
      <value value="&quot;broodcare [%]&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot4">
      <value value="&quot;mites&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot5">
      <value value="&quot;nectar availability [l]&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot6">
      <value value="&quot;pollen availability [kg]&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot7">
      <value value="&quot;mean trip duration&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot8">
      <value value="&quot;foragers today [%]&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HarvestingDay">
      <value value="135"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HarvestingPeriod">
      <value value="80"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HarvestingTH">
      <value value="20"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HoneyHarvesting">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HoneyIdeal">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="INPUT_FILE">
      <value value="&quot;Input_2-1_FoodFlow.txt&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MAX_BROODCELLS">
      <value value="2000099"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MAX_HONEY_STORE_kg">
      <value value="50"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MAX_km_PER_DAY">
      <value value="7299"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MergeColoniesTH">
      <value value="5000"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MergeWeakColonies">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MiteReproductionModel">
      <value value="&quot;Martin&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="modelledInsteadCalcDetectProb">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="N_INITIAL_BEES">
      <value value="10000"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="N_INITIAL_MITES_HEALTHY">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="N_INITIAL_MITES_INFECTED">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="POLLEN_G_kg">
      <value value="1"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="POLLEN_R_kg">
      <value value="1"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="PollenIdeal">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ProbLazinessWinterbees">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="QUANTITY_G_l">
      <value value="20"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="QUANTITY_R_l">
      <value value="20"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="QueenAgeing">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ReadInfile">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="RemainingHoney_kg">
      <value value="5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="SeasonalFoodFlow">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="SHIFT_G">
      <value value="-60"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="SHIFT_R">
      <value value="30"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ShowAllPlots">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="SQUADRON_SIZE">
      <value value="100"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="stopDead">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Swarming">
      <value value="&quot;No swarming&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="TIME_NECTAR_GATHERING">
      <value value="1200"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="TIME_POLLEN_GATHERING">
      <value value="600"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="VarroaTreatment">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Virus">
      <value value="&quot;DWV&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Weather">
      <value value="&quot;Poitou-Charentes (2008-2012)&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="writeFile">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="X_Days">
      <value value="180"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="EggsPerPollen_g">
      <value value="15"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="SafeDays">
      <value value="2.6"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="r_1">
      <value value="1.3"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="r_5">
      <value value="3.35"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="r_6">
      <value value="0.009"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="FreshPollenDays">
      <value value="18"/>
    </enumeratedValueSet>
  </experiment>
  <experiment name="1_9_runs" repetitions="200" runMetricsEveryStep="true">
    <setup>setup</setup>
    <go>go</go>
    <timeLimit steps="1095"/>
    <metric>behaviorspace-run-number</metric>
    <metric>ticks</metric>
    <metric>day</metric>
    <metric>totalEggs</metric>
    <metric>totalLarvae</metric>
    <metric>totalPupae</metric>
    <metric>totalIHbees</metric>
    <metric>totalForagers</metric>
    <metric>totalIHbees + totalForagers</metric>
    <metric>totalDroneEggs</metric>
    <metric>totalDroneLarvae</metric>
    <metric>totalDronePupae</metric>
    <metric>totalDrones</metric>
    <metric>aff</metric>
    <metric>(honeyEnergyStore / ( ENERGY_HONEY_per_g * 1000 ) )</metric>
    <metric>PollenStore_g</metric>
    <metric>harvestedHoney_kg</metric>
    <metric>phoreticMites</metric>
    <metric>totalMites</metric>
    <metric>phoreticMitesHealthyRate</metric>
    <metric>sum PollenStoreList_g</metric>
    <metric>AvgIncPollen</metric>
    <metric>PollenNectarRatio</metric>
    <metric>AddedEggsToday</metric>
    <enumeratedValueSet variable="RAND_SEED">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="AddPollen">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="AlwaysDance">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="CONC_G">
      <value value="1.5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="CONC_R">
      <value value="1.5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ConstantHandlingTime">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="CRITICAL_COLONY_SIZE_WINTER">
      <value value="4000"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DANCE_INTERCEPT">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DANCE_SLOPE">
      <value value="1.16"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="details">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DETECT_PROB_G">
      <value value="0.2"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DETECT_PROB_R">
      <value value="0.2"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DISTANCE_G">
      <value value="500"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DISTANCE_R">
      <value value="1500"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DotDensity">
      <value value="0.01"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="EggLaying_IH">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Experiment">
      <value value="&quot;none&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="FeedBees">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ForagingMap">
      <value value="&quot;Nectar and Pollen&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot1">
      <value value="&quot;aff &amp; lifespan&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot2">
      <value value="&quot;colony structure workers&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot3">
      <value value="&quot;broodcare [%]&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot4">
      <value value="&quot;mites&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot5">
      <value value="&quot;nectar availability [l]&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot6">
      <value value="&quot;pollen availability [kg]&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot7">
      <value value="&quot;mean trip duration&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot8">
      <value value="&quot;foragers today [%]&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HarvestingDay">
      <value value="135"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HarvestingPeriod">
      <value value="80"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HarvestingTH">
      <value value="20"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HoneyHarvesting">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HoneyIdeal">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="INPUT_FILE">
      <value value="&quot;Input_2-1_FoodFlow.txt&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MAX_BROODCELLS">
      <value value="2000099"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MAX_HONEY_STORE_kg">
      <value value="50"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MAX_km_PER_DAY">
      <value value="7299"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MergeColoniesTH">
      <value value="5000"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MergeWeakColonies">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MiteReproductionModel">
      <value value="&quot;Martin&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="modelledInsteadCalcDetectProb">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="N_INITIAL_BEES">
      <value value="10000"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="N_INITIAL_MITES_HEALTHY">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="N_INITIAL_MITES_INFECTED">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="POLLEN_G_kg">
      <value value="1"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="POLLEN_R_kg">
      <value value="1"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="PollenIdeal">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ProbLazinessWinterbees">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="QUANTITY_G_l">
      <value value="20"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="QUANTITY_R_l">
      <value value="20"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="QueenAgeing">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ReadInfile">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="RemainingHoney_kg">
      <value value="5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="SeasonalFoodFlow">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="SHIFT_G">
      <value value="-80"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="SHIFT_R">
      <value value="30"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ShowAllPlots">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="SQUADRON_SIZE">
      <value value="100"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="stopDead">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Swarming">
      <value value="&quot;No swarming&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="TIME_NECTAR_GATHERING">
      <value value="1200"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="TIME_POLLEN_GATHERING">
      <value value="600"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="VarroaTreatment">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Virus">
      <value value="&quot;DWV&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Weather">
      <value value="&quot;France (2010)&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="writeFile">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="X_Days">
      <value value="180"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="EggsPerPollen_g">
      <value value="2.5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="SafeDays">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="r_1">
      <value value="1.3"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="r_5">
      <value value="3.25"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="r_6">
      <value value="0.008"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="FreshPollenDays">
      <value value="20"/>
    </enumeratedValueSet>
  </experiment>
  <experiment name="5_9_runs" repetitions="200" runMetricsEveryStep="true">
    <setup>setup</setup>
    <go>go</go>
    <timeLimit steps="1095"/>
    <metric>behaviorspace-run-number</metric>
    <metric>ticks</metric>
    <metric>day</metric>
    <metric>totalEggs</metric>
    <metric>totalLarvae</metric>
    <metric>totalPupae</metric>
    <metric>totalIHbees</metric>
    <metric>totalForagers</metric>
    <metric>totalIHbees + totalForagers</metric>
    <metric>totalDroneEggs</metric>
    <metric>totalDroneLarvae</metric>
    <metric>totalDronePupae</metric>
    <metric>totalDrones</metric>
    <metric>aff</metric>
    <metric>(honeyEnergyStore / ( ENERGY_HONEY_per_g * 1000 ) )</metric>
    <metric>PollenStore_g</metric>
    <metric>harvestedHoney_kg</metric>
    <metric>phoreticMites</metric>
    <metric>totalMites</metric>
    <metric>phoreticMitesHealthyRate</metric>
    <metric>sum PollenStoreList_g</metric>
    <metric>AvgIncPollen</metric>
    <metric>PollenNectarRatio</metric>
    <metric>AddedEggsToday</metric>
    <enumeratedValueSet variable="RAND_SEED">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="AddPollen">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="AlwaysDance">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="CONC_G">
      <value value="1.5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="CONC_R">
      <value value="1.5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ConstantHandlingTime">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="CRITICAL_COLONY_SIZE_WINTER">
      <value value="4000"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DANCE_INTERCEPT">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DANCE_SLOPE">
      <value value="1.16"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="details">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DETECT_PROB_G">
      <value value="0.2"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DETECT_PROB_R">
      <value value="0.2"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DISTANCE_G">
      <value value="500"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DISTANCE_R">
      <value value="1500"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DotDensity">
      <value value="0.01"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="EggLaying_IH">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Experiment">
      <value value="&quot;none&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="FeedBees">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ForagingMap">
      <value value="&quot;Nectar and Pollen&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot1">
      <value value="&quot;aff &amp; lifespan&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot2">
      <value value="&quot;colony structure workers&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot3">
      <value value="&quot;broodcare [%]&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot4">
      <value value="&quot;mites&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot5">
      <value value="&quot;nectar availability [l]&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot6">
      <value value="&quot;pollen availability [kg]&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot7">
      <value value="&quot;mean trip duration&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot8">
      <value value="&quot;foragers today [%]&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HarvestingDay">
      <value value="135"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HarvestingPeriod">
      <value value="80"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HarvestingTH">
      <value value="20"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HoneyHarvesting">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HoneyIdeal">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="INPUT_FILE">
      <value value="&quot;Input_2-1_FoodFlow.txt&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MAX_BROODCELLS">
      <value value="2000099"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MAX_HONEY_STORE_kg">
      <value value="50"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MAX_km_PER_DAY">
      <value value="7299"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MergeColoniesTH">
      <value value="5000"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MergeWeakColonies">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MiteReproductionModel">
      <value value="&quot;Martin&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="modelledInsteadCalcDetectProb">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="N_INITIAL_BEES">
      <value value="10000"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="N_INITIAL_MITES_HEALTHY">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="N_INITIAL_MITES_INFECTED">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="POLLEN_G_kg">
      <value value="1"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="POLLEN_R_kg">
      <value value="1"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="PollenIdeal">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ProbLazinessWinterbees">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="QUANTITY_G_l">
      <value value="20"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="QUANTITY_R_l">
      <value value="20"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="QueenAgeing">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ReadInfile">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="RemainingHoney_kg">
      <value value="5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="SeasonalFoodFlow">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="SHIFT_G">
      <value value="-80"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="SHIFT_R">
      <value value="30"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ShowAllPlots">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="SQUADRON_SIZE">
      <value value="100"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="stopDead">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Swarming">
      <value value="&quot;No swarming&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="TIME_NECTAR_GATHERING">
      <value value="1200"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="TIME_POLLEN_GATHERING">
      <value value="600"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="VarroaTreatment">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Virus">
      <value value="&quot;DWV&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Weather">
      <value value="&quot;Poitou-Charentes (2008-2012)&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="writeFile">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="X_Days">
      <value value="180"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="EggsPerPollen_g">
      <value value="14"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="SafeDays">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="r_1">
      <value value="0.85"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="r_5">
      <value value="0.95"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="FreshPollenDays">
      <value value="19"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="T_ref">
      <value value="27"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="k_ref">
      <value value="0.44"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="E_a">
      <value value="147"/>
    </enumeratedValueSet>
  </experiment>
  <experiment name="10_9_run" repetitions="200" runMetricsEveryStep="true">
    <setup>setup</setup>
    <go>go</go>
    <timeLimit steps="1095"/>
    <metric>behaviorspace-run-number</metric>
    <metric>ticks</metric>
    <metric>day</metric>
    <metric>totalEggs</metric>
    <metric>totalLarvae</metric>
    <metric>totalPupae</metric>
    <metric>totalIHbees</metric>
    <metric>totalForagers</metric>
    <metric>totalIHbees + totalForagers</metric>
    <metric>totalDroneEggs</metric>
    <metric>totalDroneLarvae</metric>
    <metric>totalDronePupae</metric>
    <metric>totalDrones</metric>
    <metric>aff</metric>
    <metric>(honeyEnergyStore / ( ENERGY_HONEY_per_g * 1000 ) )</metric>
    <metric>PollenStore_g</metric>
    <metric>harvestedHoney_kg</metric>
    <metric>phoreticMites</metric>
    <metric>totalMites</metric>
    <metric>phoreticMitesHealthyRate</metric>
    <metric>sum PollenStoreList_g</metric>
    <metric>AvgIncPollen</metric>
    <metric>PollenNectarRatio</metric>
    <metric>AddedEggsToday</metric>
    <enumeratedValueSet variable="RAND_SEED">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="AddPollen">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="AlwaysDance">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="CONC_G">
      <value value="1.5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="CONC_R">
      <value value="1.5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ConstantHandlingTime">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="CRITICAL_COLONY_SIZE_WINTER">
      <value value="4000"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DANCE_INTERCEPT">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DANCE_SLOPE">
      <value value="1.16"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="details">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DETECT_PROB_G">
      <value value="0.2"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DETECT_PROB_R">
      <value value="0.2"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DISTANCE_G">
      <value value="500"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DISTANCE_R">
      <value value="1500"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DotDensity">
      <value value="0.01"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="EggLaying_IH">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Experiment">
      <value value="&quot;none&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="FeedBees">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ForagingMap">
      <value value="&quot;Nectar and Pollen&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot1">
      <value value="&quot;aff &amp; lifespan&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot2">
      <value value="&quot;colony structure workers&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot3">
      <value value="&quot;broodcare [%]&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot4">
      <value value="&quot;mites&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot5">
      <value value="&quot;nectar availability [l]&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot6">
      <value value="&quot;pollen availability [kg]&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot7">
      <value value="&quot;mean trip duration&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot8">
      <value value="&quot;foragers today [%]&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HarvestingDay">
      <value value="135"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HarvestingPeriod">
      <value value="80"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HarvestingTH">
      <value value="20"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HoneyHarvesting">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HoneyIdeal">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="INPUT_FILE">
      <value value="&quot;Input_2-1_FoodFlow.txt&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MAX_BROODCELLS">
      <value value="2000099"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MAX_HONEY_STORE_kg">
      <value value="50"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MAX_km_PER_DAY">
      <value value="7299"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MergeColoniesTH">
      <value value="5000"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MergeWeakColonies">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MiteReproductionModel">
      <value value="&quot;Martin&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="modelledInsteadCalcDetectProb">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="N_INITIAL_BEES">
      <value value="10000"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="N_INITIAL_MITES_HEALTHY">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="N_INITIAL_MITES_INFECTED">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="POLLEN_G_kg">
      <value value="1"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="POLLEN_R_kg">
      <value value="1"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="PollenIdeal">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ProbLazinessWinterbees">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="QUANTITY_G_l">
      <value value="20"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="QUANTITY_R_l">
      <value value="20"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="QueenAgeing">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ReadInfile">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="RemainingHoney_kg">
      <value value="5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="SeasonalFoodFlow">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="SHIFT_G">
      <value value="-80"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="SHIFT_R">
      <value value="30"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ShowAllPlots">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="SQUADRON_SIZE">
      <value value="100"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="stopDead">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Swarming">
      <value value="&quot;No swarming&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="TIME_NECTAR_GATHERING">
      <value value="1200"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="TIME_POLLEN_GATHERING">
      <value value="600"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="VarroaTreatment">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Virus">
      <value value="&quot;DWV&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Weather">
      <value value="&quot;Poitou-Charentes (2008-2012)&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="writeFile">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="X_Days">
      <value value="180"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="EggsPerPollen_g">
      <value value="18"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="SafeDays">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="r_1">
      <value value="2.35"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="r_5">
      <value value="0.3"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="FreshPollenDays">
      <value value="20"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="T_ref">
      <value value="27"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="k_ref">
      <value value="0.44"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="E_a">
      <value value="147"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="lenEggLayingAverage">
      <value value="10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="lenIdealPollenList">
      <value value="6"/>
    </enumeratedValueSet>
  </experiment>
  <experiment name="Experiment 1_base" repetitions="200" runMetricsEveryStep="true">
    <setup>setup</setup>
    <go>go</go>
    <timeLimit steps="1095"/>
    <metric>behaviorspace-run-number</metric>
    <metric>ticks</metric>
    <metric>day</metric>
    <metric>totalEggs</metric>
    <metric>totalLarvae</metric>
    <metric>totalPupae</metric>
    <metric>totalIHbees</metric>
    <metric>totalForagers</metric>
    <metric>totalIHbees + totalForagers</metric>
    <metric>totalDroneEggs</metric>
    <metric>totalDroneLarvae</metric>
    <metric>totalDronePupae</metric>
    <metric>totalDrones</metric>
    <metric>aff</metric>
    <metric>(honeyEnergyStore / ( ENERGY_HONEY_per_g * 1000 ) )</metric>
    <metric>PollenStore_g</metric>
    <metric>harvestedHoney_kg</metric>
    <metric>phoreticMites</metric>
    <metric>totalMites</metric>
    <metric>phoreticMitesHealthyRate</metric>
    <metric>sum PollenStoreList_g</metric>
    <metric>AvgIncPollen</metric>
    <metric>PollenNectarRatio</metric>
    <metric>AddedEggsToday</metric>
    <enumeratedValueSet variable="RAND_SEED">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="AddPollen">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="AlwaysDance">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="CONC_G">
      <value value="1.5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="CONC_R">
      <value value="1.5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ConstantHandlingTime">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="CRITICAL_COLONY_SIZE_WINTER">
      <value value="4000"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DANCE_INTERCEPT">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DANCE_SLOPE">
      <value value="1.16"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="details">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DETECT_PROB_G">
      <value value="0.2"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DETECT_PROB_R">
      <value value="0.2"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DISTANCE_G">
      <value value="500"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DISTANCE_R">
      <value value="1500"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DotDensity">
      <value value="0.01"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="EggLaying_IH">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Experiment">
      <value value="&quot;none&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="FeedBees">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ForagingMap">
      <value value="&quot;Nectar and Pollen&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot1">
      <value value="&quot;aff &amp; lifespan&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot2">
      <value value="&quot;colony structure workers&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot3">
      <value value="&quot;broodcare [%]&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot4">
      <value value="&quot;mites&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot5">
      <value value="&quot;nectar availability [l]&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot6">
      <value value="&quot;pollen availability [kg]&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot7">
      <value value="&quot;mean trip duration&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot8">
      <value value="&quot;foragers today [%]&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HarvestingDay">
      <value value="135"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HarvestingPeriod">
      <value value="80"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HarvestingTH">
      <value value="20"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HoneyHarvesting">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HoneyIdeal">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="INPUT_FILE">
      <value value="&quot;Input_2-1_FoodFlow.txt&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MAX_BROODCELLS">
      <value value="2000099"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MAX_HONEY_STORE_kg">
      <value value="50"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MAX_km_PER_DAY">
      <value value="7299"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MergeColoniesTH">
      <value value="5000"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MergeWeakColonies">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MiteReproductionModel">
      <value value="&quot;Martin&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="modelledInsteadCalcDetectProb">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="N_INITIAL_BEES">
      <value value="10000"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="N_INITIAL_MITES_HEALTHY">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="N_INITIAL_MITES_INFECTED">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="POLLEN_G_kg">
      <value value="1"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="POLLEN_R_kg">
      <value value="1"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="PollenIdeal">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ProbLazinessWinterbees">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="QUANTITY_G_l">
      <value value="20"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="QUANTITY_R_l">
      <value value="20"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="QueenAgeing">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ReadInfile">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="RemainingHoney_kg">
      <value value="5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="SeasonalFoodFlow">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="SHIFT_G">
      <value value="-80"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="SHIFT_R">
      <value value="30"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ShowAllPlots">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="SQUADRON_SIZE">
      <value value="100"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="stopDead">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Swarming">
      <value value="&quot;No swarming&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="TIME_NECTAR_GATHERING">
      <value value="1200"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="TIME_POLLEN_GATHERING">
      <value value="600"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="VarroaTreatment">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Virus">
      <value value="&quot;DWV&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Weather">
      <value value="&quot;Stockholm (2008-2020)&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="writeFile">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="X_Days">
      <value value="180"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="EggsPerPollen_g">
      <value value="18"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="r_1">
      <value value="2.35"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="r_5">
      <value value="0.3"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MAX_EGG_LAYING">
      <value value="1600"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="T_ref">
      <value value="27"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="k_ref">
      <value value="0.44"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="E_a">
      <value value="147"/>
    </enumeratedValueSet>
  </experiment>
</experiments>
@#$#@#$#@
@#$#@#$#@
default
0.0
-0.2 0 0.0 1.0
0.0 1 1.0 0.0
0.2 0 0.0 1.0
link direction
true
0
Line -7500403 true 150 150 90 180
Line -7500403 true 150 150 210 180
@#$#@#$#@
0
@#$#@#$#@
