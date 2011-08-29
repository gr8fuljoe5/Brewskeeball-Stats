

<table class="stats tablesorter totals" id="tableSorted">
	<caption>League Standings</caption>
	<thead>
		<tr>
			<th class="long">Team</th>
			<th>Total</th>
			<th>Week 1</th>
			<th>Week 2</th>
			<th>Week 3</th>
			<th>Week 4</th>
			<th>Week 5</th>
			<th>Week 6</th>
			<th>Week 7</th>
			<th>Week 8</th>
			<th>Weeks played</th>
		</tr>
	</thead>
	<tbody>
		
		{% 
			var feed = this.feed;
			for (var i = 0; i < this.feed.entry.length; i++){ 
			var team    = feed.entry[i].gsx$team["$t"],
				total  = feed.entry[i].gsx$total["$t"],
				wk1   = feed.entry[i].gsx$wk1["$t"],
				wk2   = feed.entry[i].gsx$wk2["$t"],
				wk3   = feed.entry[i].gsx$wk3["$t"],
				wk4   = feed.entry[i].gsx$wk4["$t"],
				wk5   = feed.entry[i].gsx$wk5["$t"],
				wk6   = feed.entry[i].gsx$wk6["$t"],
				wk7   = feed.entry[i].gsx$wk7["$t"],
				wk8   = feed.entry[i].gsx$wk8["$t"],
				played    = feed.entry[i].gsx$played["$t"];
		%}
			<tr>
				<td>{%= team %}</td>
				<td>{%= total %}</td>
				<td>{%= wk1 %}</td>
				<td>{%= wk2 %}</td>
				<td>{%= wk3 %}</td>
				<td>{%= wk4 %}</td>
				<td>{%= wk5 %}</td>
				<td>{%= wk6 %}</td>
				<td>{%= wk7 %}</td>
				<td>{%= wk8 %}</td>
				<td>{%= played %}</td>
			</tr>
			
			
		{% } %}
		
	</tbody>
</table>