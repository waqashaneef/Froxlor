 $header
	<article>
		<header>
			<h2>
				<img src="templates/{$theme}/assets/img/icons/mysql_big.png" alt="" />&nbsp;
				{$lng['menue']['mysql']['databases']}&nbsp;({$mysqls_count})
			</h2>
		</header>

		<section>

			<form action="{$linker->getLink(array('section' => 'mysql'))}" method="post" enctype="application/x-www-form-urlencoded">

			<div class="overviewsearch">
				{$searchcode}
			</div>

			<if ($userinfo['mysqls_used'] < $userinfo['mysqls'] || $userinfo['mysqls'] == '-1') && 15 < $mysqls_count >
				<div class="overviewadd">
					<img src="templates/{$theme}/assets/img/icons/mysql_add.png" alt="" />&nbsp;
					<a href="{$linker->getLink(array('section' => 'mysql', 'page' => 'mysqls', 'action' => 'add'))}">{$lng['mysql']['database_create']}</a>
				</div>
			</if>

			<table class="bradius" <if 0 < $mysqls_count>id="sortable"</if>>
				<thead>
					<tr>
						<th>{$lng['mysql']['databasename']}</th>
						<th>{$lng['mysql']['databasedescription']}</th>
						<th>{$lng['mysql']['size']}</th>
						<if 1 < count($sql_root)><th>{$lng['mysql']['mysql_server']}</th></if>
						<th class="nosort">{$lng['panel']['options']}</th>
					</tr>
				</thead>
				<if $pagingcode != ''>
					<tfoot>
						<tr>
							<td colspan="5">{$pagingcode}</td>
						</tr>
					</tfoot>
				</if>
				<tbody>
					{$mysqls}
				</tbody>
			</table>

			<p style="display:none;">
				<input type="hidden" name="s" value="$s" />
				<input type="hidden" name="page" value="$page" />
			</p>

			</form>

			<if ($userinfo['mysqls_used'] < $userinfo['mysqls'] || $userinfo['mysqls'] == '-1') >
				<div class="overviewadd">
					<img src="templates/{$theme}/assets/img/icons/mysql_add.png" alt="" />&nbsp;
					<a href="{$linker->getLink(array('section' => 'mysql', 'page' => 'mysqls', 'action' => 'add'))}">{$lng['mysql']['database_create']}</a>
				</div>
			</if>

		</section>
	</article>
$footer
