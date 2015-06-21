<?php
/**
 * @file
 * Returns the HTML for a Hero node.
 *
 * NOTE: Due to the specificity of the direction given in this template
 * override, modifying this node type's "Manage Display" page will not have any
 * administrative effect.
 *
 * Complete documentation for this file is available online.
 * @see https://drupal.org/node/1728164
 */
?>
<article class="node-<?php print $node->nid; ?> <?php print $classes; ?> clearfix"<?php print $attributes; ?>>
  <div class="wrapper hero-wrapper clearfix">

    <div class="wrapper image-wrapper">
      <div id="field-hero-image" class="field <?php print $variables['hero_user_defined']['hero_image_class'];?>"
        <?php if(!empty($variables['hero_user_defined']['hero_image_style_string'])):
          print " " . $variables['hero_user_defined']['hero_image_style_string'];
          endif; ?>
        >
        <?php print render($content['field_hero_bg_image']); ?>
      </div>

      <?php if (isset($content['field_hero_youtube'])): ?>
        <div class="wrapper wrapper-outer wrapper-video-outer">
          <div class="wrapper wrapper-inner wrapper-video">
            <div id="field-hero-youtube" class="field field-youtube field-hero-youtube">
              <?php print render($content['field_hero_youtube']); ?>
            </div>
          </div>
        </div>
      <?php endif; ?>

    </div>

    <div class="wrapper wrapper-outer wrapper-caption-outer">
      <div class="wrapper wrapper-inner wrapper-caption">
        <div id="hero-caption" class="hero-content-box hero-caption
        <?php
          print $variables['hero_user_defined']['hero_caption_position_class']
          . $variables['hero_user_defined']['hero_caption_background_class'];
        ?>"
        <?php if((!empty($variables['hero_user_defined']['hero_caption_style_string'])) && (!isset($content['field_hero_youtube']))):
          print " " . $variables['hero_user_defined']['hero_caption_style_string'];
          endif; ?>
        >
        <?php print render($content['field_hero_content_box']); ?>
        <div class="caption-background"
          <?php if(!empty($variables['hero_user_defined']['hero_caption_bg_style_string'])):
            print " " . $variables['hero_user_defined']['hero_caption_bg_style_string'];
            endif; ?>
          >
        </div>
        </div>
      </div>
    </div>

  </div>

  <?php
    // This line adds support for inline edit links.
    print render($title_suffix);
  ?>

</article>
