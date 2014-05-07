<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--[if lt IE 7 ]><html{if $LANGDIRECTION == 'rtl'} dir="rtl"{/if} class="ie ie6"><![endif]-->
<!--[if IE 7 ]><html{if $LANGDIRECTION == 'rtl'} dir="rtl"{/if} class="ie ie7"><![endif]-->
<!--[if IE 8 ]><html{if $LANGDIRECTION == 'rtl'} dir="rtl"{/if} class="ie ie8"><![endif]-->
<!--[if IE 9 ]><html{if $LANGDIRECTION == 'rtl'} dir="rtl"{/if} class="ie ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--><html{if $LANGDIRECTION == 'rtl'} dir="rtl"{/if}><!--<![endif]-->
{include file="header/head.tpl"}
<body>
{if $USERMASQUERADING || !$PRODUCTIONMODE || $SITECLOSED || $SITETOP}<div class="sitemessages">{/if}
{if $USERMASQUERADING}<div class="sitemessage"><img src="{theme_url filename='images/icon_problem.gif'}" alt="">{$masqueradedetails} {$becomeyouagain|safe}</div>{/if}
{if !$PRODUCTIONMODE}<div class="sitemessage center">{str tag=notproductionsite section=error}</div>{/if}
{if $SITECLOSED}<div class="sitemessage center">{if $SITECLOSED == 'logindisabled'}{str tag=siteclosedlogindisabled section=mahara arg1="`$WWWROOT`admin/upgrade.php"}{else}{str tag=siteclosed}{/if}</div>{/if}
{if $SITETOP}<div id="switchwrap">{$SITETOP|safe}</div>{/if}
{if $USERMASQUERADING || !$PRODUCTIONMODE || $SITECLOSED || $SITETOP}</div>{/if}
{include file="header/topmenu.tpl"} 
<div id="page-content" class="{if $SELECTEDSUBNAV || ($SIDEBARS && $SIDEBLOCKS.left)}lc{else}mc{/if}">
    <div id="loading-box"></div>
    <div id="banner"><div id="infb"> {include file="header/topright.tpl"}  </div></div>     
    <div class="cb"></div> 
    {include file="header/navigation.tpl"}   
    
    
    {if $USER->is_logged_in()} 
    <!--<div class="navbar">
     <div class="breadcrumb">
        <ul>
            {strip}
            {foreach from=$MAINNAV item=item}
            {if $item.selected} <li><a href="{$WWWROOT}{$item.url}">{$item.title}</a></li>{/if}
            {/foreach}
            {/strip}
            
            {strip}
            {foreach from=$SELECTEDSUBNAV item=item}
            {if $item.selected}
            <span class="arrow sep"> &nbsp; </span>
            <li><a href="{$WWWROOT}{$item.url}">{$item.title}</a></li>{/if}
            {/foreach}
            {/strip}
        </ul>
    </div>
    </div>    <!-- navbar -->
    {/if}
   
    <div id="mainmiddlewrap">
        <div id="mainmiddle">
            <div id="{if $SIDEBARS}{if $SIDEBLOCKS.right}main-wrapper-narrow-right{else}main-wrapper-narrow-left{/if}{else}main-wrapper{/if}">
                    <div id="main-column" class="main-column{if $SIDEBARS} main-column-narrow{/if}">
                        <div id="main-column-container">
                         {dynamic}{insert_messages}{/dynamic}  
{if isset($PAGEHEADING)}        
    <h1>{$PAGEHEADING}{if $PAGEHELPNAME}<span class="page-help-icon">{$PAGEHELPICON|safe}</span>{/if}</h1>
{/if}

{if $SUBPAGENAV}
  {if $SUBPAGETOP}{include file=$SUBPAGETOP}{/if}
{* Tabs and beginning of page container for group info pages *}                        
<div class="tabswrap">
<ul class="in-page-tabs">
{foreach from=$SUBPAGENAV item=item}
                            <li><a {if $item.selected}class="current-tab" {/if}href="{$WWWROOT}{$item.url}">{$item.title}</a></li>
{/foreach}
                        </ul> </div>
                        <div class="subpage rel">
{/if}
   
   
    
   