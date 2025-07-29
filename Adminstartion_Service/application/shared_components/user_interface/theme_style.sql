prompt --application/shared_components/user_interface/theme_style
begin
--   Manifest
--     THEME STYLE: 2000007
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>3780766536418114
,p_default_application_id=>2000007
,p_default_id_offset=>0
,p_default_owner=>'XXSBS'
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(4523972341155620)
,p_theme_id=>42
,p_name=>'SoftsuiteCSS'
,p_is_public=>true
,p_is_accessible=>true
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita.less'
,p_theme_roller_config=>'{"customCSS":"\n.t-HeroRegion-icon{\n       background-color: #0572CE;\n}\n\n.t-Region-title{\n   background-color: #0572CE;\n}\n.t-Region-header\n{\n    background-color: #0572CE;\n   color : #fff;\n}","vars":{"@g_Focus":"#a1c3df","@l_Left-Col-BG":"'
||'#f8f8f8","@g_Body-Title-BG":"#0573ce","@g_Body-BG":"#0573ce","@g_Actions-Col-BG":"#0573ce","@g_Region-Header-BG":"#0573ce","@g_Region-BG":"#0573ce","@g_Accent-OG":"#0573ce","@g_Form-Item-BG":"#0573ce","@g_Region-Header-FG":"#0573ce"}}'
,p_theme_roller_output_file_url=>'#THEME_DB_IMAGES#4523972341155620.css'
,p_theme_roller_read_only=>false
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(5506134394166739)
,p_theme_id=>42
,p_name=>'Vista'
,p_css_file_urls=>'#THEME_IMAGES#css/Vista#MIN#.css?v=#APEX_VERSION#'
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_read_only=>true
,p_reference_id=>4007676303523989775
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(5506336491166739)
,p_theme_id=>42
,p_name=>'Vita'
,p_is_public=>true
,p_is_accessible=>true
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>2719875314571594493
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(5506556099166739)
,p_theme_id=>42
,p_name=>'Vita - Dark'
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Dark.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Dark#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3543348412015319650
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(5506740997166739)
,p_theme_id=>42
,p_name=>'Vita - Red'
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Red.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Red#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>1938457712423918173
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(5506928227166739)
,p_theme_id=>42
,p_name=>'Vita - Slate'
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Slate.less'
,p_theme_roller_config=>'{"customCSS":"","vars":{"@g_Accent-BG":"#505f6d","@g_Accent-OG":"#ececec","@g_Body-Title-BG":"#dee1e4","@l_Link-Base":"#337ac0","@g_Body-BG":"#f5f5f5"}}'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Slate#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3291983347983194966
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(26103626084935661)
,p_theme_id=>42
,p_name=>'White Theme'
,p_is_public=>true
,p_is_accessible=>true
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita.less'
,p_theme_roller_config=>'{"customCSS":"","vars":{"@g_Accent-BG":"#1e5128","@g_Nav-BG":"#4d9f3d","@g_Nav-Active-BG":"#4d9f3d","@g_Region-Header-FG":"#4d9f3d"}}'
,p_theme_roller_output_file_url=>'#THEME_DB_IMAGES#26103626084935661.css'
,p_theme_roller_read_only=>false
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(26191895395287257)
,p_theme_id=>42
,p_name=>'Dark Theme'
,p_is_public=>true
,p_is_accessible=>true
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita.less'
,p_theme_roller_config=>'{"customCSS":"","vars":{"@g_Accent-BG":"#1e5128","@g_Nav-BG":"#4d9f3d","@g_Nav-Active-BG":"#4d9f3d","@g_Region-Header-FG":"#4d9f3d","@g_Accent-OG":"#191a19","@g_Nav-Icon":"#d1d1d1","@g_Nav-FG":"#d1d1d1","@g_Nav-Active-FG":"#f2f2f2","@g_Region-BG":"#f'
||'fffff","@g_Region-FG":"#232423","@g_Region-Header-BG":"#ffffff","@l_Left-Col-Text":"#1e5128","@l_Left-Col-BG":"#d9d9d9"}}'
,p_theme_roller_output_file_url=>'#THEME_DB_IMAGES#26191895395287257.css'
,p_theme_roller_read_only=>false
);
wwv_flow_imp.component_end;
end;
/
