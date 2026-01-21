INSERT INTO generation_monthly_analytics (
	region,
	technology_type,
	energy_type,
	year_month,
	energy_mwh
)
SELECT
	region,
	tipo AS technology_type,
	enrc_conv AS energy_type,
	DATE_TRUNC('month', fecha)::date AS year_month,
	SUM(
		COALESCE(hora_01, 0) +
		COALESCE(hora_02, 0) +
		COALESCE(hora_03, 0) +
		COALESCE(hora_04, 0) +
		COALESCE(hora_05, 0) +
		COALESCE(hora_06, 0) +
		COALESCE(hora_07, 0) +
		COALESCE(hora_08, 0) +
		COALESCE(hora_09, 0) +
		COALESCE(hora_10, 0) +
		COALESCE(hora_11, 0) +
		COALESCE(hora_12, 0) +
		COALESCE(hora_13, 0) +
		COALESCE(hora_14, 0) +
		COALESCE(hora_15, 0) +
		COALESCE(hora_16, 0) +
		COALESCE(hora_17, 0) +
		COALESCE(hora_18, 0) +
		COALESCE(hora_19, 0) +
		COALESCE(hora_20, 0) +
		COALESCE(hora_21, 0) +
		COALESCE(hora_22, 0) +
		COALESCE(hora_23, 0) +
		COALESCE(hora_24, 0) +
		COALESCE(hora_25, 0) 
	) AS energy_mwh
FROM generation_hourly_raw
GROUP BY
	region,
	tipo,
	enrc_conv,
	DATE_TRUNC('month', fecha);
