<?php
/**
 * @file
 * hero_page_displays.panelizer.inc
 */

/**
 * Implements hook_panelizer_defaults().
 */
function hero_page_displays_panelizer_defaults() {
  $export = array();

  $panelizer = new stdClass();
  $panelizer->disabled = FALSE; /* Edit this to true to make a default panelizer disabled initially */
  $panelizer->api_version = 1;
  $panelizer->name = 'node:hero_page:default:default';
  $panelizer->title = 'Default';
  $panelizer->panelizer_type = 'node';
  $panelizer->panelizer_key = 'hero_page';
  $panelizer->no_blocks = FALSE;
  $panelizer->css_id = '';
  $panelizer->css = '';
  $panelizer->pipeline = 'ipe';
  $panelizer->contexts = array();
  $panelizer->relationships = array();
  $panelizer->access = array();
  $panelizer->view_mode = 'default';
  $panelizer->css_class = '';
  $panelizer->title_element = 'H2';
  $panelizer->link_to_entity = TRUE;
  $panelizer->extra = array();
  $display = new panels_display();
  $display->layout = 'hero-page-single-col';
  $display->layout_settings = array();
  $display->panel_settings = array(
    'style_settings' => array(
      'default' => NULL,
      'header' => NULL,
      'section_content_first' => array(
        'colorbar_color' => '#880002',
      ),
      'section_content_second' => NULL,
      'footer' => NULL,
      'section_content_third' => NULL,
    ),
    'section_content_first' => array(
      'style' => 'sixteenhundredpanels_region_colorbar',
    ),
  );
  $display->cache = array();
  $display->title = '%node:title';
  $display->uuid = '46bc5000-10d2-41ee-9bc8-805096634a4f';
  $display->content = array();
  $display->panels = array();
    $pane = new stdClass();
    $pane->pid = 'new-b88b04b8-e943-4375-a03c-e7e056811440';
    $pane->panel = 'footer';
    $pane->type = 'panels_mini';
    $pane->subtype = 'default_sitewide_footer';
    $pane->shown = TRUE;
    $pane->access = array();
    $pane->configuration = array(
      'override_title' => 0,
      'override_title_text' => '',
    );
    $pane->cache = array();
    $pane->style = array(
      'settings' => array(),
      'style' => 'sixteenhundredpanels-sitewide-footer',
    );
    $pane->css = array();
    $pane->extras = array();
    $pane->position = 0;
    $pane->locks = array();
    $pane->uuid = 'b88b04b8-e943-4375-a03c-e7e056811440';
    $display->content['new-b88b04b8-e943-4375-a03c-e7e056811440'] = $pane;
    $display->panels['footer'][0] = 'new-b88b04b8-e943-4375-a03c-e7e056811440';
    $pane = new stdClass();
    $pane->pid = 'new-eb58941e-67df-4507-860d-9016ac936ea6';
    $pane->panel = 'header';
    $pane->type = 'panels_mini';
    $pane->subtype = 'thin_header';
    $pane->shown = TRUE;
    $pane->access = array();
    $pane->configuration = array(
      'override_title' => 0,
      'override_title_text' => '',
    );
    $pane->cache = array();
    $pane->style = array(
      'settings' => NULL,
    );
    $pane->css = array();
    $pane->extras = array();
    $pane->position = 0;
    $pane->locks = array();
    $pane->uuid = 'eb58941e-67df-4507-860d-9016ac936ea6';
    $display->content['new-eb58941e-67df-4507-860d-9016ac936ea6'] = $pane;
    $display->panels['header'][0] = 'new-eb58941e-67df-4507-860d-9016ac936ea6';
    $pane = new stdClass();
    $pane->pid = 'new-6f678bdb-c6f4-450a-8cca-09cfc0e96afa';
    $pane->panel = 'header';
    $pane->type = 'panels_mini';
    $pane->subtype = 'system_stuff';
    $pane->shown = TRUE;
    $pane->access = array();
    $pane->configuration = array(
      'override_title' => 0,
      'override_title_text' => '',
    );
    $pane->cache = array();
    $pane->style = array(
      'settings' => NULL,
    );
    $pane->css = array();
    $pane->extras = array();
    $pane->position = 1;
    $pane->locks = array();
    $pane->uuid = '6f678bdb-c6f4-450a-8cca-09cfc0e96afa';
    $display->content['new-6f678bdb-c6f4-450a-8cca-09cfc0e96afa'] = $pane;
    $display->panels['header'][1] = 'new-6f678bdb-c6f4-450a-8cca-09cfc0e96afa';
    $pane = new stdClass();
    $pane->pid = 'new-7ffe4c8d-1b1c-4057-a19f-f4a91e6f9f16';
    $pane->panel = 'header';
    $pane->type = 'entity_field';
    $pane->subtype = 'node:field_hero_queue';
    $pane->shown = TRUE;
    $pane->access = array();
    $pane->configuration = array(
      'label' => 'hidden',
      'formatter' => 'entityreference_entity_view',
      'delta_limit' => '1',
      'delta_offset' => '0',
      'delta_reversed' => 0,
      'formatter_settings' => array(
        'view_mode' => 'default',
        'links' => 0,
      ),
      'context' => array(),
      'override_title' => 0,
      'override_title_text' => '',
    );
    $pane->cache = array();
    $pane->style = array(
      'settings' => NULL,
    );
    $pane->css = array();
    $pane->extras = array();
    $pane->position = 2;
    $pane->locks = array();
    $pane->uuid = '7ffe4c8d-1b1c-4057-a19f-f4a91e6f9f16';
    $display->content['new-7ffe4c8d-1b1c-4057-a19f-f4a91e6f9f16'] = $pane;
    $display->panels['header'][2] = 'new-7ffe4c8d-1b1c-4057-a19f-f4a91e6f9f16';
  $display->hide_title = PANELS_TITLE_NONE;
  $display->title_pane = '0';
  $panelizer->display = $display;
  $export['node:hero_page:default:default'] = $panelizer;

  return $export;
}
