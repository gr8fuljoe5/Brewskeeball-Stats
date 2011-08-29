

<table class="stats standings tablesorter" id="tableSorted">
	<caption>League Standings</caption>
	<thead>
		<tr>
			<th class="long">TEAM</th>
			<th>AVERAGE</th>
			<th>TOTAL</th>
			<th>MATCH HIGH</th>
			<th>PINT RACE</th>
			<th>B.M.T. BID</th>
		</tr>
	</thead>
	<tbody>
		
		{% 
			var feed = this.feed;
			for (var i = 0; i < this.feed.entry.length; i++){ 
			var team = feed.entry[i].title["$t"],
			 	avg    = feed.entry[i].gsx$avg["$t"],
				total  = feed.entry[i].gsx$total["$t"],
				high   = feed.entry[i].gsx$high["$t"],
				pint   = feed.entry[i].gsx$pint["$t"],
				bid    = feed.entry[i].gsx$bid["$t"];
		%}
			<tr>
				<td>{%= team %}</td>
				<td>{%= avg %}</td>
				<td>{%= total %}</td>
				<td>{%= high %}</td>
				<td>{%= pint %}</td>
				<td>{%= bid %}</td>
			</tr>
			
			
		{% } %}
		
	</tbody>
</table>