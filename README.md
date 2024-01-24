# Fuel calculator NASA

## Get the app running

### Clone the app

```bash
git@github.com:AlexanderBelonogov/fuel-calculator-nasa.git
cd fuel-calculator-nasa
```

### Install RVM

The app is using Ruby 3.3.x

```bash
rvm install ruby-3.3.0
rvm use ruby-3.3.0
```

Install bundler and gems

```bash
gem install bundler
bundle install
```

## How to use

### To get commands list

```bash
$ bin/fuel_calculator_nasa
Commands:
  fuel_calculator_nasa help [COMMAND]  # Describe available commands or one specific command
  fuel_calculator_nasa mission_apollo  # Launch Earth, land Moon, launch Moon, land Earth
  fuel_calculator_nasa mission_mars    # Launch Earth, land Mars, launch Mars, land Earth
  fuel_calculator_nasa passenger_ship  # Launch Earth, land Moon, launch Moon, land Mars, launch Mars, land Earth
```

### Command example

```bash
$ bin/fuel_calculator_nasa mission_apollo
Total fuel weight required for the trip: 51898 kg
```

## Examples of programs and required fuel for the whole mission

1. Apollo 11:

    - path: launch Earth, land Moon, launch Moon, land Earth
    - weight of equipment: 28801 kg
    - weight of fuel: 51898 kg
    - arguments: 28801, [[:launch, 9.807], [:land, 1.62], [:launch, 1.62], [:land, 9.807]]

2. Mission on Mars:

    - path: launch Earth, land Mars, launch Mars, land Earth
    - weight of equipment: 14606 kg
    - weight of fuel: 33388 kg
    - arguments: 14606, [[:launch, 9.807], [:land, 3.711], [:launch, 3.711], [:land, 9.807]]

3. Passenger ship:

    - path: launch Earth, land Moon, launch Moon, land Mars, launch Mars, land Earth
    - weight of equipment: 75432 kg
    - weight of fuel: 212161 kg
    - arguments: 75432, [[:launch, 9.807], [:land, 1.62], [:launch, 1.62], [:land, 3.711], [:launch, 3.711], [:land, 9.807]]
