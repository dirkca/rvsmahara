
 {if $MAINNAV}
  <div id="menu"> 
            <ul id="{if $DROPDOWNMENU}dropdown-nav{else}menu-nav{/if}" >
{strip}
{foreach from=$MAINNAV item=item}
                <li class="top {if $item.path}{$item.path}{else}dashboard{/if}{if $item.selected} selected{/if}{if $DROPDOWNMENU} dropdown-nav-home{/if}">
                <a href="{$WWWROOT}{$item.url}"{if $item.accesskey} accesskey="{$item.accesskey}"{/if} class="top_link {if $item.path}{$item.path}{else}dashboard{/if}"><span>{$item.title}</span></a>
{if $DROPDOWNMENU}{if $item.submenu}
                    <ul class="dropdown-sub">
{strip}
{foreach from=$item.submenu item=subitem}
                        <li{if $subitem.selected} class="selected"{/if}>
                            <a href="{$WWWROOT}{$subitem.url}"{if $subitem.accesskey} accesskey="{$subitem.accesskey}"{/if}><span>{$subitem.title}</span></a>
                        </li>
{/foreach}
{/strip}
                        <div class="cl"></div>
                    </ul>
{/if}{/if}
                </li>
{/foreach}
{if $ADMIN || $INSTITUTIONALADMIN || $STAFF || $INSTITUTIONALSTAFF}
                <li class="top returntosite"><a href="{$WWWROOT}" accesskey="h" class="top_link return-site"><span>{str tag="returntosite"}</span></a></li>
{elseif $USER->get('admin')}
                <li class="top siteadmin"><a href="{$WWWROOT}admin/" accesskey="a" class="top_link admin-site"><span>{str tag="administration"}</span></a></li>
{elseif $USER->is_institutional_admin()}
                <li class="top instituteadmin"><a href="{$WWWROOT}admin/users/search.php" accesskey="a" class="top_link admin-user"><span>{str tag="administration"}</span></a></li>
{elseif $USER->get('staff')}
                <li class="top siteinfo"><a href="{$WWWROOT}admin/users/search.php" accesskey="a" class="top_link admin-user"><span>{str tag="siteinformation"}</span></a></li>
{elseif $USER->is_institutional_staff()}
                <li class="top instituteinfo"><a href="{$WWWROOT}admin/users/search.php" accesskey="a" class="top_link admin-user"><span>{str tag="institutioninformation"}</span></a></li>
{/if}
            {/strip}</ul>   </div>

        
{if $DROPDOWNMENU}
{else}
        <div id="sub-nav"> 
        
        
         {if $dashboardview } <br> {/if}
{if $SELECTEDSUBNAV}
            <ul>
{strip}
{foreach from=$SELECTEDSUBNAV item=item}
                <li{if $item.selected} class="selected"{/if}><a href="{$WWWROOT}{$item.url}"{if $item.accesskey} accesskey="{$item.accesskey}"{/if}><span>{$item.title}</span></a></li>
{/foreach}
            {/strip}</ul>
{/if}
            <div class="cb"></div>
        </div>
{/if}
{/if}














