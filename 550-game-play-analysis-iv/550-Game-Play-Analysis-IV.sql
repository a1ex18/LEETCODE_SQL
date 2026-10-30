select IFNULL(round(count(distinct a.player_id)/(select count(distinct player_id) from Activity),2),0) fraction
from Activity a inner join
(select player_id,min(event_date) min_event_date from Activity group by 1) b
on a.player_id=b.player_id and datediff(a.event_date,b.min_event_date)=1