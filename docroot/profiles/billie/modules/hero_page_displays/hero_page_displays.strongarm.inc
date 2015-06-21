<?php
/**
 * @file
 * hero_page_displays.strongarm.inc
 */

/**
 * Implements hook_strongarm().
 */
function hero_page_displays_strongarm() {
  $export = array();

  $strongarm = new stdClass();
  $strongarm->disabled = FALSE; /* Edit this to true to make a default strongarm disabled initially */
  $strongarm->api_version = 1;
  $strongarm->name = 'panelizer_defaults_node_hero_page';
  $strongarm->value = array(
    'status' => 1,
    'view modes' => array(
      'page_manager' => array(
        'status' => 0,
        'default' => 0,
        'choice' => 0,
      ),
      'default' => array(
        'status' => 1,
        'default' => 1,
        'choice' => 1,
      ),
      'teaser' => array(
        'status' => 0,
        'default' => 0,
        'choice' => 0,
      ),
      'featured' => array(
        'status' => 0,
        'default' => 0,
        'choice' => 0,
      ),
    ),
  );
  $export['panelizer_defaults_node_hero_page'] = $strongarm;

  $strongarm = new stdClass();
  $strongarm->disabled = FALSE; /* Edit this to true to make a default strongarm disabled initially */
  $strongarm->api_version = 1;
  $strongarm->name = 'panelizer_node:hero_page:default_selection';
  $strongarm->value = 'node:hero_page:default:default';
  $export['panelizer_node:hero_page:default_selection'] = $strongarm;

  $strongarm = new stdClass();
  $strongarm->disabled = FALSE; /* Edit this to true to make a default strongarm disabled initially */
  $strongarm->api_version = 1;
  $strongarm->name = 'panelizer_node:hero_page_allowed_layouts';
  $strongarm->value = 'O:22:"panels_allowed_layouts":4:{s:9:"allow_new";b:1;s:11:"module_name";s:24:"panelizer_node:hero_page";s:23:"allowed_layout_settings";a:51:{s:8:"flexible";b:1;s:27:"demonstratie_layout_stagger";b:1;s:34:"demonstratie_layout_split_features";b:1;s:26:"demonstratie_layout_single";b:1;s:27:"demonstratie_layout_landing";b:1;s:29:"demonstratie_layout_full_side";b:1;s:14:"twocol_stacked";b:1;s:13:"twocol_bricks";b:1;s:6:"twocol";b:1;s:25:"threecol_33_34_33_stacked";b:1;s:17:"threecol_33_34_33";b:1;s:25:"threecol_25_50_25_stacked";b:1;s:17:"threecol_25_50_25";b:1;s:6:"onecol";b:1;s:6:"whelan";b:1;s:12:"webb_flipped";b:1;s:4:"webb";b:1;s:14:"taylor_flipped";b:1;s:6:"taylor";b:1;s:12:"sutro_double";b:1;s:5:"sutro";b:1;s:13:"selby_flipped";b:1;s:5:"selby";b:1;s:17:"sanderson_flipped";b:1;s:9:"sanderson";b:1;s:5:"rolph";b:1;s:4:"pond";b:1;s:6:"phelan";b:1;s:15:"moscone_flipped";b:1;s:7:"moscone";b:1;s:8:"mccoppin";b:1;s:15:"hewston_flipped";b:1;s:7:"hewston";b:1;s:6:"harris";b:1;s:5:"geary";b:1;s:12:"burr_flipped";b:1;s:4:"burr";b:1;s:22:"bryant_flipped_flipped";b:1;s:6:"bryant";b:1;s:5:"brown";b:1;s:15:"brenham_flipped";b:1;s:7:"brenham";b:1;s:6:"boxton";b:1;s:16:"bartlett_flipped";b:1;s:8:"bartlett";b:1;s:13:"twocolcontent";b:1;s:15:"threecolcontent";b:1;s:29:"livestream-single-content-col";b:1;s:17:"header-mini-panel";b:1;s:24:"basic-single-content-col";b:1;s:14:"zen_no_wrapper";b:1;}s:10:"form_state";N;}';
  $export['panelizer_node:hero_page_allowed_layouts'] = $strongarm;

  $strongarm = new stdClass();
  $strongarm->disabled = FALSE; /* Edit this to true to make a default strongarm disabled initially */
  $strongarm->api_version = 1;
  $strongarm->name = 'panelizer_node:hero_page_allowed_layouts_default';
  $strongarm->value = 0;
  $export['panelizer_node:hero_page_allowed_layouts_default'] = $strongarm;

  $strongarm = new stdClass();
  $strongarm->disabled = FALSE; /* Edit this to true to make a default strongarm disabled initially */
  $strongarm->api_version = 1;
  $strongarm->name = 'panelizer_node:hero_page_allowed_types_default';
  $strongarm->value = 0;
  $export['panelizer_node:hero_page_allowed_types_default'] = $strongarm;

  $strongarm = new stdClass();
  $strongarm->disabled = FALSE; /* Edit this to true to make a default strongarm disabled initially */
  $strongarm->api_version = 1;
  $strongarm->name = 'panelizer_node:hero_page_default';
  $strongarm->value = array(
    'context_admin' => 'context_admin',
    'token' => 'token',
    'entity_form_field' => 'entity_form_field',
    'entity_field' => 'entity_field',
    'entity_field_extra' => 'entity_field_extra',
    'custom' => 'custom',
    'block' => 'block',
    'entity_view' => 'entity_view',
    'fieldable_panels_pane' => 'fieldable_panels_pane',
    'menu_tree' => 'menu_tree',
    'panels_mini' => 'panels_mini',
    'views' => 'views',
    'views_panes' => 'views_panes',
    'other' => 'other',
  );
  $export['panelizer_node:hero_page_default'] = $strongarm;

  return $export;
}
