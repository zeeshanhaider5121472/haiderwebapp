// ignore_for_file: file_names

final questionCompressorBoosterJson = {
  "Questions": [
    {
      "id": 0,
      "title": "HIGH PRESSURE TROUBLES",
      "Problem": [
        {
          "id": 0,
          "title": "High Interstage Pressure",
          "immediateAction": [
            {
              "id": 0,
              "title": "Continue running and monitor pressure.",
              "problemCause": [
                {
                  "id": 0,
                  "title":
                      "Leaking suction or discharge valve in the next higher stage",
                  "solution": [
                    {"id": 0, "title": "Replace the defective valve"}
                  ]
                },
                {
                  "id": 1,
                  "title": "Worn piston rings on next stage",
                  "solution": [
                    {"id": 0, "title": "replace piston rings"}
                  ]
                }
              ]
            }
          ]
        },
        {
          "id": 0,
          "title": "Interstage relief valve is “popping”",
          "immediateAction": [
            {
              "id": 0,
              "title": "Shutdown  the compressor",
              "problemCause": [
                {
                  "id": 0,
                  "title": "Defective relief valve",
                  "solution": [
                    {
                      "id": 0,
                      "title": "Reset or replace the defective relief valve"
                    }
                  ]
                },
                {
                  "id": 1,
                  "title":
                      "Leaking suction or discharge valve in the next higher stage",
                  "solution": [
                    {"id": 0, "title": "Replace the defective valve "}
                  ]
                },
                {
                  "id": 2,
                  "title":
                      "Worn piston rings (only on steeple cylinder such as RIX 2V3 2nd & 3rd stage)",
                  "solution": [
                    {"id": 0, "title": "replace piston rings"}
                  ]
                }
              ]
            }
          ]
        },
        {
          "id": 0,
          "title": "High Pressure on final stage”",
          "immediateAction": [
            {
              "id": 0,
              "title": "Shutdown the compressor",
              "problemCause": [
                {
                  "id": 0,
                  "title": "Pressure switch improperly set or inoperative",
                  "solution": [
                    {"id": 0, "title": "Reset or replace switch"}
                  ]
                }
              ]
            }
          ]
        },
        {
          "id": 0,
          "title": "Final stage relief valve is “popping”",
          "immediateAction": [
            {
              "id": 0,
              "title": "Shutdown the compressor",
              "problemCause": [
                {
                  "id": 0,
                  "title":
                      "Discharge lines, back pressure valve, or filter is restricted",
                  "solution": [
                    {
                      "id": 0,
                      "title": "Clean back pressure valve, filter, and/or lines"
                    }
                  ]
                },
                {
                  "id": 0,
                  "title": "Defective relief valve",
                  "solution": [
                    {"id": 0, "title": "Reset or replace the relief valve "}
                  ]
                }
              ]
            }
          ]
        }
      ]
    },
    {
      "id": 0,
      "title": "LOW PRESSURE TROUBLES",
      "Problem": [
        {
          "id": 0,
          "title": "Low interstage pressure",
          "immediateAction": [
            {
              "id": 0,
              "title":
                  "Continue running and monitor pressures until a convenient time to shut the compressor down.",
              "problemCause": [
                {
                  "id": 0,
                  "title": "Worn 1st stage or interstage rings.",
                  "solution": [
                    {
                      "id": 0,
                      "title":
                          "Replace piston rings and inspect cylinder for wear"
                    }
                  ]
                },
                {
                  "id": 1,
                  "title": "leaking 1st stage valves",
                  "solution": [
                    {"id": 0, "title": "Replace the defective valve"}
                  ]
                },
                {
                  "id": 1,
                  "title": "Leaks in piping or o-rings.",
                  "solution": [
                    {"id": 0, "title": "Repair leak"}
                  ]
                },
                {
                  "id": 1,
                  "title": "Low suction pressure to compressor",
                  "solution": [
                    {
                      "id": 0,
                      "title":
                          "Compressor may be overdrawing PSA and causing suction pressure to drop or there may be an issue with the PSA"
                    }
                  ]
                },
                {
                  "id": 1,
                  "title": "Restricted inlet filter or suction piping",
                  "solution": [
                    {
                      "id": 0,
                      "title":
                          "Clean inlet filter and/or remove restriction from suction piping"
                    }
                  ]
                }
              ]
            }
          ]
        },
        {
          "id": 0,
          "title": "Compressor will not produce final discharge pressure",
          "immediateAction": [
            {
              "id": 0,
              "title":
                  "Continue running and monitor pressures until a convenient time to shut the compressor down.",
              "problemCause": [
                {
                  "id": 0,
                  "title": "Worn piston rings",
                  "solution": [
                    {"id": 0, "title": "Replace piston rings"}
                  ]
                },
                {
                  "id": 1,
                  "title": "Leak to atmosphere from the  cylinder head",
                  "solution": [
                    {
                      "id": 0,
                      "title":
                          "Inspect cylinder head for wear and/or cylinder head o-ring for damage"
                    }
                  ]
                },
                {
                  "id": 2,
                  "title": "Leak to atmosphere from the piping",
                  "solution": [
                    {"id": 0, "title": "Locate and repair."}
                  ]
                },
                {
                  "id": 2,
                  "title":
                      "Leak in downstream piping or lack of back pressure ",
                  "solution": [
                    {"id": 0, "title": "Locate and repair."}
                  ]
                }
              ]
            }
          ]
        }
      ]
    },
    {
      "id": 0,
      "title": "HIGH TEMPERATURE TROUBLES",
      "Problem": [
        {
          "id": 0,
          "title": "Compressor over heats",
          "immediateAction": [
            {
              "id": 0,
              "title": "Shutdown the compressor",
              "problemCause": [
                {
                  "id": 0,
                  "title":
                      "Fans inoperative or spinning the wrong direction (if equipped) and/or inter-cooler air or water flow restricted; insufficient cooling",
                  "solution": [
                    {
                      "id": 0,
                      "title":
                          "Repair or replace fan  and/or clear out restriction for inter-cooler"
                    }
                  ]
                },
                {
                  "id": 1,
                  "title":
                      "Restriction in piping caused by damage or blockage (clogged filter etc.).",
                  "solution": [
                    {
                      "id": 0,
                      "title":
                          "Inspect piping for kinks and other physical damage and repair."
                    }
                  ]
                },
                {
                  "id": 1,
                  "title": "Faulty compressor valves.",
                  "solution": [
                    {"id": 0, "title": "Repair or replace the valves"}
                  ]
                },
                {
                  "id": 1,
                  "title": "High ambient temperature.",
                  "solution": [
                    {
                      "id": 0,
                      "title":
                          "Ventilate area or shutdown until area cools down."
                    }
                  ]
                }
              ]
            }
          ]
        }
      ]
    },
    {
      "id": 0,
      "title": "REDUCED CAPACITY TROUBLES",
      "Problem": [
        {
          "id": 0,
          "title":
              "Output of compressor is reduced / Longer than normal time required to fill receiver.",
          "immediateAction": [
            {
              "id": 0,
              "title":
                  "Continue running, monitor pressures. Service unit at first opportunity.",
              "problemCause": [
                {
                  "id": 0,
                  "title": "Low inlet pressure",
                  "solution": [
                    {"id": 0, "title": "Restore to normal pressure."}
                  ]
                },
                {
                  "id": 1,
                  "title": "Worn compression rings.",
                  "solution": [
                    {"id": 0, "title": "Replace rings. "}
                  ]
                },
                {
                  "id": 1,
                  "title": "First stage valves leaking.",
                  "solution": [
                    {"id": 0, "title": "Replace the defective valve"}
                  ]
                },
                {
                  "id": 1,
                  "title": "Leaks in piping, heads, heat exchangers or seals.",
                  "solution": [
                    {"id": 0, "title": "Locate and repair."}
                  ]
                }
              ]
            }
          ]
        }
      ]
    },
    {
      "id": 0,
      "title": "UNUSUAL NOISE TROUBLES",
      "Problem": [
        {
          "id": 0,
          "title": "Loud metallic knock.",
          "immediateAction": [
            {
              "id": 0,
              "title": "Try to isolate location of noise.",
              "problemCause": [
                {
                  "id": 0,
                  "title": "Worn connecting rod  bearing.",
                  "solution": [
                    {"id": 0, "title": "Replace connecting rod needle bearing."}
                  ]
                }
              ]
            }
          ]
        },
        {
          "id": 0,
          "title": "Clacking noises from the cylinder head.",
          "immediateAction": [
            {
              "id": 0,
              "title":
                  "Check pressure gauge. Shut compressor down if pressure varies from normal.",
              "problemCause": [
                {
                  "id": 0,
                  "title": "Worn or broken valves.",
                  "solution": [
                    {
                      "id": 0,
                      "title":
                          "Remove suspect valves and repair or replace them."
                    }
                  ]
                }
              ]
            }
          ]
        },
        {
          "id": 0,
          "title": "Flat,slapping sound when compressor starts and stops.",
          "immediateAction": [
            {
              "id": 0,
              "title": "Try to isolate location of noise.",
              "problemCause": [
                {
                  "id": 0,
                  "title":
                      "Worn piston and/or cylinder liner. Worn rider rings.",
                  "solution": [
                    {
                      "id": 0,
                      "title":
                          "Remove suspect pistons and cylinder liners and check for wear. Repair as necessary. Replace rider rings."
                    }
                  ]
                }
              ]
            }
          ]
        },
        {
          "id": 0,
          "title": "Entire compressor vibrates.",
          "immediateAction": [
            {
              "id": 0,
              "title": "Stop compressor and correct trouble before restarting.",
              "problemCause": [
                {
                  "id": 0,
                  "title": "Compressor not properly secured.",
                  "solution": [
                    {"id": 0, "title": "Tighten mounting bolts."}
                  ]
                },
                {
                  "id": 0,
                  "title": "Piston clearances not properly adjusted",
                  "solution": [
                    {"id": 0, "title": "Readjust piston clearance"}
                  ]
                }
              ]
            }
          ]
        }
      ]
    },
    {
      "id": 0,
      "title": "INABILITY TO START COMPRESSOR",
      "Problem": [
        {
          "id": 0,
          "title": "Compressor fails to start.",
          "immediateAction": [
            {
              "id": 0,
              "title": "No immediate action.",
              "problemCause": [
                {
                  "id": 0,
                  "title":
                      "High pressure switch senses high pressure in receiver.",
                  "solution": [
                    {
                      "id": 0,
                      "title":
                          "Readjust pressure switch if setting is too high.Otherwise wait until there is a drop in receiver pressure that signals a restart."
                    }
                  ]
                },
                {
                  "id": 0,
                  "title": "Low pressure switch senses low suction pressure",
                  "solution": [
                    {
                      "id": 0,
                      "title":
                          "Check to see if system has lost pressure. Increase suction pressure or re-adjust pressure switch if setting is too low."
                    }
                  ]
                }
              ]
            }
          ]
        },
        {
          "id": 0,
          "title": "Overload tripped.",
          "immediateAction": [
            {
              "id": 0,
              "title":
                  "Clear fault, press reset button on the motor controller, then attempt restart ",
              "problemCause": [
                {
                  "id": 0,
                  "title": "Voltage too low.",
                  "solution": [
                    {
                      "id": 0,
                      "title":
                          "Restore power and check voltage to the compressor. Reset circuit breakers. Replace fuses as necessary."
                    }
                  ]
                }
              ]
            }
          ]
        }
      ]
    },
    {
      "id": 0,
      "title": "INABILITY TO RESTART COMPRESSOR",
      "Problem": [
        {
          "id": 0,
          "title": "Compressor fails to start after recent shutdown",
          "immediateAction": [
            {
              "id": 0,
              "title": "No immediate action",
              "problemCause": [
                {
                  "id": 0,
                  "title": "Shutdown was initiated by high pressure switch",
                  "solution": [
                    {
                      "id": 0,
                      "title":
                          "Allow pressures at switch to drop, compressor will automatically restart"
                    }
                  ]
                },
                {
                  "id": 0,
                  "title": "Shutdown was initiated by low pressure switch",
                  "solution": [
                    {
                      "id": 0,
                      "title":
                          "Allow inlet pressure to increase and clear fault (if applicable) then restart the compressor"
                    }
                  ]
                },
                {
                  "id": 0,
                  "title": "Shutdown was initiated by high temperature sensor",
                  "solution": [
                    {
                      "id": 0,
                      "title": "Correct the problem and then clear the fault"
                    }
                  ]
                }
              ]
            }
          ]
        }
      ]
    },
    {
      "id": 0,
      "title": "INABILITY TO STOP COMPRESSOR",
      "Problem": [
        {
          "id": 0,
          "title":
              "Compressor does not stop when high pressure set point is reached",
          "immediateAction": [
            {
              "id": 0,
              "title": "Push STOP  push button on controller",
              "problemCause": [
                {
                  "id": 0,
                  "title": "Inoperative pressure switch  or set improperly",
                  "solution": [
                    {
                      "id": 0,
                      "title": "Readjust or repair the switch as necessary"
                    }
                  ]
                }
              ]
            }
          ]
        },
        {
          "id": 0,
          "title":
              "Compressor does not stop when selector switch is turned to OFF",
          "immediateAction": [
            {
              "id": 0,
              "title": "Cut power to compressor at main disconnect",
              "problemCause": [
                {
                  "id": 0,
                  "title":
                      "Improperly wired or faulty  selector  switch  on controller",
                  "solution": [
                    {
                      "id": 0,
                      "title":
                          "Trace circuit wiring in motor controller against wiring diagram"
                    },
                    {
                      "id": 1,
                      "title": "Repair or replace faulty selector switch"
                    }
                  ]
                }
              ]
            }
          ]
        }
      ]
    }
  ]
};
