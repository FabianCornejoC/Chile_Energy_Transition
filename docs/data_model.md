# Data Model Desing

## Scope 

This project analyzes monthly electricity generation and consumption in Chile, with a focus on the energy transition and renewable technologie.

## Temporal Resolution

All analyzes are conducted at a monthly level to ensure interpretability and scalability.

## Geographic Level 

Data its aggregated at the regional level. Company and plant-level details are excluded.

## Core tables 

### generation_monthly
- region
- year
- month
- date
- technology
- category (renewable / conventional)
- energy_generated_gwh

### consumption_monthly
- region
- year
- month
- date
- energy_consumed_gwh

## Units
Energy values are expressed in GWh.

## Assumptions
- Hourly data is aggregated to monthly sums.
- Technology categories follow official definitions.
