core = 7.x
api = 2


; Directory structure
; -------------------
defaults[projects][subdir] = 'contrib'


;;;;
;;;; CORE
;;;;

projects[drupal][type] = core
projects[drupal][version] = 7.38


;;;;
;;;; CONTRIB
;;;;

;;;
;;; UI
;;;

projects[breakpoints][version] = "1.3"
projects[breakpoints][type] = "module"

projects[colorbox][version] = "2.x-dev"
projects[colorbox][type] = "module"

;;;;
;;;; Caching
;;;;

projects[expire][version] = 2.0-rc3
projects[expire][subdir] = contrib

projects[memcache][version] = 1.2
projects[memcache][subdir] = contrib

projects[akamai][version] = 2.2
projects[akamai][subdir] = contrib

;;;
;;; Analytics
;;;

projects[google_analytics][version] = 1.2
projects[google_analytics][subdir] = contrib


;;;
;;; Configuration Management
;;;

projects[features][version] = "2.2"
projects[features][subdir] = "contrib"


projects[features_extra][version] = 1.0-beta1
projects[features_extra][subdir] = contrib


projects[strongarm][version] = "2.0"
projects[strongarm][type] = "module"
projects[strongarm][subdir] = "contrib"


;;;
;;; Developer Tools
;;;

projects[behatrunner][version] = "1.x-dev"
projects[behatrunner][type] = "module"
projects[behatrunner][subdir] = "contrib"
projects[behatrunner][download][type] = "git"
projects[behatrunner][download][revision] = "3d74d9b"
projects[behatrunner][download][branch] = "7.x"
; Remove PHP memory_limit ini_set on hook_install as it causes failures
; http://drupal.org/node/2360825
projects[behatrunner][patch][2360825] = "http://drupal.org/files/issues/behatrunner-memory_limit-0.patch"

projects[composer_manager][version] = "1.7"
projects[composer_manager][type] = "module"
projects[composer_manager][subdir] = "contrib"

projects[devel][version] = "1.3"
projects[devel][type] = "module"
projects[devel][subdir] = "contrib"

projects[diff][version] = "3.2"
projects[diff][type] = "module"
projects[diff][subdir] = "contrib"

;;;
;;; Administration Tools
;;;

projects[escape_admin][version] = "1.x-dev"
projects[escape_admin][type] = "module"
projects[escape_admin][subdir] = "contrib"
projects[escape_admin][download][type] = "git"
projects[escape_admin][download][revision] = "ecd3f58"
projects[escape_admin][download][branch] = "7.x-1.x"

projects[context_admin][version] = "1.x-dev"
projects[context_admin][type] = "module"
projects[context_admin][subdir] = "contrib"
projects[context_admin][download][type] = "git"
projects[context_admin][download][revision] = "15a8390"
projects[context_admin][download][branch] = "7.x-1.x"

projects[module_filter][version] = "2.0-alpha2"
projects[module_filter][type] = "module"
projects[module_filter][subdir] = "contrib"

projects[navbar][version] = "1.x-dev"
projects[navbar][type] = "module"
projects[navbar][subdir] = "contrib"
projects[navbar][download][type] = "git"
projects[navbar][download][revision] = "bd3389b"
projects[navbar][download][branch] = "7.x-1.x"
; Menu icons for contrib modules
; http://drupal.org/node/1954912
projects[navbar][patch][1954912] = "http://drupal.org/files/issues/navbar-contrib-icons-1954912-20.patch"
; JSON Error caused in Views when navbar.tableheader is not loaded
; http://drupal.org/node/2263205
projects[navbar][patch][2263205] = "http://drupal.org/files/issues/navbar-tableheader-views.patch"


;;;
;;; Content Creation tools
;;;

projects[better_formats][version] = "1.0-beta1"
projects[better_formats][type] = "module"
projects[better_formats][subdir] = "contrib"

projects[form_builder][version] = "1.6"
projects[form_builder][type] = "module"
projects[form_builder][subdir] = "contrib"

projects[ckeditor][version] = "1.x-dev"
projects[ckeditor][type] = "module"
projects[ckeditor][subdir] = "contrib"
projects[ckeditor][download][type] = "git"
projects[ckeditor][download][revision] = "b0de255"
projects[ckeditor][download][branch] = "7.x-1.x"
; CKEditor accomodate latest Media changes
; http://drupal.org/node/2159403
projects[ckeditor][patch][2159403] = "http://drupal.org/files/issues/make_ckeditor_plugin-2159403-107.patch"

libraries[ckeditor][download][type] = "get"
libraries[ckeditor][download][url] = "http://download.cksource.com/CKEditor%20for%20Drupal/edit/ckeditor_4.4.3_edit.zip"
; Add a style to the CKEditor skin that shows astrisks next to required fields.
libraries[ckeditor][patch][2377763] = https://www.drupal.org/files/issues/ckeditor-asterisk-for-required-fields.patch

libraries[widget][download][type] = get
libraries[widget][download][url] = http://download.ckeditor.com/widget/releases/widget_4.4.5.zip
libraries[widget][subdir] = "ckeditor/plugins"

libraries[lineutils][download][type] = get
libraries[lineutils][download][url] = http://download.ckeditor.com/lineutils/releases/lineutils_4.4.5.zip
libraries[lineutils][subdir] = "ckeditor/plugins"

libraries[image2][download][type] = get
libraries[image2][download][url] = http://download.ckeditor.com/image2/releases/image2_4.4.5.zip
libraries[image2][subdir] = "ckeditor/plugins"
; Make the image alt-text a required field.
libraries[image2][patch][2377721] = https://www.drupal.org/files/issues/make-ckeditor-image2-alt-text-required.patch

projects[field_group][version] = "1.x-dev"
projects[field_group][type] = "module"
projects[field_group][subdir] = "contrib"
projects[field_group][download][type] = "git"
projects[field_group][download][revision] = "9cdde2b"
projects[field_group][download][branch] = "7.x-1.x"

projects[quickedit][version] = "1.x-dev"
projects[quickedit][type] = "module"
projects[quickedit][subdir] = "contrib"
projects[quickedit][download][type] = "git"
projects[quickedit][download][revision] = "28a314d"
projects[quickedit][download][branch] = "7.x-1.x"

projects[quickedit_tab][version] = 1.1
projects[quickedit_tab][type] = "module"
projects[quickedit_tab][subdir] = "contrib"

projects[responsive_preview][version] = "1.x-dev"
projects[responsive_preview][type] = "module"
projects[responsive_preview][subdir] = "contrib"
projects[responsive_preview][download][type] = "git"
projects[responsive_preview][download][revision] = "d741779"
projects[responsive_preview][download][branch] = "7.x-1.x"
; Before js processing, the phone image incorrectly positioned.
; https://drupal.org/node/2276789
projects[responsive_preview][patch][2276789] = "http://drupal.org/files/issues/responsive_preview-phone_image_incorrectly_positioned-2276789-2.patch"

projects[content_experiments][version] = 1.4
projects[content_experiments][subdir] = contrib

;;;
;;; Entity
;;;

projects[bean][version] = "1.x-dev"
projects[bean][type] = "module"
projects[bean][subdir] = "contrib"
projects[bean][download][type] = "git"
projects[bean][download][revision] = "2d0f262"
projects[bean][download][branch] = "7.x-1.x"

projects[bean_tax][version] = "2.3"
projects[bean_tax][type] = "module"
projects[bean_tax][subdir] = "contrib"

projects[entity][version] = "1.x-dev"
projects[entity][type] = "module"
projects[entity][subdir] = "contrib"
projects[entity][download][type] = "git"
projects[entity][download][revision] = "4d2cc6f"
projects[entity][download][branch] = "7.x-1.x"

projects[entityreference][version] = "1.x-dev"
projects[entityreference][type] = "module"
projects[entityreference][subdir] = "contrib"
projects[entityreference][download][type] = "git"
projects[entityreference][download][revision] = "dc4196b"
projects[entityreference][download][branch] = "7.x-1.x"

projects[entityreference_prepopulate][version] = "1.5"
projects[entityreference_prepopulate][type] = "module"
projects[entityreference_prepopulate][subdir] = "contrib"

projects[file_entity][version] = "2.x-dev"
projects[file_entity][type] = "module"
projects[file_entity][subdir] = "contrib"
projects[file_entity][download][type] = "git"
projects[file_entity][download][revision] = "609fa9f"
projects[file_entity][download][branch] = "7.x-2.x"

projects[file_entity_link][version] = "1.0-alpha3"
projects[file_entity_link][type] = "module"
projects[file_entity_link][subdir] = "contrib"



;;;
;;; Utilities
;;;


projects[ctools][version] = 1.7
projects[ctools][type] = "module"
projects[ctools][subdir] = "contrib"

projects[date][version] = "2.8"
projects[date][type] = "module"
projects[date][subdir] = "contrib"

projects[jquery_update][version] = "2.4"
projects[jquery_update][type] = "module"
projects[jquery_update][subdir] = "contrib"

projects[libraries][version] = "2.2"
projects[libraries][type] = "module"
projects[libraries][subdir] = "contrib"

projects[pathauto][version] = "1.2"
projects[pathauto][type] = "module"
projects[pathauto][subdir] = "contrib"

projects[metatag][version] = 1.4
projects[metatag][type] = "module"
projects[metatag][subdir] = "contrib"
projects[metatag][patch][2044621] = https://www.drupal.org/files/issues/unset_empties-2044621-12.patch

projects[token][version] = "1.5"
projects[token][type] = "module"
projects[token][subdir] = "contrib"

projects[rules][version] = "2.7"
projects[rules][type] = "module"
projects[rules][subdir] = "contrib"

projects[plupload][version] = "1.6"
projects[plupload][type] = "module"
projects[plupload][subdir] = "contrib"

projects[xautoload][version] = "4.5"
projects[xautoload][type] = "module"
projects[xautoload][subdir] = "contrib"

projects[scheduler][version] = 1.2
projects[scheduler][subdir] = contrib

;;;
;;; Media
;;;

projects[media][version] = "2.x-dev"
projects[media][type] = "module"
projects[media][subdir] = "contrib"
; Media dialog appears underneath the Ctools modal dialog with latest jQuery UI
; http://drupal.org/node/2272567
projects[media][patch][2272567] = http://www.drupal.org/files/issues/media-dialog-zindex-2272567-1.patch

projects[media_youtube][version] = "2.x-dev"
projects[media_youtube][type] = "module"
projects[media_youtube][subdir] = "contrib"

projects[youtube][version] = 1.2
projects[youtube][type] = module
projects[youtube][subdir] = contrib

;;;
;;; Node clone
;;;

projects[node_clone][version] = 1.0-rc2
projects[node_clone][subdir] = contrib

projects[node_clone_tab][version] = 1.1
projects[node_clone_tab][subdir] = contrib

;;;
;;; Panels
;;;

projects[fieldable_panels_panes][version] = "1.x-dev"
projects[fieldable_panels_panes][type] = "module"
projects[fieldable_panels_panes][subdir] = "contrib"

projects[panelizer][version] = "3.x-dev"
projects[panelizer][subdir] = "contrib"

projects[panels][version] = "3.x-dev"
projects[panels][type] = "module"
projects[panels][subdir] = "contrib"
; Add support for defining styles per panels pane subtype.
; https://www.drupal.org/node/2320045
projects[panels][patch][2320045] = https://www.drupal.org/files/issues/panels-style-plugin-type-subtype-2320045-10.patch

projects[panopoly_magic][version] = "1.x-dev"
projects[panopoly_magic][type] = "module"
projects[panopoly_magic][subdir] = "contrib"

projects[panopoly_theme][version] = "1.x-dev"
projects[panopoly_theme][type] = "module"
projects[panopoly_theme][subdir] = "contrib"
; Remove makefile from Panopoly Theme
; http://drupal.org/node/1904766
projects[panopoly_theme][patch][1904766] = "http://drupal.org/files/issues/panopoly_theme-makefile-free-1904766-13.patch"


;;;
;;; Views
;;;

projects[views][version] = "3.11"
projects[views][type] = "module"
projects[views][subdir] = "contrib"
projects[views][download][branch] = "7.x-3.x"

projects[views_arg_cache][version] = 1.0-beta3
projects[views_arg_cache][subdir] = contrib

projects[views_autocomplete_filters][version] = 1.0-beta2
projects[views_autocomplete_filters][type] = "module"
projects[views_autocomplete_filters][subdir] = "contrib"

projects[views_field_view][version] = "1.x-dev"
projects[views_field_view][type] = "module"
projects[views_field_view][subdir] = "contrib"
projects[views_field_view][download][type] = "git"
projects[views_field_view][download][revision] = db93080
projects[views_field_view][download][branch] = "7.x-1.x"

projects[views_bulk_operations][version] = 3.2
projects[views_bulk_operations][type] = "module"
projects[views_bulk_operations][subdir] = "contrib"

projects[views_load_more][version] = 1.1
projects[views_load_more][type] = "module"
projects[views_load_more][subdir] = "contrib"

projects[views_infinite_scroll][version] = "1.1"
projects[views_infinite_scroll][type] = "module"
projects[views_infinite_scroll][subdir] = "contrib"

;;;
;;; Webform
;;;


projects[webform][version] = 4.0-rc5
projects[webform][type] = "module"
projects[webform][subdir] = "contrib"

; Override lightning's version of Webform, as it is very old.
; See http://ticketing.whitehouse.gov/browse/WHR-484
; Patch which provides functional fixes and performance improvements for submission
; downloads. This patch has been merged into 7.x-4.x.
projects[webform][version] = 4.7
projects[webform][type] = "module"
projects[webform][subdir] = "contrib"
projects[webform][patch][] = https://www.drupal.org/files/issues/webform-report_optimization-2465291-30.patch

projects[webform_ajax][version] = 1.x-dev
projects[webform_ajax][type] = module
projects[webform_ajax][subdir] = contrib
projects[webform_ajax][download][type] = git
projects[webform_ajax][download][revision] = e353f19
projects[webform_ajax][download][branch] = 7.x-1.x


;;;
;;; Workbench
;;;

projects[workbench][version] = "1.x-dev"
projects[workbench][type] = "module"
projects[workbench][subdir] = "contrib"
projects[workbench][download][type] = "git"
projects[workbench][download][revision] = "6856e4a"
projects[workbench][download][branch] = "7.x-1.x"

projects[workbench_moderation][version] = "1.x-dev"
projects[workbench_moderation][type] = "module"
projects[workbench_moderation][subdir] = "contrib"
projects[workbench_moderation][download][type] = "git"
projects[workbench_moderation][download][revision] = "b38ac3e"
projects[workbench_moderation][download][branch] = "7.x-1.x"
; Panelizer is incompatible with moderation
; http://www.drupal.org/node/1402860
projects[workbench_moderation][patch][1402860] = http://drupal.org/files/issues/workbench_moderation-panelizer_revisions-1402860-44_0.patch
projects[workbench_moderation][patch][1244364] = https://www.drupal.org/files/issues/state-values-1244364-4.patch
projects[workbench_moderation][patch][1601036] = https://www.drupal.org/files/issues/workbench_moderation-left_join_nid-1601036-9.patch

projects[workbench_moderation_buttons][version] = "1.x-dev"
projects[workbench_moderation_buttons][type] = "module"
projects[workbench_moderation_buttons][subdir] = "contrib"
projects[workbench_moderation_buttons][download][type] = "git"
projects[workbench_moderation_buttons][download][revision] = 5ee2a30
projects[workbench_moderation_buttons][download][branch] = "7.x-1.x"
; Remove Current State button, change Save button to show current state value
; http://drupal.org/node/2338863
projects[workbench_moderation_buttons][patch][2338863] = http://drupal.org/files/issues/workbench-moderation-buttons-2338863-4.patch

projects[workbench_moderation_notes][version] = "1.x-dev"
projects[workbench_moderation_notes][type] = "module"
projects[workbench_moderation_notes][subdir] = "contrib"
projects[workbench_moderation_notes][download][type] = "git"
projects[workbench_moderation_notes][download][revision] = "8e5e6f4"
projects[workbench_moderation_notes][download][branch] = "7.x-1.x"

;;;
;;; UNSORTED
;;;

projects[collections][version] = "1.x-dev"
projects[collections][type] = "module"
projects[collections][subdir] = "contrib"
projects[collections][download][type] = "git"
projects[collections][download][revision] = "b4e8212"
projects[collections][download][branch] = "7.x-1.x"

projects[fape][version] = "1.2"
projects[fape][type] = "module"
projects[fape][subdir] = "contrib"

projects[link][version] = "1.2"
projects[link][type] = "module"
projects[link][subdir] = "contrib"

projects[magic_beans][version] = "1.x-dev"
projects[magic_beans][type] = "module"
projects[magic_beans][subdir] = "contrib"

projects[file_image_formatters][version] = "1.1"
projects[file_image_formatters][type] = "module"
projects[file_image_formatters][subdir] = "contrib"

projects[focal_point][version] = "1.0-beta1"
projects[focal_point][type] = "module"
projects[focal_point][subdir] = "contrib"

projects[simple_gmap][version] = "1.2"
projects[simple_gmap][type] = "module"
projects[simple_gmap][subdir] = "contrib"

projects[content_menu][version] = 1.0
projects[content_menu][subdir] = contrib

projects[fontawesome][version] = 2.1
projects[fontawesome][subdir] = contrib

projects[nodequeue][version] = 2.0-beta1
projects[nodequeue][subdir] = contrib

projects[strict404][revision] = a6747912389b4a7bb02ad9767b2b1585ce583afa
projects[strict404][subdir] = contrib

projects[twitter_pane][type] = module
projects[twitter_pane][download][type] = git
projects[twitter_pane][download][url] = http://git.drupal.org/sandbox/jaykali/2260089.git
projects[twitter_pane][download][revision] = d157902b1e6278e1f95e418cba9dcd3862ccc464


projects[menu_attributes][version] = 1.x-dev
projects[menu_attributes][type] = module
projects[menu_attributes][subdir] = contrib
projects[menu_attributes][download][type] = git
projects[menu_attributes][download][revision] = eb17163
projects[menu_attributes][download][branch] = 7.x-1.x

projects[menu_block][version] = 2.4
projects[menu_block][subdir] = contrib

projects[pm_existing_pages][version] = 1.4
projects[pm_existing_pages][type] = module
projects[pm_existing_pages][subdir] = contrib

projects[imce][version] = 1.9
projects[imce][subdir] = contrib

projects[imce_mkdir][version] = 1.0
projects[imce_mkdir][subdir] = contrib

projects[imce_uploader][version] = 1.3
projects[imce_uploader][subdir] = contrib

projects[filefield_sources][version] = 1.9
projects[filefield_sources][subdir] = contrib

projects[colorfield][version] = 1.1
projects[colorfield][subdir] = contrib

projects[path_breadcrumbs][version] = 3.2
projects[path_breadcrumbs][subdir] = contrib

projects[auto_nodetitle][version] = 1.0
projects[auto_nodetitle][type] = module
projects[auto_nodetitle][subdir] = contrib
projects[auto_nodetitle][patch][1197278] = https://www.drupal.org/files/1197278.patch

; This patched version of the module uses facebooks Share Dialog, instead of the exisiting, deprecated, sharer.php API.
; https://www.drupal.org/node/2309285
projects[social_share][type] = module
projects[social_share][download][type] = git
projects[social_share][download][url] = https://github.com/whitehouse/social_share.git
projects[social_share][download][branch] = 7.x-2.x
projects[social_share][download][revision] = a99b38b028


; Menu Position
;
; This patch refreshes the menu so that the current page shows up in the breadcrumbs.
;
projects[menu_position][version] = 1.1
projects[menu_position][subdir] = contrib
projects[menu_position][patch][1461384] = https://www.drupal.org/files/menu_position-special_menu_items-1461384-16.patch

projects[clientside_validation][version] = 1.41
projects[clientside_validation][subdir] = contrib

projects[lightning_features][download][type] = git
projects[lightning_features][download][url] = https://github.com/bryanhirsch/lightning_features.git
projects[lightning_features][download][branch] = whr
projects[lightning_features][download][revision] = f0c573e
projects[lightning_features][subdir] = contrib

;;;;
;;;; THEMES
;;;;

projects[zen][type] = theme
projects[zen][download][type] = git
projects[zen][download][branch] = 7.x-5.5

projects[ember][version] = 2.x-dev
projects[ember][type] = theme
projects[ember][subdir] = contrib
projects[ember][download][type] = git
projects[ember][download][branch] = 7.x-2.x
projects[ember][download][revision] = d916be4
projects[ember][patch][] = "https://www.drupal.org/files/issues/2416125-4-untargeted-selector--dev.patch"

projects[ember_support][version] = "1.x-dev"
projects[ember_support][type] = "module"
projects[ember_support][subdir] = "contrib"
projects[ember_support][download][type] = "git"
projects[ember_support][download][branch] = "7.x-1.x"
projects[ember_support][download][revision] = ca3c084

;;;
;;; Redirect
;;;

projects[redirect][version] = 1.0-rc1
projects[redirect][subdir] = contrib

;;;;
;;;; LIBRARIES
;;;;

; Libraries
;----------

libraries[superfish][download][type] = get
libraries[superfish][download][url] = https://github.com/joeldbirch/superfish/archive/1.7.4.zip

libraries[jquery-miniColors][download][type] = get
libraries[jquery-miniColors][download][url] = https://github.com/claviska/jquery-minicolors/archive/2.1.10.zip

libraries[backbone][download][type] = "get"
libraries[backbone][download][url] = "https://github.com/jashkenas/backbone/archive/1.1.0.zip"

libraries[colorbox][download][type] = "get"
libraries[colorbox][download][url] = https://github.com/jackmoore/colorbox/archive/1.5.13.zip

libraries[jsonpath][download][type] = "get"
libraries[jsonpath][download][url] = "https://jsonpath.googlecode.com/files/jsonpath-0.8.1.php"

libraries[modernizr][download][type] = "get"
libraries[modernizr][download][url] = "https://github.com/Modernizr/Modernizr/archive/v2.7.1.zip"

libraries[plupload][download][type] = "get"
libraries[plupload][download][url] = "https://github.com/moxiecode/plupload/archive/v1.5.8.zip"
; Remove plupload library examples folder for Drupal distribution
; http://drupal.org/node/1903850
libraries[plupload][patch][1903850] = "http://drupal.org/files/issues/plupload-1_5_8-rm_examples-1903850-16.patch"

libraries[underscore][download][type] = "get"
libraries[underscore][download][url] = "https://github.com/jashkenas/underscore/archive/1.5.2.zip"

libraries[autopager][download][type] = "file"
libraries[autopager][download][url] = "http://jquery-autopager.googlecode.com/files/jquery.autopager-1.0.0.js"
