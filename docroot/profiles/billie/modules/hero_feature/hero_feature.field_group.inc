<?php
/**
 * @file
 * hero_feature.field_group.inc
 */

/**
 * Implements hook_field_group_info().
 */
function hero_feature_field_group_info() {
  $export = array();

  $field_group = new stdClass();
  $field_group->disabled = FALSE; /* Edit this to true to make a default field_group disabled initially */
  $field_group->api_version = 1;
  $field_group->identifier = 'group_hero_bg_config|node|hero|form';
  $field_group->group_name = 'group_hero_bg_config';
  $field_group->entity_type = 'node';
  $field_group->bundle = 'hero';
  $field_group->mode = 'form';
  $field_group->parent_name = '';
  $field_group->data = array(
    'label' => 'Background Settings',
    'weight' => '2',
    'children' => array(
      0 => 'field_hero_bg_color',
      1 => 'field_hero_bg_image',
      2 => 'group_hero_bg_responsive',
    ),
    'format_type' => 'fieldset',
    'format_settings' => array(
      'formatter' => 'collapsible',
      'instance_settings' => array(
        'description' => '',
        'classes' => 'group-hero-bg-config field-group-fieldset ',
        'required_fields' => 1,
      ),
    ),
  );
  $export['group_hero_bg_config|node|hero|form'] = $field_group;

  $field_group = new stdClass();
  $field_group->disabled = FALSE; /* Edit this to true to make a default field_group disabled initially */
  $field_group->api_version = 1;
  $field_group->identifier = 'group_hero_bg_responsive|node|hero|form';
  $field_group->group_name = 'group_hero_bg_responsive';
  $field_group->entity_type = 'node';
  $field_group->bundle = 'hero';
  $field_group->mode = 'form';
  $field_group->parent_name = 'group_hero_bg_config';
  $field_group->data = array(
    'label' => 'Responsive Images',
    'weight' => '5',
    'children' => array(
      0 => 'field_hero_bg_image_tablet',
      1 => 'field_hero_bg_image_mobile',
    ),
    'format_type' => 'fieldset',
    'format_settings' => array(
      'label' => 'Responsive Images',
      'instance_settings' => array(
        'required_fields' => 0,
        'classes' => 'group-hero-bg-responsive field-group-fieldset ',
        'description' => '<strong>Optional</strong><br />
Define optional images based on device to reduce image artifacts.',
      ),
      'formatter' => 'collapsed',
    ),
  );
  $export['group_hero_bg_responsive|node|hero|form'] = $field_group;

  $field_group = new stdClass();
  $field_group->disabled = FALSE; /* Edit this to true to make a default field_group disabled initially */
  $field_group->api_version = 1;
  $field_group->identifier = 'group_hero_content_box_config|node|hero|form';
  $field_group->group_name = 'group_hero_content_box_config';
  $field_group->entity_type = 'node';
  $field_group->bundle = 'hero';
  $field_group->mode = 'form';
  $field_group->parent_name = '';
  $field_group->data = array(
    'label' => 'Content Box Configuration',
    'weight' => '4',
    'children' => array(
      0 => 'field_hero_content_box_bg_color',
      1 => 'field_hero_content_box_height',
      2 => 'field_hero_content_box_position',
      3 => 'field_hero_content_box_width',
      4 => 'field_hero_show_content_box_bg',
    ),
    'format_type' => 'fieldset',
    'format_settings' => array(
      'label' => 'Content Box Configuration',
      'instance_settings' => array(
        'required_fields' => 1,
        'classes' => 'group-hero-content-box-config field-group-fieldset ',
        'description' => 'Settings apply to desktop display only',
      ),
      'formatter' => 'collapsible',
    ),
  );
  $export['group_hero_content_box_config|node|hero|form'] = $field_group;

  $field_group = new stdClass();
  $field_group->disabled = FALSE; /* Edit this to true to make a default field_group disabled initially */
  $field_group->api_version = 1;
  $field_group->identifier = 'group_hero_video_config|node|hero|form';
  $field_group->group_name = 'group_hero_video_config';
  $field_group->entity_type = 'node';
  $field_group->bundle = 'hero';
  $field_group->mode = 'form';
  $field_group->parent_name = '';
  $field_group->data = array(
    'label' => 'Video Settings',
    'weight' => '3',
    'children' => array(
      0 => 'field_hero_video_autoplay',
      1 => 'field_hero_youtube',
    ),
    'format_type' => 'fieldset',
    'format_settings' => array(
      'formatter' => 'collapsible',
      'instance_settings' => array(
        'description' => '',
        'classes' => 'group-hero-video-config field-group-fieldset ',
        'required_fields' => 1,
      ),
    ),
  );
  $export['group_hero_video_config|node|hero|form'] = $field_group;

  return $export;
}
