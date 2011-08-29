

<table class="stats playerStats tablesorter" id="tableSorted">
	<caption>League Standings</caption>
	<thead>
		<tr>
			<th class="long">Roller</th>
			<th>Average</th>
			<th>Total</th>
			<th>Week 1</th>
			<th>Week 2</th>
			<th>Week 3</th>
			<th>Week 4</th>
			<th>Week 5</th>
			<th>Week 6</th>
			<th>Week 7</th>
			<th>Week 8</th>
			
		</tr>
	</thead>
	<tbody>
		
		{% 
			var feed = this.feed;
			for (var i = 0; i < this.feed.entry.length; i++){ 
			var roller    = feed.entry[i].gsx$roller["$t"],
				total  = feed.entry[i].gsx$total["$t"],
				wk1   = feed.entry[i].gsx$wk1["$t"],
				wk2   = feed.entry[i].gsx$wk2["$t"],
				wk3   = feed.entry[i].gsx$wk3["$t"],
				wk4   = feed.entry[i].gsx$wk4["$t"],
				wk5   = feed.entry[i].gsx$wk5["$t"],
				wk6   = feed.entry[i].gsx$wk6["$t"],
				wk7   = feed.entry[i].gsx$wk7["$t"],
				wk8   = feed.entry[i].gsx$wk8["$t"],
				avg    = feed.entry[i].gsx$avg["$t"];
		%}
			<tr>
				<td>{%= roller %}</td>
				<td>{%= avg %}</td>
				<td>{%= total %}</td>
				<td>{%= wk1 %}</td>
				<td>{%= wk2 %}</td>
				<td>{%= wk3 %}</td>
				<td>{%= wk4 %}</td>
				<td>{%= wk5 %}</td>
				<td>{%= wk6 %}</td>
				<td>{%= wk7 %}</td>
				<td>{%= wk8 %}</td>
				
			</tr>
			
			
		{% } %}
		
	</tbody>
</table>