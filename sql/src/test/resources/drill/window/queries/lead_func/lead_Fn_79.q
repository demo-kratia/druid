select col1 , lead(col1) over(partition by col7 order by col1) lead_col1 from "allTypsUniq.parquet" where col1 >= -65535 and col1 <= 9223372036854775807