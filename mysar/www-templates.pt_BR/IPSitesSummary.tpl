<nobr>[
<a href="{$smarty.server.PHP_SELF}?a=IPSummary&date={$pageVars.today}">&lt;&lt;&lt; Voltar para "esta&ccedil;&otilde;es e usu&aacute;rios de um dia espec&iacute;fico"</a>
|
<a href="{$pageVars.uri}">Atualizar esta p&aacute;gina</a>
]</nobr>

<div class="table-responsive"><table class="table table-condensed"><tr><th style="font-size: 20px";>Relat&oacute;rio de uma Esta&ccedil;&atilde;o, Usu&aacute;rio e Data</th></tr></table></div>
<p>
<div class="table-responsive"><table class="table table-condensed">
  <tr><td style="font-size: 20px;">
    {if $pageVars.previousWeekID != ""}
      <a href="{$smarty.server.PHP_SELF}?a={$pageVars.thisPage}&hostiplong={$pageVars.hostiplong}&date={$pageVars.previousWeek}&usersID={$pageVars.previousWeekID}">&lt;&lt;</a>
	{/if}
    {if $pageVars.previousDateID != ""}
      <a href="{$smarty.server.PHP_SELF}?a={$pageVars.thisPage}&hostiplong={$pageVars.hostiplong}&date={$pageVars.previousDate}&usersID={$pageVars.previousDateID}">&lt;</a>
	{/if}
    {$pageVars.thisDateFormatted}
    {if $pageVars.nextDateID != ""}
      <a href="{$smarty.server.PHP_SELF}?a={$pageVars.thisPage}&hostiplong={$pageVars.hostiplong}&date={$pageVars.nextDate}&usersID={$pageVars.nextDateID}">&gt;</a>
	{/if}
    {if $pageVars.nextWeekID != ""}
      <a href="{$smarty.server.PHP_SELF}?a={$pageVars.thisPage}&hostiplong={$pageVars.hostiplong}&date={$pageVars.nextWeek}&usersID={$pageVars.nextWeekID}">&gt;&gt;</a>
	{/if}
  </td></tr>
  <tr><td style="text-align:center;">
    <a href="{$smarty.server.PHP_SELF}?a={$pageVars.thisPage}&hostiplong={$pageVars.hostiplong}&date={$pageVars.today}&usersID={$pageVars.usersID}">[ Ir para o dia de Hoje ]</a>
  </td></tr>
</table></div>
<p>
<div class="table-responsive"><table class="table table-condensed">
  <tr><th colspan="2">Informa&ccedil;&otilde;es da Esta&ccedil;&atilde;o</th></tr>
  <form method="POST">
  <input type="hidden" name="hiddenSubmit" value="1">
  <input type="hidden" name="action" value="hostDescriptionUpdate">
{*
  <input type="hidden" name="a" value="{$pageVars.thisPage}">
  <input type="hidden" name="date" value="{$pageVars.date}">
  <input type="hidden" name="hostiplong" value="{$pageVars.hostiplong}">
  <input type="hidden" name="usersID" value="{$pageVars.usersID}">
*}
  <tr><td>Nome</td><td style="text-align:left;">{$pageVars.host.hostname}</td></tr>
  <tr><td>Endere&ccedil;o IP</td><td style="text-align:left;">{$pageVars.host.hostname}</td></tr>
  <tr><td>Descri&ccedil;&atilde;o</td><td style="text-align:left;"><input type="text" name="thisValue" value="{$pageVars.host.description}"</td></tr>
  <tr><td>Nome Usu&aacute;rio</td><td style="text-align:left;">{$pageVars.user.authuser}</tr>
  </form>
</table></div>
<p>
      [
        <a href="{$smarty.server.PHP_SELF}?a={$pageVars.thisPage}&action=setDefaultView&OrderMethod={$pageVars.orderMethod}&OrderBy={$pageVars.orderBy}&ByteUnit={$pageVars.byteUnit}&date={$pageVars.date}&hostiplong={$pageVars.hostiplong}">
          Manter esta visualiza&ccedil;&atilde;o como padr&atilde;o
        </a>
      ]
  <div class="table-responsive"><table class="table table-condensed">
    <tr>
      <th></th>
      <th>
        <a href="{$smarty.server.PHP_SELF}?{$pageVars.url.siteASC}"><img border="{$pageVars.siteASCImageBorder}" src="images/up-arrow.gif" class="img-with-border"></a>
          {$pageVars.siteLabelStart}SITE{$pageVars.siteLabelEnd}
        <a href="{$smarty.server.PHP_SELF}?{$pageVars.url.siteDESC}"><img border="{$pageVars.siteDESCImageBorder}" src="images/down-arrow.gif" class="img-with-border"></a>
      </th>
      <th width="110">
        <a href="{$smarty.server.PHP_SELF}?{$pageVars.url.bytesASC}"><img border="{$pageVars.bytesASCImageBorder}" src="images/up-arrow.gif" class="img-with-border"></a>
          {$pageVars.bytesLabelStart}BYTES{$pageVars.bytesLabelEnd}
        <a href="{$smarty.server.PHP_SELF}?{$pageVars.url.bytesDESC}"><img border="{$pageVars.bytesDESCImageBorder}" src="images/down-arrow.gif" class="img-with-border"></a>
        <br>
        <a href="{$smarty.server.PHP_SELF}?{$pageVars.url.B}">{$pageVars.BLabelStart}B{$pageVars.BLabelEnd}</a>
        |
        <a href="{$smarty.server.PHP_SELF}?{$pageVars.url.K}">{$pageVars.KLabelStart}K{$pageVars.KLabelEnd}</a>
        |
        <a href="{$smarty.server.PHP_SELF}?{$pageVars.url.M}">{$pageVars.MLabelStart}M{$pageVars.MLabelEnd}</a>
        |
        <a href="{$smarty.server.PHP_SELF}?{$pageVars.url.G}">{$pageVars.GLabelStart}G{$pageVars.GLabelEnd}</a>
      </th>
      <th>
        <a href="{$smarty.server.PHP_SELF}?{$pageVars.url.cachePercentASC}"><img border="{$pageVars.cachePercentASCImageBorder}" src="images/up-arrow.gif" class="img-with-border"></a>
          {$pageVars.cachePercentLabelStart}USO DO CACHE{$pageVars.cachePercentLabelEnd}
        <a href="{$smarty.server.PHP_SELF}?{$pageVars.url.cachePercentDESC}"><img border="{$pageVars.cachePercentDESCImageBorder}" src="images/down-arrow.gif" class="img-with-border"></a>
      </th>
    </tr>
  {assign var=recordCount value="0"}
  {assign var=bytesTotal value="0"}
  {foreach from=$pageVars.summaryIPSites item=record}
  <tr onMouseOver="this.bgColor='#C5D3E7';" onMouseOut="this.bgColor='#DAE3F0';">
    <td style="text-align: center;"><a href="{$smarty.server.PHP_SELF}?a=details&date={$pageVars.date}&hostiplong={$pageVars.hostiplong}&sitesID={$record.sitesID}&usersID={$pageVars.usersID}"><b>Detalhes</b></td>
    <td style="text-align: left;"><a href="{$record.site}" target="_blank">{$record.site}</a></td>
    <td>{$record.bytes|bytesToHRF:$pageVars.byteUnit}</td>
    <td>{$record.cachePercent}%</td>
  </tr>
  {assign var=recordCount value=$recordCount+1}
  {assign var=bytesTotal value=$bytesTotal+$record.bytes}
  {/foreach}
    <tr>
      <th>TOTAIS</th>
      <th style="text-align: right;">{$recordCount}</th>
      <th style="text-align: right;">{$bytesTotal|bytesToHRF:$pageVars.byteUnit}</th>
      <th></th>
    </tr>
  </table></div>
  <p>
    <div class="table-responsive"><table class="table table-condensed">
    <tr><th colspan="7">&Uacute;ltimas Atividades do Usu&aacute;rio</th></td>
    <tr>
      <th>HORA</th>
      <th>BYTES</th>
      <th>URL</th>
      <th>STATUS</th>
    </tr>
    {foreach from=$pageVars.latestUserActivity item=record}
    <tr onMouseOver="this.bgColor='#C5D3E7';" onMouseOut="this.bgColor='#DAE3F0';">
      <td>{$record.time}</td>
      <td>{$record.bytes}</td>
      <td style="text-align: left"><a href="{$record.url}">{$record.url|string_trim:80:"..."}</a></td>
      <td style="text-align: left">{$record.resultCode}</td>
    </tr>
    {/foreach}
  </table></div>

