[{$smarty.block.parent}]
[{if $oView->showSearch()}]
    <script type="text/javascript">
        var source = '[{$oViewConf->getModuleUrl('ocb_autosuggest','Controller/OcbAutoSuggest.php')}]';
    </script>
    [{oxscript include=$oViewConf->getModuleUrl('ocb_autosuggest','out/src/js/ocb_autosuggest.js')}]
    [{capture append="oxidBlock_pageHead"}][{strip}]
        <style type="text/css">
            .ui-helper-hidden{display:none;}
            .ui-helper-hidden-accessible{position:absolute;overflow:hidden;clip:rect(0 0 0 0);margin:-1px;padding:0;width:1px;height:1px;border:0;}
            .ui-helper-reset{margin:0;padding:0;outline:0;border:0;list-style:none;text-decoration:none;font-size:100%;line-height:1.3;}
            .ui-helper-clearfix:before,.ui-helper-clearfix:after{display:table;content:'';}
            .ui-helper-clearfix:after{clear:both;}
            .ui-helper-clearfix{zoom:1;}
            .ui-helper-zfix{position:absolute;top:0;left:0;width:100%;height:100%;opacity:0;filter:Alpha(Opacity=0);}
            .ui-state-disabled{cursor:default!important;}
            .ui-icon{display:block;overflow:hidden;background-repeat:no-repeat;text-indent:-99999px;}
            .ui-widget-overlay{position:absolute;top:0;left:0;width:100%;height:100%;}
            .ui-autocomplete{position:absolute;top:0;left:0;cursor:default;}
            * html .ui-autocomplete{width:1px;}
            .ui-menu{display:block;margin:0;padding:2px;outline:none;list-style:none;}
            .ui-menu .ui-menu{position:absolute;margin-top:-3px;}
            .ui-menu .ui-menu-item{margin:0;padding:0;width:100%;zoom:1;}
            .ui-menu .ui-menu-divider{margin:5px -2px;height:0;border:1px 0 0 0;font-size:0;line-height:0;}
            .ui-menu .ui-menu-item a{display:block;padding:2px .4em;text-decoration:none;font-weight:400;line-height:1.5;zoom:1;}
            .ui-menu .ui-menu-item a.ui-state-focus,.ui-menu .ui-menu-item a.ui-state-active{margin:-1px;font-weight:400;}
            .ui-menu .ui-state-disabled{margin:.4em 0 .2em;font-weight:400;line-height:1.5;}
            .ui-menu .ui-state-disabled a{cursor:default;}
            .ui-menu-icons{position:relative;}
            .ui-menu-icons .ui-menu-item a{position:relative;padding-left:2em;}
            .ui-menu .ui-icon{position:absolute;top:.2em;left:.2em;}
            .ui-menu .ui-menu-icon{position:static;float:right;}
            .ui-widget{font:1.1em Verdana,Arial,sans-serif;}
            .ui-widget .ui-widget{font-size:1em;}
            .ui-widget input,.ui-widget select,.ui-widget textarea,.ui-widget button{font:1em Verdana,Arial,sans-serif;}
            .ui-widget-content{border:1px solid #aaa;background:#fff url(/modules/oxcom/ocbautosuggest/out/src/css/images/ui-bg_flat_75_ffffff_40x100.png) 50% 50% repeat-x;color:#222;}
            .ui-widget-content a,.ui-widget-header a{color:#222;}
            .ui-widget-header{border:1px solid #aaa;background:#ccc url(/modules/oxcom/ocbautosuggest/out/src/css/images/ui-bg_highlight-soft_75_cccccc_1x100.png) 50% 50% repeat-x;color:#222;font-weight:700;}
            .ui-state-default,.ui-widget-content .ui-state-default,.ui-widget-header .ui-state-default{border:1px solid #d3d3d3;background:#e6e6e6 url(/modules/oxcom/ocbautosuggest/out/src/css/images/ui-bg_glass_75_e6e6e6_1x400.png) 50% 50% repeat-x;color:#555;font-weight:400;}
            .ui-state-default a,.ui-state-default a:link,.ui-state-default a:visited{color:#555;text-decoration:none;}
            .ui-state-hover,.ui-widget-content .ui-state-hover,.ui-widget-header .ui-state-hover,.ui-state-focus,.ui-widget-content .ui-state-focus,.ui-widget-header .ui-state-focus{border:1px solid #999;background:#dadada url(/modules/oxcom/ocbautosuggest/out/src/css/images/ui-bg_glass_75_dadada_1x400.png) 50% 50% repeat-x;color:#212121;font-weight:400;}
            .ui-state-hover a,.ui-state-hover a:hover,.ui-state-hover a:link,.ui-state-hover a:visited,.ui-state-active a,.ui-state-active a:link,.ui-state-active a:visited{color:#212121;text-decoration:none;}
            .ui-state-active,.ui-widget-content .ui-state-active,.ui-widget-header .ui-state-active{border:1px solid #aaa;background:#fff url(/modules/oxcom/ocbautosuggest/out/src/css/images/ui-bg_glass_65_ffffff_1x400.png) 50% 50% repeat-x;color:#212121;font-weight:400;}
            .ui-state-highlight,.ui-widget-content .ui-state-highlight,.ui-widget-header .ui-state-highlight{border:1px solid #fcefa1;background:#fbf9ee url(/modules/oxcom/ocbautosuggest/out/src/css/images/ui-bg_glass_55_fbf9ee_1x400.png) 50% 50% repeat-x;color:#363636;}
            .ui-state-highlight a,.ui-widget-content .ui-state-highlight a,.ui-widget-header .ui-state-highlight a{color:#363636;}
            .ui-state-error,.ui-widget-content .ui-state-error,.ui-widget-header .ui-state-error{border:1px solid #cd0a0a;background:#fef1ec url(/modules/oxcom/ocbautosuggest/out/src/css/images/ui-bg_glass_95_fef1ec_1x400.png) 50% 50% repeat-x;color:#cd0a0a;}
            .ui-state-error a,.ui-widget-content .ui-state-error a,.ui-widget-header .ui-state-error a,.ui-state-error-text,.ui-widget-content .ui-state-error-text,.ui-widget-header .ui-state-error-text{color:#cd0a0a;}
            .ui-priority-primary,.ui-widget-content .ui-priority-primary,.ui-widget-header .ui-priority-primary{font-weight:700;}
            .ui-priority-secondary,.ui-widget-content .ui-priority-secondary,.ui-widget-header .ui-priority-secondary{font-weight:400;opacity:.7;filter:Alpha(Opacity=70);}
            .ui-state-disabled,.ui-widget-content .ui-state-disabled,.ui-widget-header .ui-state-disabled{background:none;opacity:.35;filter:Alpha(Opacity=35);}
            .ui-state-disabled .ui-icon{filter:Alpha(Opacity=35);}
            .ui-icon{width:16px;height:16px;background:url(/modules/oxcom/ocbautosuggest/out/src/css/images/ui-icons_222222_256x240.png);}
            .ui-widget-content .ui-icon,.ui-widget-header .ui-icon{background:url(/modules/oxcom/ocbautosuggest/out/src/css/images/ui-icons_222222_256x240.png);}
            .ui-state-default .ui-icon{background:url(/modules/oxcom/ocbautosuggest/out/src/css/images/ui-icons_888888_256x240.png);}
            .ui-state-hover .ui-icon,.ui-state-focus .ui-icon,.ui-state-active .ui-icon{background:url(/modules/oxcom/ocbautosuggest/out/src/css/images/ui-icons_454545_256x240.png);}
            .ui-state-highlight .ui-icon{background:url(/modules/oxcom/ocbautosuggest/out/src/css/images/ui-icons_2e83ff_256x240.png);}
            .ui-state-error .ui-icon,.ui-state-error-text .ui-icon{background:url(/modules/oxcom/ocbautosuggest/out/src/css/images/ui-icons_cd0a0a_256x240.png);}
            .ui-icon-carat-1-n{background-position:0 0;}
            .ui-icon-carat-1-ne{background-position:-16px 0;}
            .ui-icon-carat-1-e{background-position:-32px 0;}
            .ui-icon-carat-1-se{background-position:-48px 0;}
            .ui-icon-carat-1-s{background-position:-64px 0;}
            .ui-icon-carat-1-sw{background-position:-80px 0;}
            .ui-icon-carat-1-w{background-position:-96px 0;}
            .ui-icon-carat-1-nw{background-position:-112px 0;}
            .ui-icon-carat-2-n-s{background-position:-128px 0;}
            .ui-icon-carat-2-e-w{background-position:-144px 0;}
            .ui-icon-triangle-1-n{background-position:0 -16px;}
            .ui-icon-triangle-1-ne{background-position:-16px -16px;}
            .ui-icon-triangle-1-e{background-position:-32px -16px;}
            .ui-icon-triangle-1-se{background-position:-48px -16px;}
            .ui-icon-triangle-1-s{background-position:-64px -16px;}
            .ui-icon-triangle-1-sw{background-position:-80px -16px;}
            .ui-icon-triangle-1-w{background-position:-96px -16px;}
            .ui-icon-triangle-1-nw{background-position:-112px -16px;}
            .ui-icon-triangle-2-n-s{background-position:-128px -16px;}
            .ui-icon-triangle-2-e-w{background-position:-144px -16px;}
            .ui-icon-arrow-1-n{background-position:0 -32px;}
            .ui-icon-arrow-1-ne{background-position:-16px -32px;}
            .ui-icon-arrow-1-e{background-position:-32px -32px;}
            .ui-icon-arrow-1-se{background-position:-48px -32px;}
            .ui-icon-arrow-1-s{background-position:-64px -32px;}
            .ui-icon-arrow-1-sw{background-position:-80px -32px;}
            .ui-icon-arrow-1-w{background-position:-96px -32px;}
            .ui-icon-arrow-1-nw{background-position:-112px -32px;}
            .ui-icon-arrow-2-n-s{background-position:-128px -32px;}
            .ui-icon-arrow-2-ne-sw{background-position:-144px -32px;}
            .ui-icon-arrow-2-e-w{background-position:-160px -32px;}
            .ui-icon-arrow-2-se-nw{background-position:-176px -32px;}
            .ui-icon-arrowstop-1-n{background-position:-192px -32px;}
            .ui-icon-arrowstop-1-e{background-position:-208px -32px;}
            .ui-icon-arrowstop-1-s{background-position:-224px -32px;}
            .ui-icon-arrowstop-1-w{background-position:-240px -32px;}
            .ui-icon-arrowthick-1-n{background-position:0 -48px;}
            .ui-icon-arrowthick-1-ne{background-position:-16px -48px;}
            .ui-icon-arrowthick-1-e{background-position:-32px -48px;}
            .ui-icon-arrowthick-1-se{background-position:-48px -48px;}
            .ui-icon-arrowthick-1-s{background-position:-64px -48px;}
            .ui-icon-arrowthick-1-sw{background-position:-80px -48px;}
            .ui-icon-arrowthick-1-w{background-position:-96px -48px;}
            .ui-icon-arrowthick-1-nw{background-position:-112px -48px;}
            .ui-icon-arrowthick-2-n-s{background-position:-128px -48px;}
            .ui-icon-arrowthick-2-ne-sw{background-position:-144px -48px;}
            .ui-icon-arrowthick-2-e-w{background-position:-160px -48px;}
            .ui-icon-arrowthick-2-se-nw{background-position:-176px -48px;}
            .ui-icon-arrowthickstop-1-n{background-position:-192px -48px;}
            .ui-icon-arrowthickstop-1-e{background-position:-208px -48px;}
            .ui-icon-arrowthickstop-1-s{background-position:-224px -48px;}
            .ui-icon-arrowthickstop-1-w{background-position:-240px -48px;}
            .ui-icon-arrowreturnthick-1-w{background-position:0 -64px;}
            .ui-icon-arrowreturnthick-1-n{background-position:-16px -64px;}
            .ui-icon-arrowreturnthick-1-e{background-position:-32px -64px;}
            .ui-icon-arrowreturnthick-1-s{background-position:-48px -64px;}
            .ui-icon-arrowreturn-1-w{background-position:-64px -64px;}
            .ui-icon-arrowreturn-1-n{background-position:-80px -64px;}
            .ui-icon-arrowreturn-1-e{background-position:-96px -64px;}
            .ui-icon-arrowreturn-1-s{background-position:-112px -64px;}
            .ui-icon-arrowrefresh-1-w{background-position:-128px -64px;}
            .ui-icon-arrowrefresh-1-n{background-position:-144px -64px;}
            .ui-icon-arrowrefresh-1-e{background-position:-160px -64px;}
            .ui-icon-arrowrefresh-1-s{background-position:-176px -64px;}
            .ui-icon-arrow-4{background-position:0 -80px;}
            .ui-icon-arrow-4-diag{background-position:-16px -80px;}
            .ui-icon-extlink{background-position:-32px -80px;}
            .ui-icon-newwin{background-position:-48px -80px;}
            .ui-icon-refresh{background-position:-64px -80px;}
            .ui-icon-shuffle{background-position:-80px -80px;}
            .ui-icon-transfer-e-w{background-position:-96px -80px;}
            .ui-icon-transferthick-e-w{background-position:-112px -80px;}
            .ui-icon-folder-collapsed{background-position:0 -96px;}
            .ui-icon-folder-open{background-position:-16px -96px;}
            .ui-icon-document{background-position:-32px -96px;}
            .ui-icon-document-b{background-position:-48px -96px;}
            .ui-icon-note{background-position:-64px -96px;}
            .ui-icon-mail-closed{background-position:-80px -96px;}
            .ui-icon-mail-open{background-position:-96px -96px;}
            .ui-icon-suitcase{background-position:-112px -96px;}
            .ui-icon-comment{background-position:-128px -96px;}
            .ui-icon-person{background-position:-144px -96px;}
            .ui-icon-print{background-position:-160px -96px;}
            .ui-icon-trash{background-position:-176px -96px;}
            .ui-icon-locked{background-position:-192px -96px;}
            .ui-icon-unlocked{background-position:-208px -96px;}
            .ui-icon-bookmark{background-position:-224px -96px;}
            .ui-icon-tag{background-position:-240px -96px;}
            .ui-icon-home{background-position:0 -112px;}
            .ui-icon-flag{background-position:-16px -112px;}
            .ui-icon-calendar{background-position:-32px -112px;}
            .ui-icon-cart{background-position:-48px -112px;}
            .ui-icon-pencil{background-position:-64px -112px;}
            .ui-icon-clock{background-position:-80px -112px;}
            .ui-icon-disk{background-position:-96px -112px;}
            .ui-icon-calculator{background-position:-112px -112px;}
            .ui-icon-zoomin{background-position:-128px -112px;}
            .ui-icon-zoomout{background-position:-144px -112px;}
            .ui-icon-search{background-position:-160px -112px;}
            .ui-icon-wrench{background-position:-176px -112px;}
            .ui-icon-gear{background-position:-192px -112px;}
            .ui-icon-heart{background-position:-208px -112px;}
            .ui-icon-star{background-position:-224px -112px;}
            .ui-icon-link{background-position:-240px -112px;}
            .ui-icon-cancel{background-position:0 -128px;}
            .ui-icon-plus{background-position:-16px -128px;}
            .ui-icon-plusthick{background-position:-32px -128px;}
            .ui-icon-minus{background-position:-48px -128px;}
            .ui-icon-minusthick{background-position:-64px -128px;}
            .ui-icon-close{background-position:-80px -128px;}
            .ui-icon-closethick{background-position:-96px -128px;}
            .ui-icon-key{background-position:-112px -128px;}
            .ui-icon-lightbulb{background-position:-128px -128px;}
            .ui-icon-scissors{background-position:-144px -128px;}
            .ui-icon-clipboard{background-position:-160px -128px;}
            .ui-icon-copy{background-position:-176px -128px;}
            .ui-icon-contact{background-position:-192px -128px;}
            .ui-icon-image{background-position:-208px -128px;}
            .ui-icon-video{background-position:-224px -128px;}
            .ui-icon-script{background-position:-240px -128px;}
            .ui-icon-alert{background-position:0 -144px;}
            .ui-icon-info{background-position:-16px -144px;}
            .ui-icon-notice{background-position:-32px -144px;}
            .ui-icon-help{background-position:-48px -144px;}
            .ui-icon-check{background-position:-64px -144px;}
            .ui-icon-bullet{background-position:-80px -144px;}
            .ui-icon-radio-on{background-position:-96px -144px;}
            .ui-icon-radio-off{background-position:-112px -144px;}
            .ui-icon-pin-w{background-position:-128px -144px;}
            .ui-icon-pin-s{background-position:-144px -144px;}
            .ui-icon-play{background-position:0 -160px;}
            .ui-icon-pause{background-position:-16px -160px;}
            .ui-icon-seek-next{background-position:-32px -160px;}
            .ui-icon-seek-prev{background-position:-48px -160px;}
            .ui-icon-seek-end{background-position:-64px -160px;}
            .ui-icon-seek-start,.ui-icon-seek-first{background-position:-80px -160px;}
            .ui-icon-stop{background-position:-96px -160px;}
            .ui-icon-eject{background-position:-112px -160px;}
            .ui-icon-volume-off{background-position:-128px -160px;}
            .ui-icon-volume-on{background-position:-144px -160px;}
            .ui-icon-power{background-position:0 -176px;}
            .ui-icon-signal-diag{background-position:-16px -176px;}
            .ui-icon-signal{background-position:-32px -176px;}
            .ui-icon-battery-0{background-position:-48px -176px;}
            .ui-icon-battery-1{background-position:-64px -176px;}
            .ui-icon-battery-2{background-position:-80px -176px;}
            .ui-icon-battery-3{background-position:-96px -176px;}
            .ui-icon-circle-plus{background-position:0 -192px;}
            .ui-icon-circle-minus{background-position:-16px -192px;}
            .ui-icon-circle-close{background-position:-32px -192px;}
            .ui-icon-circle-triangle-e{background-position:-48px -192px;}
            .ui-icon-circle-triangle-s{background-position:-64px -192px;}
            .ui-icon-circle-triangle-w{background-position:-80px -192px;}
            .ui-icon-circle-triangle-n{background-position:-96px -192px;}
            .ui-icon-circle-arrow-e{background-position:-112px -192px;}
            .ui-icon-circle-arrow-s{background-position:-128px -192px;}
            .ui-icon-circle-arrow-w{background-position:-144px -192px;}
            .ui-icon-circle-arrow-n{background-position:-160px -192px;}
            .ui-icon-circle-zoomin{background-position:-176px -192px;}
            .ui-icon-circle-zoomout{background-position:-192px -192px;}
            .ui-icon-circle-check{background-position:-208px -192px;}
            .ui-icon-circlesmall-plus{background-position:0 -208px;}
            .ui-icon-circlesmall-minus{background-position:-16px -208px;}
            .ui-icon-circlesmall-close{background-position:-32px -208px;}
            .ui-icon-squaresmall-plus{background-position:-48px -208px;}
            .ui-icon-squaresmall-minus{background-position:-64px -208px;}
            .ui-icon-squaresmall-close{background-position:-80px -208px;}
            .ui-icon-grip-dotted-vertical{background-position:0 -224px;}
            .ui-icon-grip-dotted-horizontal{background-position:-16px -224px;}
            .ui-icon-grip-solid-vertical{background-position:-32px -224px;}
            .ui-icon-grip-solid-horizontal{background-position:-48px -224px;}
            .ui-icon-gripsmall-diagonal-se{background-position:-64px -224px;}
            .ui-icon-grip-diagonal-se{background-position:-80px -224px;}
            .ui-corner-all,.ui-corner-top,.ui-corner-left,.ui-corner-tl{-webkit-border-top-left-radius:4px;-moz-border-radius-topleft:4px;border-top-left-radius:4px;-khtml-border-top-left-radius:4px;}
            .ui-corner-all,.ui-corner-top,.ui-corner-right,.ui-corner-tr{-webkit-border-top-right-radius:4px;-moz-border-radius-topright:4px;border-top-right-radius:4px;-khtml-border-top-right-radius:4px;}
            .ui-corner-all,.ui-corner-bottom,.ui-corner-left,.ui-corner-bl{-webkit-border-bottom-left-radius:4px;-moz-border-radius-bottomleft:4px;border-bottom-left-radius:4px;-khtml-border-bottom-left-radius:4px;}
            .ui-corner-all,.ui-corner-bottom,.ui-corner-right,.ui-corner-br{-webkit-border-bottom-right-radius:4px;-moz-border-radius-bottomright:4px;border-bottom-right-radius:4px;-khtml-border-bottom-right-radius:4px;}
            .ui-widget-overlay{background:#aaa url(/modules/oxcom/ocbautosuggest/out/src/css/images/ui-bg_flat_0_aaaaaa_40x100.png) 50% 50% repeat-x;opacity:.3;filter:Alpha(Opacity=30);}
            .ui-widget-shadow{margin:-8px 0 0 -8px;padding:8px;-webkit-border-radius:8px;-moz-border-radius:8px;border-radius:8px;background:#aaa url(/modules/oxcom/ocbautosuggest/out/src/css/images/ui-bg_flat_0_aaaaaa_40x100.png) 50% 50% repeat-x;opacity:.3;filter:Alpha(Opacity=30);-khtml-border-radius:8px;}
            ul.ui-autocomplete{z-index:1000!important;list-style:none!important;font-size:14px!important;}
            ul.ui-autocomplete a{font-size:14px!important;}
            ul.ui-autocomplete li{list-style:none;}
            ul.ui-autocomplete span{margin-left:5px;}
            .ui-autocomplete .ui-autocomplete-category{display:none;clear:both;padding:0 0 4px 5px;color:#333;font-weight:700;}
            .ui-autocomplete .ui-menu-item a{display:block;overflow:hidden;padding:5px;line-height:2em;}
            .ui-autocomplete .ui-menu-item a:hover,.ui-menu .ui-menu-item a.ui-state-active,.ui-menu .ui-menu-item a.ui-state-focus{border:1px solid transparent;background:#f2f2f2!important;cursor:pointer;}
        </style>
    [{/strip}][{/capture}]
[{/if}]