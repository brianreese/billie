<?php
/**
 * @file
 * hero_page.features.inc
 */

/**
 * Implements hook_ctools_plugin_api().
 */
function hero_page_ctools_plugin_api($module = NULL, $api = NULL) {
  if ($module == "strongarm" && $api == "strongarm") {
    return array("version" => "1");
  }
}

/**
 * Implements hook_node_info().
 */
function hero_page_node_info() {
  $items = array(
    'hero_page' => array(
      'name' => t('Hero Page'),
      'base' => 'node_content',
      'description' => t('A page designed for a full-width hero and content embedded in the rows below.'),
      'has_title' => '1',
      'title_label' => t('Title'),
      'help' => '',
    ),
  );
  drupal_alter('node_info', $items);
  return $items;
}
