<?php

/**
 * This file is part of a OXID Cookbook project
 *
 * Version:    1.0
 * Author:     Joscha Krug <krug@marmalade.de>
 * Author URI: http://oxid-kochbuch.de
 */

/**
 * Metadata version
 */
$sMetadataVersion = '1.1';

/**
 * Module information
 */
$aModule = array(
    'id'           => 'ocb_autosuggestion',
    'title'        => 'OXID Cookbook :: Autosuggestion',
    'description'  => 'Add a autosuggestion to your search.<br>Diese Modulversion wurde fuer das eComStyle.de Responsive Theme angepasst.',
    'thumbnail'    => 'cookbook.jpg',
    'version'      => '1.1',
    'author'       => 'Joscha Krug',
    'url'          => 'http://www.oxid-kochbuch.de',
    'email'        => 'krug@marmalade.de',
    'extend'       => array(
    ),
    'files'       => array(
        'ocb_autosuggest'   => 'ocb_autosuggestion/controllers/ocb_autosuggest.php',
    ),
    'blocks' => array(
        array( 
            'template'  => 'widget/header/search.tpl', 'block' => 'widget_header_search_form', 'file' => '/views/blocks/autosuggest.tpl'
        ),
    ),
    'settings' => array(
        array('group' => 'ocb_main', 'name' => 'ocb_autosuggest_title', 'type' => 'str',  'position' => 1, 'value' => 'Vorschl&auml;ge:'),
        array('group' => 'ocb_main', 'name' => 'ocb_autosuggest_css', 'type' => 'bool',  'position' => 2, 'value' => 'false'),
    ),
);