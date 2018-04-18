{strip}
	{*<!-- {[The file is published on the basis of YetiForce Public License 3.0 that can be found in the following directory: licenses/LicenseEN.txt or yetiforce.com]} -->*}
	{if $MOREMENU neq true && ($PRIVILEGESMODEL->isAdminUser() || $PRIVILEGESMODEL->hasGlobalReadPermission() || $PRIVILEGESMODEL->hasModulePermission($MENU.tabid)) }
		<li class="menuHomeIcon {if !$HASCHILDS}hasParentMenu{/if}" data-id="{$MENU['id']}" role="menuitem" tabindex="{$TABINDEX}" {if $HASCHILDS}aria-haspopup="{$HASCHILDS}"{/if}>
			<a class="{if $MODULE eq 'Home'} selected {/if} hasIcon" href="{$HOME_MODULE_MODEL->getDefaultUrl()}">
				<div class="iconContainer">
					<div class="iconImage">
						<span class="menuIcon userIcon-Home" aria-hidden="true"></span>
					</div>
				</div>
				<div class="iconContainer">
					<span class="iconImage">
						{\App\Language::translate('LBL_HOME',$MENU_MODULE)}
					</span>
				</div>
			</a>
			{include file=\App\Layout::getTemplatePath('menu/SubMenu.tpl', $MODULE)}
		</li>
	{/if}
{/strip}
