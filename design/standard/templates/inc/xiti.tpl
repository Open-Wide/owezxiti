{* Marquage XiTi *}
{def
    $xiti_sd = ezini( 'SiteSettings', 'XitiSd', 'site.ini' )
    $xiti_site = ezini( 'SiteSettings', 'XitiSite', 'site.ini' )
    $xiti_n2 = ezini( 'SiteSettings', 'XitiN2', 'site.ini' )
    $user_status = cond( $current_user.is_logged_in, 'logged', 'anonymous' )
    $page_title = cond( $module_result.uri|trim('/')|eq(''), 'Accueil', $module_result.uri|explode('/(')[0]|explode('#')[0]|trim('/')|explode('/')|implode('::')|trim() )
}

<script type="text/javascript">
    <!--
        xtnv = document; //parent.document or top.document or document
        xtsd = "http://log{$xiti_sd}";
        xtsite = "{$xiti_site}";
        xtn2 = "{$xiti_n2}"; // level 2 site ID
        xtpage = "{$page_title}"; //page name (with the use of :: to create chapters)
        xtdi = ""; //implication degree
        xt_multc = ""; //all the xi indicators (like "&x1=...&x2=....&x3=...")
        xt_an = "{$current_user.contentobject_id}"; //user ID
        xt_ac = "{$user_status}"; //category ID
        //do not modify below
        if (window.xtparam!=null){ldelim}window.xtparam+="&ac="+xt_ac+"&an="+xt_an+xt_multc;{rdelim}
        else{ldelim}window.xtparam="&ac="+xt_ac+"&an="+xt_an+xt_multc;{rdelim};
    //-->
</script>
<script type="text/javascript" src={"javascript/xtcore.js"|ezdesign()}></script>
<noscript>
    <img width="1" height="1" alt="" src="http://log{$xiti_sd}.xiti.com/hit.xiti?s={$xiti_site}&s2={$xiti_n2}&p={$page_title}&di=&an={$current_user.contentobject_id}&ac={$user_status}" >
</noscript>

{undef $xiti_sd
        $xiti_site
        $xiti_n2
        $user_status
        $page_title}
