<?php
/**
 * @file
 * hero_feature.features.inc
 */

/**
 * Implements hook_ctools_plugin_api().
 */
function hero_feature_ctools_plugin_api($module = NULL, $api = NULL) {
  if ($module == "field_group" && $api == "field_group") {
    return array("version" => "1");
  }
  if ($module == "strongarm" && $api == "strongarm") {
    return array("version" => "1");
  }
}

/**
 * Implements hook_node_info().
 */
function hero_feature_node_info() {
  $items = array(
    'hero' => array(
      'name' => t('Hero'),
      'base' => 'node_content',
      'description' => t('Use a <em>hero</em> to add an image and associated text to the top of a hero page.'),
      'has_title' => '1',
      'title_label' => t('Administrative Title'),
      'help' => '',
    ),
  );
  drupal_alter('node_info', $items);
  return $items;
}
