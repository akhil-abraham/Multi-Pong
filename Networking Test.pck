GDPC                                                                                 <   res://.import/Ball.png-3e5e22496e5c9e9b08e902070a717137.stex       }       �+��%��#g��8@   res://.import/Paddle.png-0d77664ed9c517294157cb7ff1770a6c.stex  `      o       �0uzܒ�����V0�w<   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex`F      �      �p��<f��r�g��.�   res://Ball.png.import   �      /      �g�"cR�څ[��e>+   res://Game.tscn �      �      z�ϓ���ƣ��u�   res://Paddle.gd.remap   `V      !       &a�J�_#��(˧g   res://Paddle.gdc@            M]'�.��Q���tA+   res://Paddle.png.import �      d      ���$�9���F&�O�   res://Pong.gd.remap �V             g�q���6Y#�"��   res://Pong.gdc  @      o      �(�I�b�Gķ�C   res://Start.tscn�"      
	      2�����'����V��   res://ball.gd.remap �V             ��b�Heh7܉�	w   res://ball.gdc  �+      D      �� �qt8<��AN   res://default_env.tres  2      
      ��'CS��LT��j�   res://gamestate.gd.remap�V      $       �����,�ϵ#g   res://gamestate.gdc 0<      &
      O?��?_��1ݠǼ��   res://icon.png   W      i      ����󈘥Ey��
�   res://icon.png.import    T      ]      ��Ќ7�8-�(N��a[�   res://project.binarypd      �      �g��BEL��/���?�    GDST               a   PNG �PNG

   IHDR         �o&�   $IDAT�uȱ  0���F�
<:m���
�x�f�� &��+��    IEND�B`�   [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Ball.png-3e5e22496e5c9e9b08e902070a717137.stex"

[deps]

source_file="res://Ball.png"
dest_files=[ "res://.import/Ball.png-3e5e22496e5c9e9b08e902070a717137.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
 [gd_scene load_steps=8 format=2]

[ext_resource path="res://Pong.gd" type="Script" id=1]
[ext_resource path="res://ball.gd" type="Script" id=2]
[ext_resource path="res://Ball.png" type="Texture" id=3]
[ext_resource path="res://Paddle.gd" type="Script" id=4]
[ext_resource path="res://Paddle.png" type="Texture" id=5]

[sub_resource type="RectangleShape2D" id=2]

custom_solver_bias = 0.0
extents = Vector2( 10, 10 )

[sub_resource type="RectangleShape2D" id=1]

custom_solver_bias = 0.0
extents = Vector2( 10, 10 )

[node name="Pong" type="Node2D"]

script = ExtResource( 1 )

[node name="ball" type="Area2D" parent="." index="0"]

editor/display_folded = true
position = Vector2( 200, 306 )
input_pickable = true
gravity_vec = Vector2( 0, 1 )
gravity = 98.0
linear_damp = 0.1
angular_damp = 1.0
audio_bus_override = false
audio_bus_name = "Master"
script = ExtResource( 2 )
_sections_unfolded = [ "Transform" ]

[node name="Sprite" type="Sprite" parent="ball" index="0"]

scale = Vector2( 2, 2 )
texture = ExtResource( 3 )
_sections_unfolded = [ "Offset", "Transform" ]

[node name="CollisionShape2D" type="CollisionShape2D" parent="ball" index="1"]

scale = Vector2( 0.5, 0.5 )
shape = SubResource( 2 )
_sections_unfolded = [ "Transform" ]

[node name="player1" type="Area2D" parent="." index="1"]

editor/display_folded = true
position = Vector2( 16, 306 )
input_pickable = true
gravity_vec = Vector2( 0, 1 )
gravity = 98.0
linear_damp = 0.1
angular_damp = 1.0
audio_bus_override = false
audio_bus_name = "Master"
script = ExtResource( 4 )
_sections_unfolded = [ "Transform" ]

[node name="Sprite" type="Sprite" parent="player1" index="0"]

scale = Vector2( 1, 5 )
texture = ExtResource( 5 )
_sections_unfolded = [ "Offset", "Transform" ]

[node name="CollisionShape2D" type="CollisionShape2D" parent="player1" index="1"]

scale = Vector2( 0.15, 4 )
shape = SubResource( 1 )
_sections_unfolded = [ "Transform" ]

[node name="player2" type="Area2D" parent="." index="2"]

editor/display_folded = true
position = Vector2( 384, 306 )
input_pickable = true
gravity_vec = Vector2( 0, 1 )
gravity = 98.0
linear_damp = 0.1
angular_damp = 1.0
audio_bus_override = false
audio_bus_name = "Master"
script = ExtResource( 4 )
_sections_unfolded = [ "Transform" ]

[node name="Sprite" type="Sprite" parent="player2" index="0"]

scale = Vector2( 1, 5 )
texture = ExtResource( 5 )
_sections_unfolded = [ "Transform" ]

[node name="CollisionShape2D" type="CollisionShape2D" parent="player2" index="1"]

scale = Vector2( 0.15, 4 )
shape = SubResource( 1 )
_sections_unfolded = [ "Transform" ]

[node name="score_left" type="Label" parent="." index="3"]

anchor_left = 0.0
anchor_top = 0.0
anchor_right = 0.0
anchor_bottom = 0.0
margin_left = 20.0
margin_top = 14.0
margin_right = 60.0
margin_bottom = 28.0
rect_pivot_offset = Vector2( 0, 0 )
rect_clip_content = false
mouse_filter = 2
mouse_default_cursor_shape = 0
size_flags_horizontal = 1
size_flags_vertical = 4
percent_visible = 1.0
lines_skipped = 0
max_lines_visible = -1
_sections_unfolded = [ "Rect" ]

[node name="score_right" type="Label" parent="." index="4"]

anchor_left = 0.0
anchor_top = 0.0
anchor_right = 0.0
anchor_bottom = 0.0
margin_left = 338.0
margin_top = 16.0
margin_right = 378.0
margin_bottom = 30.0
rect_pivot_offset = Vector2( 0, 0 )
rect_clip_content = false
mouse_filter = 2
mouse_default_cursor_shape = 0
size_flags_horizontal = 1
size_flags_vertical = 4
percent_visible = 1.0
lines_skipped = 0
max_lines_visible = -1
_sections_unfolded = [ "Rect" ]

[connection signal="area_entered" from="player1" to="player1" method="_on_player_area_entered"]

[connection signal="area_entered" from="player2" to="player2" method="_on_player_area_entered"]


              GDSC      	   '   �      ���ׄ�   ����򶶶   �����ض�   �����¶�   ����������Ӷ   ����������������¶��   ���Ӷ���   ������������������ض   ����Ŷ��   �������ض���   �������ض���   �������Ŷ���   ����׶��   ����������������Ķ��   ����¶��   ����������������Ҷ��   �������������Ӷ�   ��������Ӷ��   ��Ŷ   ϶��   ����������������������Ҷ   ���׶���   ��ն  �                              ui_up                  ui_down       _set_pos_and_motion   (             bounce                           	                           	      
   )      -      1      2      9      A      E      F      Q      U      `      d      e      i      j      s      t      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   5TT<�  TT=�  �  T=�  �  TT7=�  �  LMP�  TTG3�  L�  N�	  MR�  �
  �  �  �  �	  TT3�  L�  MR�  &L�  LMMR�  �  �  �  �  &L�  P�  L�  MMR�  �  �  �  'L�  P�  L�  MMR�  �  �  �  �  �  �  �  �  �  L�  N�
  N�  M�  �  �  L�  L�  N�  �  MM�  �  �  =�  �
  �  &L�  P�  	�  MR�  �
  P�  �  �  'L�  P�  �  P�  �  MR�  �
  P�  �  P�  �  TT3�  L�  MR�  &L�  LMMR�  �  P�  L�  N�  N�   LMMT[         GDST               S   PNG �PNG

   IHDR         �jŊ   IDAT�c����(`b@C� @�M0v    IEND�B`� [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Paddle.png-0d77664ed9c517294157cb7ff1770a6c.stex"

[deps]

source_file="res://Paddle.png"
dest_files=[ "res://.import/Paddle.png-0d77664ed9c517294157cb7ff1770a6c.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
            GDSC         "   �      ���ӄ�   ����������������   ���������¶�   ����������¶   ���������Ҷ�   �����϶�   �������Ӷ���   ����������������Ķ��   �������Ӷ���   �����������������Ķ�   ��������������������������Ŷ   ��������������������Ҷ��   �����ć�   �����¶�   �����Ą�   ������������Ӷ��   ����������¶   ���¶���   ��ն                         player2                             ball      stop                         	                           	      
          *      =      @      P      Q      X      _      `      h      n      r      |            �      �      �      �      �      �      �      �       �   !   �   "   5TT<�  TT=�  �  T=�  �  TTB�  LMTT3�  LMR�  &�  LMP�  LMR�  �  L�  MP�	  L�  LMP�
  LMH�  IM�  (R�  �  L�  MP�	  L�  LMP�  LMM�  �  S�  P�  �  �  S�  P�  �  TTE3�  L�  MR�  &L�  MR�  �  �  �  S�  P�  �6  L�  M�  (R�  �  �  �  S�  P�  �6  L�  M�  �  =�  �  �  &L�  �  MR�  �  �  �  'L�  �  MR�  �  �  �  �  &L�  MR�  �  L�  MP�  L�  M[ [gd_scene load_steps=2 format=2]

[ext_resource path="res://gamestate.gd" type="Script" id=1]

[node name="Lobby" type="Node2D" index="0"]

script = ExtResource( 1 )
__meta__ = {
"_edit_horizontal_guides_": [  ]
}

[node name="Holder" type="Node2D" parent="." index="0"]

[node name="Panel" type="Panel" parent="." index="1"]

anchor_left = 0.0
anchor_top = 0.0
anchor_right = 0.0
anchor_bottom = 0.0
margin_left = -1.0
margin_right = 400.0
margin_bottom = 611.0
rect_pivot_offset = Vector2( 0, 0 )
rect_clip_content = false
mouse_filter = 0
mouse_default_cursor_shape = 0
size_flags_horizontal = 1
size_flags_vertical = 1
_sections_unfolded = [ "Size Flags", "Visibility" ]

[node name="host" type="Button" parent="Panel" index="0"]

anchor_left = 0.0
anchor_top = 0.0
anchor_right = 0.0
anchor_bottom = 0.0
margin_left = 157.0
margin_top = 108.0
margin_right = 239.0
margin_bottom = 151.0
rect_pivot_offset = Vector2( 0, 0 )
rect_clip_content = false
focus_mode = 2
mouse_filter = 0
mouse_default_cursor_shape = 0
size_flags_horizontal = 1
size_flags_vertical = 1
toggle_mode = false
enabled_focus_mode = 2
shortcut = null
group = null
text = "HOST"
flat = false
align = 1

[node name="join" type="Button" parent="Panel" index="1"]

anchor_left = 0.0
anchor_top = 0.0
anchor_right = 0.0
anchor_bottom = 0.0
margin_left = 157.0
margin_top = 193.0
margin_right = 239.0
margin_bottom = 236.0
rect_pivot_offset = Vector2( 0, 0 )
rect_clip_content = false
focus_mode = 2
mouse_filter = 0
mouse_default_cursor_shape = 0
size_flags_horizontal = 1
size_flags_vertical = 1
toggle_mode = false
enabled_focus_mode = 2
shortcut = null
group = null
text = "JOIN"
flat = false
align = 1

[node name="TextEdit" type="Label" parent="Panel" index="2"]

anchor_left = 0.0
anchor_top = 0.0
anchor_right = 0.0
anchor_bottom = 0.0
margin_left = 1.0
margin_top = 530.0
margin_right = 398.0
margin_bottom = 609.0
rect_pivot_offset = Vector2( 0, 0 )
rect_clip_content = false
mouse_filter = 2
mouse_default_cursor_shape = 0
size_flags_horizontal = 1
size_flags_vertical = 4
percent_visible = 1.0
lines_skipped = 0
max_lines_visible = -1
_sections_unfolded = [ "Popup" ]

[connection signal="pressed" from="Panel/host" to="." method="_on_host_pressed"]

[connection signal="pressed" from="Panel/join" to="." method="_on_join_pressed"]


      GDSC         0   1     ���ׄ�   ������������򶶶   ���������Ҷ�   ��������ض��   ������Ҷ   ����������Ӷ   ����������������¶��   ���Ӷ���   �������Ŷ���   ����׶��   ��������Ӷ��   ��Ŷ   �������ض���   ϶��   ����������������Ķ��   ζ��   ���������¶�   ��ն   ����������ڶ   �������¶���   ���ƶ���   �����Ӷ�   ���¶���   �����۶�   ���������Ҷ�  P                                       _update_score         _reset_ball                  333333�?      @     �?                         	                           	   (   
   )      0      7      @      A      F      f      o      p      x      �      �      �      �      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (     )     *     +     ,     -     .     /   (  0   5TT<�  TT=�  �  T=�  �  L�  N�  MT=�  �  TT7=�  �  LMP�  TT3�  L�	  MR�  &L�  MR�  �
  L�  �  �	  M�  �  =�  �  �  &L�  P�  	�  �  P�  	�  ML�  P�  �  P�  �  P�  �  MR�  �  P�  �  P�  �  �  &L�  LMMR�  &L�  P�  	�  MR�  �  LMP�  L�  N�  M�  �  L�  N�  M�  (R�  &L�  P�  �  P�  MR�  �  LMP�  L�  N�  M�  �  L�  N�  MTTE3�  L�  MR�  �  �  �  �  &L�  MR�  �  �  L�  N�  M�  (R�  �  �  L�  N�  M�  �  �  TTE3�  LMR�  �  �  TTE3�  L�  N�  MR�  &L�  MR�  �  P�  �  L�  P�  M�  (R�  �  P�  �  P�  �  �  �  �  �  �  �  P�  �  �	  �
  �  �  �  P�  LM[            [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

radiance_size = 4
sky_top_color = Color( 0.647059, 0.839216, 0.945098, 1 )
sky_horizon_color = Color( 0.839216, 0.917647, 0.980392, 1 )
sky_curve = 0.09
sky_energy = 1.0
ground_bottom_color = Color( 0.156863, 0.184314, 0.211765, 1 )
ground_horizon_color = Color( 0.423529, 0.396078, 0.372549, 1 )
ground_curve = 0.02
ground_energy = 1.0
sun_color = Color( 1, 1, 1, 1 )
sun_latitude = 35.0
sun_longitude = 0.0
sun_angle_min = 1.0
sun_angle_max = 100.0
sun_curve = 0.05
sun_energy = 16.0
texture_size = 2

[resource]

background_mode = 2
background_sky = SubResource( 1 )
background_sky_custom_fov = 0.0
background_color = Color( 0, 0, 0, 1 )
background_energy = 1.0
background_canvas_max_layer = 0
ambient_light_color = Color( 0, 0, 0, 1 )
ambient_light_energy = 1.0
ambient_light_sky_contribution = 1.0
fog_enabled = false
fog_color = Color( 0.5, 0.6, 0.7, 1 )
fog_sun_color = Color( 1, 0.9, 0.7, 1 )
fog_sun_amount = 0.0
fog_depth_enabled = true
fog_depth_begin = 10.0
fog_depth_curve = 1.0
fog_transmit_enabled = false
fog_transmit_curve = 1.0
fog_height_enabled = false
fog_height_min = 0.0
fog_height_max = 100.0
fog_height_curve = 1.0
tonemap_mode = 0
tonemap_exposure = 1.0
tonemap_white = 1.0
auto_exposure_enabled = false
auto_exposure_scale = 0.4
auto_exposure_min_luma = 0.05
auto_exposure_max_luma = 8.0
auto_exposure_speed = 0.5
ss_reflections_enabled = false
ss_reflections_max_steps = 64
ss_reflections_fade_in = 0.15
ss_reflections_fade_out = 2.0
ss_reflections_depth_tolerance = 0.2
ss_reflections_roughness = true
ssao_enabled = false
ssao_radius = 1.0
ssao_intensity = 1.0
ssao_radius2 = 0.0
ssao_intensity2 = 1.0
ssao_bias = 0.01
ssao_light_affect = 0.0
ssao_color = Color( 0, 0, 0, 1 )
ssao_quality = 0
ssao_blur = 3
ssao_edge_sharpness = 4.0
dof_blur_far_enabled = false
dof_blur_far_distance = 10.0
dof_blur_far_transition = 5.0
dof_blur_far_amount = 0.1
dof_blur_far_quality = 1
dof_blur_near_enabled = false
dof_blur_near_distance = 2.0
dof_blur_near_transition = 1.0
dof_blur_near_amount = 0.1
dof_blur_near_quality = 1
glow_enabled = false
glow_levels/1 = false
glow_levels/2 = false
glow_levels/3 = true
glow_levels/4 = false
glow_levels/5 = true
glow_levels/6 = false
glow_levels/7 = false
glow_intensity = 0.8
glow_strength = 1.0
glow_bloom = 0.0
glow_blend_mode = 2
glow_hdr_threshold = 1.0
glow_hdr_scale = 2.0
glow_bicubic_upscale = false
adjustment_enabled = false
adjustment_brightness = 1.0
adjustment_contrast = 1.0
adjustment_saturation = 1.0

             GDSC   '      B   u     ���ӄ�   ���ⶶ��   �����������   ��������Ӷ��   ����������ٶ   �����϶�   �������Ӷ���   ������¶   ����������������Ҷ��   �Ҷ�   ����������Ŷ   ���Ѷ���   �������Ӷ���   ���������������򶶶�   �����Ķ�   ��������Ҷ��   ����ڶ��   ���Ӷ���   ��������Ӷ��   �������������������Ҷ���   ������������ݶ��   ��������������ڶ   ���������������Ķ���   �������������������Ҷ���   ���������������Ҷ���   ���¶���   �����������������������¶���   ����   ��Ķ   ������������Ķ��   ����   ���������������Ҷ���   �ƶ�   �涶   ������������������Ŷ   ������������������Ŷ   ������������¶��   ���¶���   �������¶���  r                     res://Game.tscn       network_peer_connected        _player_connected         network_peer_disconnected         _player_disconnected      connected_to_server       _connected_ok         connection_failed         _connected_fail       server_disconnected       _server_disconnected   	   worked///      
   game_ended     	   _end_game         Could not connect to server           Server disconnected       Cannot host, server is in use         Waiting for player...                   Invalid ip address        Connecting...                                                       	      
         %      2      ?      L      Y      f      g      n      s      |      �      �      �      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -     .   
  /     0     1     2     3   !  4   "  5   +  6   ,  7   8  8   C  9   H  :   J  ;   S  <   \  =   a  >   b  ?   i  @   r  A   s  B   5TT<�  T<�  �  TTTT=�  ?L�  MT=�  JKTT3�  LMR�  �  LMP�  L�  NN�  M�  �  LMP�  L�  NN�  M�  �  LMP�  L�  NN�  M�  �  LMP�  L�	  NN�
  M�  �  LMP�  L�  NN�  M�  T3�  L�	  MR�  �
  L�  M�  =�  �  P�  LM�  �  P�  L�  NN�  NHIN�  M�  S�  P�  L�  M�  S�  P�  LMTT3�  LMR�  0TT3�  L�	  MR�  0TT3�  LMR�  0TT3�  LMR�  �
  L�  M�  �  LMP�  L�  MTT3�  LMR�  �
  L�  M�  �  LMP�  L�  M�  T3�  LMR�  =�  �  P�  LM�  =�  �  P�  L�  N�  M�  &L�  �  MR�  �
  L�  M�  1�  �  LMP�  L�  M�  �
  L�  M�  T3�  LMR�  �  =�  �  P�  LM�  �  =�   �!  P�"  LMH�  I�  &L�   P�#  LMMR�  �
  L�  M�  1�  �  P�$  L�   N�  M�  �  LMP�  L�  M�  �
  L�  MTT3�
  L�%  MR�  S�  �&  P�%  �%  TT[          GDST@   @           |  PNG �PNG

   IHDR   @   @   �iq�  ?IDATx��{pTU�����;�N7	�����%"fyN�8��r\]fEgةf���X�g��F�Y@Wp\]|,�D@��	$$���	��I�n���ҝt����JW�s��}�=���|�D(���W@T0^����f��	��q!��!i��7�C���V�P4}! ���t�ŀx��dB.��x^��x�ɏN��贚�E�2�Z�R�EP(�6�<0dYF���}^Ѡ�,	�3=�_<��(P&�
tF3j�Q���Q�B�7�3�D�@�G�U��ĠU=� �M2!*��[�ACT(�&�@0hUO�u��U�O�J��^FT(Qit �V!>%���9 J���jv	�R�@&��g���t�5S��A��R��OO^vz�u�L�2�����lM��>tH
�R6��������dk��=b�K�љ�]�י�F*W�볃�\m=�13� �Є,�ˏy��Ic��&G��k�t�M��/Q]�أ]Q^6o��r�h����Lʳpw���,�,���)��O{�:א=]� :LF�[�*���'/���^�d�Pqw�>>��k��G�g���No���\��r����/���q�̾��	�G��O���t%L�:`Ƶww�+���}��ݾ ۿ��SeŔ����  �b⾻ǰ��<n_�G��/��8�Σ�l]z/3��g����sB��tm�tjvw�:��5���l~�O���v��]ǚ��֩=�H	u���54�:�{"������}k����d���^��`�6�ev�#Q$�ήǞ��[�Ặ�e�e��Hqo{�59i˲����O+��e������4�u�r��z�q~8c
 �G���7vr��tZ5�X�7����_qQc�[����uR��?/���+d��x�>r2����P6����`�k��,7�8�ɿ��O<Ė��}AM�E%�;�SI�BF���}��@P�yK�@��_:����R{��C_���9������
M��~����i����������s���������6�,�c�������q�����`����9���W�pXW]���:�n�aұt~9�[���~e�;��f���G���v0ԣ� ݈���y�,��:j%gox�T
�����kְ�����%<��A`���Jk?���� gm���x�*o4����o��.�����逊i�L����>���-���c�����5L����i�}�����4����usB������67��}����Z�ȶ�)+����)+H#ۢ�RK�AW�xww%��5�lfC�A���bP�lf��5����>���`0ċ/oA-�,�]ĝ�$�峋P2/���`���;����[Y��.&�Y�QlM���ƌb+��,�s�[��S ��}<;���]�:��y��1>'�AMm����7q���RY%9)���ȡI�]>�_l�C����-z�� ;>�-g�dt5іT�Aͺy�2w9���d�T��J�}u�}���X�Ks���<@��t��ebL������w�aw�N����c����F���3
�2먭�e���PQ�s�`��m<1u8�3�#����XMڈe�3�yb�p�m��܇+��x�%O?CmM-Yf��(�K�h�بU1%?I�X�r��� ��n^y�U�����1�玒�6..e��RJrRz�Oc������ʫ��]9���ZV�\�$IL�OŨ��{��M�p�L56��Wy��J�R{���FDA@
��^�y�������l6���{�=��ή�V�hM�V���JK��:��\�+��@�l/���ʧ����pQ��������׷Q^^�(�T������|.���9�?I�M���>���5�f欙X�VƎ-f͚ո���9����=�m���Y���c��Z�̚5��k~���gHHR�Ls/l9²���+ ����:��杧��"9�@��ad�ŝ��ѽ�Y���]O�W_�`Ֆ#Դ8�z��5-N^�r�Z����h���ʆY���=�`�M���Ty�l���.	�/z��fH���������֗�H�9�f������G� ̛<��q��|�]>ں}�N�3�;i�r"�(2RtY���4X���F�
�����8 �[�\锰�b`�0s�:���v���2�f��k�Zp��Ω&G���=��6em.mN�o.u�fԐc��i����C���u=~{�����a^�UH������¡,�t(jy�Q�ɋ����5�Gaw��/�Kv?�|K��(��SF�h�����V��xȩ2St쯹���{6b�M/�t��@0�{�Ԫ�"�v7�Q�A�(�ľR�<	�w�H1D�|8�]�]�Ո%����jҢ꯸hs�"~꯸P�B�� �%I}}��+f�����O�cg�3rd���P�������qIڻ]�h�c9��xh )z5��� �ƾ"1:3���j���'1;��#U�失g���0I}�u3.)@�Q�A�ĠQ`I�`�(1h��t*�:�>'��&v��!I?�/.)@�S�%q�\���l�TWq�������լ�G�5zy6w��[��5�r���L`�^���/x}�>��t4���cݦ�(�H�g��C�EA�g�)�Hfݦ��5�;q-���?ư�4�����K����XQ*�av�F��������񵏷�;>��l�\F��Þs�c�hL�5�G�c�������=q�P����E �.���'��8Us�{Ǎ���#������q�HDA`b��%����F�hog���|�������]K�n��UJ�}������Dk��g��8q���&G����A�RP�e�$'�i��I3j�w8������?�G�&<	&䪬R��lb1�J����B$�9�꤮�ES���[�������8�]��I�B!
�T
L:5�����d���K30"-	�(��D5�v��#U�����jԔ�QR�GIaó�I3�nJVk���&'��q����ux��AP<�"�Q�����H�`Jң�jP(D��]�����`0��+�p�inm�r�)��,^�_�rI�,��H>?M-44���x���"� �H�T��zIty����^B�.��%9?E����П�($@H!�D��#m�e���vB(��t �2.��8!���s2Tʡ �N;>w'����dq�"�2����O�9$�P	<(��z�Ff�<�z�N��/yD�t�/?�B.��A��>��i%�ǋ"�p n� ���]~!�W�J���a�q!n��V X*�c �TJT*%�6�<d[�    IEND�B`�        [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
   [remap]

path="res://Paddle.gdc"
               [remap]

path="res://Pong.gdc"
 [remap]

path="res://ball.gdc"
 [remap]

path="res://gamestate.gdc"
            �PNG

   IHDR   @   @   �iq�  0IDATx��}pTU����L����W�$�@HA�%"fa��Yw�)��A��Egةf���X�g˱��tQ���Eq�!�|K�@BHH:�t>�;�����1!ݝn�A�_UWw����{λ��sϽO�q汤��X,�q�z�<�q{cG.;��]�_�`9s��|o���:��1�E�V� ~=�	��ݮ����g[N�u�5$M��NI��-
�"(U*��@��"oqdYF�y�x�N�e�2���s����KҦ`L��Z)=,�Z}"
�A�n{�A@%$��R���F@�$m������[��H���"�VoD��v����Kw�d��v	�D�$>	�J��;�<�()P�� �F��
�< �R����&�կ��� ����������%�u̚VLNfڠus2�̚VL�~�>���mOMJ���J'R��������X����׬X�Ϲ虾��6Pq������j���S?�1@gL���±����(�2A�l��h��õm��Nb�l_�U���+����_����p�)9&&e)�0 �2{��������1���@LG�A��+���d�W|x�2-����Fk7�2x��y,_�_��}z��rzy��%n�-]l����L��;
�s���:��1�sL0�ڳ���X����m_]���BJ��im�  �d��I��Pq���N'�����lYz7�����}1�sL��v�UIX���<��Ó3���}���nvk)[����+bj�[���k�������cݮ��4t:= $h�4w:qz|A��٧�XSt�zn{�&��õmQ���+�^�j�*��S��e���o�V,	��q=Y�)hԪ��F5~����h�4 *�T�o��R���z�o)��W�]�Sm銺#�Qm�]�c�����v��JO��?D��B v|z�կ��܈�'�z6?[� ���p�X<-���o%�32����Ρz�>��5�BYX2���ʦ�b��>ǣ������SI,�6���|���iXYQ���U�҅e�9ma��:d`�iO����{��|��~����!+��Ϧ�u�n��7���t>�l捊Z�7�nвta�Z���Ae:��F���g�.~����_y^���K�5��.2�Zt*�{ܔ���G��6�Y����|%�M	���NPV.]��P���3�8g���COTy�� ����AP({�>�"/��g�0��<^��K���V����ϫ�zG�3K��k���t����)�������6���a�5��62Mq����oeJ�R�4�q�%|�� ������z���ä�>���0�T,��ǩ�����"lݰ���<��fT����IrX>� � ��K��q�}4���ʋo�dJ��م�X�sؘ]hfJ�����Ŧ�A�Gm߽�g����YG��X0u$�Y�u*jZl|p������*�Jd~qcR�����λ�.�
�r�4���zپ;��AD�eЪU��R�:��I���@�.��&3}l
o�坃7��ZX��O�� 2v����3��O���j�t	�W�0�n5����#è����%?}����`9۶n���7"!�uf��A�l܈�>��[�2��r��b�O�������gg�E��PyX�Q2-7���ʕ������p��+���~f��;����T	�*�(+q@���f��ϫ����ѓ���a��U�\.��&��}�=dd'�p�l�e@y��
r�����zDA@����9�:��8�Y,�����=�l�֮��F|kM�R��GJK��*�V_k+��P�,N.�9��K~~~�HYY��O��k���Q�����|rss�����1��ILN��~�YDV��-s�lfB֬Y�#.�=�>���G\k֬fB�f3��?��k~���f�IR�lS'�m>²9y���+ �v��y��M;NlF���A���w���w�b���Л�j�d��#T��b���e��[l<��(Z�D�NMC���k|Zi�������Ɗl��@�1��v��Щ�!曣�n��S������<@̠7�w�4X�D<A`�ԑ�ML����jw���c��8��ES��X��������ƤS�~�׾�%n�@��( Zm\�raҩ���x��_���n�n���2&d(�6�,8^o�TcG���3���emv7m6g.w��W�e
�h���|��Wy��~���̽�!c� �ݟO�)|�6#?�%�,O֫9y������w��{r�2e��7Dl �ׇB�2�@���ĬD4J)�&�$
�HԲ��
/�߹�m��<JF'!�>���S��PJ"V5!�A�(��F>SD�ۻ�$�B/>lΞ�.Ϭ�?p�l6h�D��+v�l�+v$Q�B0ūz����aԩh�|9�p����cƄ,��=Z�����������Dc��,P��� $ƩЩ�]��o+�F$p�|uM���8R��L�0�@e'���M�]^��jt*:��)^�N�@�V`�*�js�up��X�n���tt{�t:�����\�]>�n/W�\|q.x��0���D-���T��7G5jzi���[��4�r���Ij������p�=a�G�5���ͺ��S���/��#�B�EA�s�)HO`���U�/QM���cdz
�,�!�(���g�m+<R��?�-`�4^}�#>�<��mp��Op{�,[<��iz^�s�cü-�;���쾱d����xk瞨eH)��x@���h�ɪZNU_��cxx�hƤ�cwzi�p]��Q��cbɽcx��t�����M|�����x�=S�N���
Ͽ�Ee3HL�����gg,���NecG�S_ѠQJf(�Jd�4R�j��6�|�6��s<Q��N0&Ge
��Ʌ��,ᮢ$I�痹�j���Nc���'�N�n�=>|~�G��2�)�D�R U���&ՠ!#1���S�D��Ǘ'��ೃT��E�7��F��(?�����s��F��pC�Z�:�m�p�l-'�j9QU��:��a3@0�*%�#�)&�q�i�H��1�'��vv���q8]t�4����j��t-}IـxY�����C}c��-�"?Z�o�8�4Ⱦ���J]/�v�g���Cȷ2]�.�Ǣ ��Ս�{0
�>/^W7�_�����mV铲�
i���FR��$>��}^��dُ�۵�����%��*C�'�x�d9��v�ߏ � ���ۣ�Wg=N�n�~������/�}�_��M��[���uR�N���(E�	� ������z��~���.m9w����c����
�?���{�    IEND�B`�       ECFG      _global_script_classes          _global_script_class_icons          application/config/name         Networking Test    application/run/main_scene         res://Start.tscn   application/config/icon         res://icon.png     display/window/size/width     �         display/window/size/height     d      )   rendering/environment/default_environment          res://default_env.tres              GDPC