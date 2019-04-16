<GameFile>
  <PropertyGroup Name="SettlementUI" Type="Layer" ID="e8045bae-f10e-44f2-8b52-e7be269a11a0" Version="3.10.0.0" />
  <Content ctype="GameProjectContent">
    <Content>
      <Animation Duration="0" Speed="1.0000" />
      <ObjectData Name="Layer" Tag="87" ctype="GameLayerObjectData">
        <Size X="1280.0000" Y="720.0000" />
        <Children>
          <AbstractNodeData Name="bg_panel" ActionTag="-691777100" Tag="746" IconVisible="False" PercentWidthEnable="True" PercentHeightEnable="True" PercentWidthEnabled="True" PercentHeightEnabled="True" TouchEnable="True" ClipAble="False" BackColorAlpha="178" ComboBoxIndex="1" ColorAngle="90.0000" Scale9Width="1" Scale9Height="1" ctype="PanelObjectData">
            <Size X="1280.0000" Y="720.0000" />
            <AnchorPoint />
            <Position />
            <Scale ScaleX="1.0000" ScaleY="1.0000" />
            <CColor A="255" R="255" G="255" B="255" />
            <PrePosition />
            <PreSize X="1.0000" Y="1.0000" />
            <SingleColor A="255" R="0" G="0" B="0" />
            <FirstColor A="255" R="150" G="200" B="255" />
            <EndColor A="255" R="255" G="255" B="255" />
            <ColorVector ScaleY="1.0000" />
          </AbstractNodeData>
          <AbstractNodeData Name="player_panel0" ActionTag="-1432731703" Tag="89" IconVisible="False" PositionPercentXEnabled="True" PositionPercentYEnabled="True" LeftMargin="40.0000" RightMargin="240.0000" TopMargin="16.4000" BottomMargin="563.6000" ClipAble="False" BackColorAlpha="102" ColorAngle="90.0000" Scale9Enable="True" LeftEage="11" RightEage="11" TopEage="13" BottomEage="13" Scale9OriginX="-11" Scale9OriginY="-13" Scale9Width="22" Scale9Height="26" ctype="PanelObjectData">
            <Size X="1000.0000" Y="140.0000" />
            <Children>
              <AbstractNodeData Name="bg_img" ActionTag="-1368611237" Tag="983" IconVisible="False" PositionPercentXEnabled="True" PositionPercentYEnabled="True" PercentWidthEnable="True" PercentHeightEnable="True" PercentWidthEnabled="True" PercentHeightEnabled="True" LeftMargin="-15.0000" RightMargin="-15.0000" TopMargin="-9.8000" BottomMargin="-18.2000" LeftEage="11" TopEage="13" BottomEage="13" Scale9OriginX="11" Scale9OriginY="13" Scale9Width="916" Scale9Height="121" ctype="ImageViewObjectData">
                <Size X="1030.0000" Y="168.0000" />
                <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                <Position X="500.0000" Y="65.8000" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.5000" Y="0.4700" />
                <PreSize X="1.0300" Y="1.2000" />
                <FileData Type="Normal" Path="SettlementUI/settlement_win_bg.png" Plist="" />
              </AbstractNodeData>
              <AbstractNodeData Name="score_label" ActionTag="1248530071" Tag="912" IconVisible="False" LeftMargin="780.0000" RightMargin="100.0000" TopMargin="46.0000" BottomMargin="46.0000" IsCustomSize="True" FontSize="48" LabelText="-1000" ShadowOffsetX="2.0000" ShadowOffsetY="-2.0000" ctype="TextObjectData">
                <Size X="120.0000" Y="48.0000" />
                <AnchorPoint ScaleY="0.5000" />
                <Position X="780.0000" Y="70.0000" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="245" G="218" B="96" />
                <PrePosition X="0.7800" Y="0.5000" />
                <PreSize X="0.1200" Y="0.3429" />
                <OutlineColor A="255" R="255" G="0" B="0" />
                <ShadowColor A="255" R="110" G="110" B="110" />
              </AbstractNodeData>
              <AbstractNodeData Name="player_lucky_tile_panel" ActionTag="15587798" VisibleForFrame="False" Tag="1103" IconVisible="False" LeftMargin="400.0000" RightMargin="260.0000" TopMargin="8.8996" BottomMargin="72.1004" ClipAble="False" BackColorAlpha="102" ColorAngle="90.0000" Scale9Width="1" Scale9Height="1" ctype="PanelObjectData">
                <Size X="340.0000" Y="59.0000" />
                <Children>
                  <AbstractNodeData Name="tile_img_0" ActionTag="131833667" Tag="1104" IconVisible="False" PositionPercentYEnabled="True" RightMargin="300.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                    <Size X="40.0000" Y="59.0000" />
                    <Children>
                      <AbstractNodeData Name="mahjong_img" ActionTag="-539803316" Tag="1105" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                        <Size X="25.0000" Y="39.0000" />
                        <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                        <Position X="20.0000" Y="37.0000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.5000" Y="0.6271" />
                        <PreSize X="0.6250" Y="0.6610" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="mark_img" ActionTag="-2139528021" Tag="694" IconVisible="False" PositionPercentXEnabled="True" PositionPercentYEnabled="True" LeftMargin="-2.0000" RightMargin="-2.0000" TopMargin="22.1600" BottomMargin="-6.1600" LeftEage="14" RightEage="14" TopEage="14" BottomEage="14" Scale9OriginX="14" Scale9OriginY="14" Scale9Width="16" Scale9Height="15" ctype="ImageViewObjectData">
                        <Size X="44.0000" Y="43.0000" />
                        <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                        <Position X="20.0000" Y="15.3400" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.5000" Y="0.2600" />
                        <PreSize X="1.1000" Y="0.7288" />
                        <FileData Type="Normal" Path="Default/common_rightmark.png" Plist="" />
                      </AbstractNodeData>
                    </Children>
                    <AnchorPoint ScaleY="0.5000" />
                    <Position Y="29.5000" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition Y="0.5000" />
                    <PreSize X="0.1176" Y="1.0000" />
                    <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
                  </AbstractNodeData>
                  <AbstractNodeData Name="tile_img_1" ActionTag="654483541" Tag="1106" IconVisible="False" PositionPercentYEnabled="True" LeftMargin="50.0000" RightMargin="250.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                    <Size X="40.0000" Y="59.0000" />
                    <Children>
                      <AbstractNodeData Name="mahjong_img" ActionTag="2091873475" Tag="1107" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                        <Size X="25.0000" Y="39.0000" />
                        <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                        <Position X="20.0000" Y="37.0000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.5000" Y="0.6271" />
                        <PreSize X="0.6250" Y="0.6610" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="mark_img" ActionTag="-490923661" Tag="695" IconVisible="False" PositionPercentXEnabled="True" PositionPercentYEnabled="True" LeftMargin="-2.0000" RightMargin="-2.0000" TopMargin="22.1600" BottomMargin="-6.1600" LeftEage="14" RightEage="14" TopEage="14" BottomEage="14" Scale9OriginX="14" Scale9OriginY="14" Scale9Width="16" Scale9Height="15" ctype="ImageViewObjectData">
                        <Size X="44.0000" Y="43.0000" />
                        <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                        <Position X="20.0000" Y="15.3400" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.5000" Y="0.2600" />
                        <PreSize X="1.1000" Y="0.7288" />
                        <FileData Type="Normal" Path="Default/common_rightmark.png" Plist="" />
                      </AbstractNodeData>
                    </Children>
                    <AnchorPoint ScaleY="0.5000" />
                    <Position X="50.0000" Y="29.5000" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.1471" Y="0.5000" />
                    <PreSize X="0.1176" Y="1.0000" />
                    <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
                  </AbstractNodeData>
                  <AbstractNodeData Name="tile_img_2" ActionTag="1355916270" Tag="1108" IconVisible="False" PositionPercentYEnabled="True" LeftMargin="100.0000" RightMargin="200.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                    <Size X="40.0000" Y="59.0000" />
                    <Children>
                      <AbstractNodeData Name="mahjong_img" ActionTag="1997298522" Tag="1109" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                        <Size X="25.0000" Y="39.0000" />
                        <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                        <Position X="20.0000" Y="37.0000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.5000" Y="0.6271" />
                        <PreSize X="0.6250" Y="0.6610" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="mark_img" ActionTag="1704532295" Tag="696" IconVisible="False" PositionPercentXEnabled="True" PositionPercentYEnabled="True" LeftMargin="-2.0000" RightMargin="-2.0000" TopMargin="22.1600" BottomMargin="-6.1600" LeftEage="14" RightEage="14" TopEage="14" BottomEage="14" Scale9OriginX="14" Scale9OriginY="14" Scale9Width="16" Scale9Height="15" ctype="ImageViewObjectData">
                        <Size X="44.0000" Y="43.0000" />
                        <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                        <Position X="20.0000" Y="15.3400" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.5000" Y="0.2600" />
                        <PreSize X="1.1000" Y="0.7288" />
                        <FileData Type="Normal" Path="Default/common_rightmark.png" Plist="" />
                      </AbstractNodeData>
                    </Children>
                    <AnchorPoint ScaleY="0.5000" />
                    <Position X="100.0000" Y="29.5000" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.2941" Y="0.5000" />
                    <PreSize X="0.1176" Y="1.0000" />
                    <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
                  </AbstractNodeData>
                  <AbstractNodeData Name="tile_img_3" ActionTag="-87430689" Tag="1110" IconVisible="False" PositionPercentYEnabled="True" LeftMargin="150.0000" RightMargin="150.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                    <Size X="40.0000" Y="59.0000" />
                    <Children>
                      <AbstractNodeData Name="mahjong_img" ActionTag="671126248" Tag="1111" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                        <Size X="25.0000" Y="39.0000" />
                        <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                        <Position X="20.0000" Y="37.0000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.5000" Y="0.6271" />
                        <PreSize X="0.6250" Y="0.6610" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="mark_img" ActionTag="361280132" Tag="697" IconVisible="False" PositionPercentXEnabled="True" PositionPercentYEnabled="True" LeftMargin="-2.0000" RightMargin="-2.0000" TopMargin="22.1600" BottomMargin="-6.1600" LeftEage="14" RightEage="14" TopEage="14" BottomEage="14" Scale9OriginX="14" Scale9OriginY="14" Scale9Width="16" Scale9Height="15" ctype="ImageViewObjectData">
                        <Size X="44.0000" Y="43.0000" />
                        <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                        <Position X="20.0000" Y="15.3400" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.5000" Y="0.2600" />
                        <PreSize X="1.1000" Y="0.7288" />
                        <FileData Type="Normal" Path="Default/common_rightmark.png" Plist="" />
                      </AbstractNodeData>
                    </Children>
                    <AnchorPoint ScaleY="0.5000" />
                    <Position X="150.0000" Y="29.5000" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.4412" Y="0.5000" />
                    <PreSize X="0.1176" Y="1.0000" />
                    <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
                  </AbstractNodeData>
                  <AbstractNodeData Name="tile_img_4" ActionTag="480845566" Tag="819" IconVisible="False" PositionPercentYEnabled="True" LeftMargin="200.0000" RightMargin="100.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                    <Size X="40.0000" Y="59.0000" />
                    <Children>
                      <AbstractNodeData Name="mahjong_img" ActionTag="-1484131340" Tag="820" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                        <Size X="25.0000" Y="39.0000" />
                        <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                        <Position X="20.0000" Y="37.0000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.5000" Y="0.6271" />
                        <PreSize X="0.6250" Y="0.6610" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="mark_img" ActionTag="-1901596973" Tag="821" IconVisible="False" PositionPercentXEnabled="True" PositionPercentYEnabled="True" LeftMargin="-2.0000" RightMargin="-2.0000" TopMargin="22.1600" BottomMargin="-6.1600" LeftEage="14" RightEage="14" TopEage="14" BottomEage="14" Scale9OriginX="14" Scale9OriginY="14" Scale9Width="16" Scale9Height="15" ctype="ImageViewObjectData">
                        <Size X="44.0000" Y="43.0000" />
                        <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                        <Position X="20.0000" Y="15.3400" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.5000" Y="0.2600" />
                        <PreSize X="1.1000" Y="0.7288" />
                        <FileData Type="Normal" Path="Default/common_rightmark.png" Plist="" />
                      </AbstractNodeData>
                    </Children>
                    <AnchorPoint ScaleY="0.5000" />
                    <Position X="200.0000" Y="29.5000" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.5882" Y="0.5000" />
                    <PreSize X="0.1176" Y="1.0000" />
                    <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
                  </AbstractNodeData>
                  <AbstractNodeData Name="tile_img_5" ActionTag="-1954731442" Tag="822" IconVisible="False" PositionPercentYEnabled="True" LeftMargin="250.0000" RightMargin="50.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                    <Size X="40.0000" Y="59.0000" />
                    <Children>
                      <AbstractNodeData Name="mahjong_img" ActionTag="-2076635677" Tag="823" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                        <Size X="25.0000" Y="39.0000" />
                        <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                        <Position X="20.0000" Y="37.0000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.5000" Y="0.6271" />
                        <PreSize X="0.6250" Y="0.6610" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="mark_img" ActionTag="-1072400206" Tag="824" IconVisible="False" PositionPercentXEnabled="True" PositionPercentYEnabled="True" LeftMargin="-2.0000" RightMargin="-2.0000" TopMargin="22.1600" BottomMargin="-6.1600" LeftEage="14" RightEage="14" TopEage="14" BottomEage="14" Scale9OriginX="14" Scale9OriginY="14" Scale9Width="16" Scale9Height="15" ctype="ImageViewObjectData">
                        <Size X="44.0000" Y="43.0000" />
                        <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                        <Position X="20.0000" Y="15.3400" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.5000" Y="0.2600" />
                        <PreSize X="1.1000" Y="0.7288" />
                        <FileData Type="Normal" Path="Default/common_rightmark.png" Plist="" />
                      </AbstractNodeData>
                    </Children>
                    <AnchorPoint ScaleY="0.5000" />
                    <Position X="250.0000" Y="29.5000" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.7353" Y="0.5000" />
                    <PreSize X="0.1176" Y="1.0000" />
                    <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
                  </AbstractNodeData>
                  <AbstractNodeData Name="tile_img_6" ActionTag="1305576769" Tag="464" IconVisible="False" PositionPercentYEnabled="True" LeftMargin="300.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                    <Size X="40.0000" Y="59.0000" />
                    <Children>
                      <AbstractNodeData Name="mahjong_img" ActionTag="-1789167682" Tag="465" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                        <Size X="25.0000" Y="39.0000" />
                        <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                        <Position X="20.0000" Y="37.0000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.5000" Y="0.6271" />
                        <PreSize X="0.6250" Y="0.6610" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="mark_img" ActionTag="784512294" Tag="466" IconVisible="False" PositionPercentXEnabled="True" PositionPercentYEnabled="True" LeftMargin="-2.0000" RightMargin="-2.0000" TopMargin="22.1600" BottomMargin="-6.1600" LeftEage="14" RightEage="14" TopEage="14" BottomEage="14" Scale9OriginX="14" Scale9OriginY="14" Scale9Width="16" Scale9Height="15" ctype="ImageViewObjectData">
                        <Size X="44.0000" Y="43.0000" />
                        <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                        <Position X="20.0000" Y="15.3400" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.5000" Y="0.2600" />
                        <PreSize X="1.1000" Y="0.7288" />
                        <FileData Type="Normal" Path="Default/common_rightmark.png" Plist="" />
                      </AbstractNodeData>
                    </Children>
                    <AnchorPoint ScaleY="0.5000" />
                    <Position X="300.0000" Y="29.5000" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.8824" Y="0.5000" />
                    <PreSize X="0.1176" Y="1.0000" />
                    <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
                  </AbstractNodeData>
                </Children>
                <AnchorPoint ScaleY="0.5000" />
                <Position X="400.0000" Y="101.6004" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.4000" Y="0.7257" />
                <PreSize X="0.3400" Y="0.4214" />
                <SingleColor A="255" R="150" G="200" B="255" />
                <FirstColor A="255" R="150" G="200" B="255" />
                <EndColor A="255" R="255" G="255" B="255" />
                <ColorVector ScaleY="1.0000" />
              </AbstractNodeData>
              <AbstractNodeData Name="lucky_label" ActionTag="-1653170017" VisibleForFrame="False" Tag="698" IconVisible="False" LeftMargin="310.0000" RightMargin="600.0000" TopMargin="16.0003" BottomMargin="87.9997" IsCustomSize="True" FontSize="36" LabelText="中码" ShadowOffsetX="2.0000" ShadowOffsetY="-2.0000" ctype="TextObjectData">
                <Size X="90.0000" Y="36.0000" />
                <AnchorPoint ScaleY="0.5000" />
                <Position X="310.0000" Y="105.9997" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="223" />
                <PrePosition X="0.3100" Y="0.7571" />
                <PreSize X="0.0900" Y="0.2571" />
                <OutlineColor A="255" R="255" G="0" B="0" />
                <ShadowColor A="255" R="110" G="110" B="110" />
              </AbstractNodeData>
              <AbstractNodeData Name="player_tile_panel" ActionTag="-1649536075" Tag="666" IconVisible="False" LeftMargin="131.1000" RightMargin="-173.1001" TopMargin="71.8998" BottomMargin="9.1002" ClipAble="False" BackColorAlpha="102" ColorAngle="90.0000" Scale9Width="1" Scale9Height="1" ctype="PanelObjectData">
                <Size X="1042.0000" Y="59.0000" />
                <Children>
                  <AbstractNodeData Name="player_hand_panel" ActionTag="-1760605728" Tag="667" IconVisible="False" TopMargin="-51.0000" ClipAble="False" BackColorAlpha="102" ColorAngle="90.0000" Scale9Width="1" Scale9Height="1" ctype="PanelObjectData">
                    <Size X="1042.0000" Y="110.0000" />
                    <Children>
                      <AbstractNodeData Name="tile_img_0" ActionTag="-2130097857" Tag="668" IconVisible="False" RightMargin="967.0000" TopMargin="-1.0000" TouchEnable="True" Scale9Width="75" Scale9Height="111" ctype="ImageViewObjectData">
                        <Size X="75.0000" Y="111.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="937987508" Tag="669" IconVisible="False" LeftMargin="13.0000" RightMargin="14.0000" TopMargin="27.5000" BottomMargin="6.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="15" Scale9OriginY="25" Scale9Width="18" Scale9Height="27" ctype="ImageViewObjectData">
                            <Size X="48.0000" Y="77.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="37.0000" Y="45.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.4933" Y="0.4054" />
                            <PreSize X="0.6400" Y="0.6937" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_big_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint />
                        <Position />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition />
                        <PreSize X="0.0720" Y="1.0091" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_hand.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="tile_img_1" ActionTag="-1535063121" Tag="670" IconVisible="False" LeftMargin="73.0000" RightMargin="894.0000" TopMargin="-1.0000" TouchEnable="True" Scale9Width="75" Scale9Height="111" ctype="ImageViewObjectData">
                        <Size X="75.0000" Y="111.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="865295713" Tag="671" IconVisible="False" LeftMargin="13.0000" RightMargin="14.0000" TopMargin="27.5000" BottomMargin="6.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="15" Scale9OriginY="25" Scale9Width="18" Scale9Height="27" ctype="ImageViewObjectData">
                            <Size X="48.0000" Y="77.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="37.0000" Y="45.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.4933" Y="0.4054" />
                            <PreSize X="0.6400" Y="0.6937" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_big_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint />
                        <Position X="73.0000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.0701" />
                        <PreSize X="0.0720" Y="1.0091" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_hand.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="tile_img_2" ActionTag="2006779682" Tag="672" IconVisible="False" LeftMargin="146.0000" RightMargin="821.0000" TopMargin="-1.0000" TouchEnable="True" Scale9Width="75" Scale9Height="111" ctype="ImageViewObjectData">
                        <Size X="75.0000" Y="111.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="-1179590668" Tag="673" IconVisible="False" LeftMargin="13.0000" RightMargin="14.0000" TopMargin="27.5000" BottomMargin="6.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="15" Scale9OriginY="25" Scale9Width="18" Scale9Height="27" ctype="ImageViewObjectData">
                            <Size X="48.0000" Y="77.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="37.0000" Y="45.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.4933" Y="0.4054" />
                            <PreSize X="0.6400" Y="0.6937" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_big_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint />
                        <Position X="146.0000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.1401" />
                        <PreSize X="0.0720" Y="1.0091" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_hand.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="tile_img_3" ActionTag="-854684088" Tag="674" IconVisible="False" LeftMargin="219.0000" RightMargin="748.0000" TopMargin="-1.0000" TouchEnable="True" Scale9Width="75" Scale9Height="111" ctype="ImageViewObjectData">
                        <Size X="75.0000" Y="111.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="-994355186" Tag="675" IconVisible="False" LeftMargin="13.0000" RightMargin="14.0000" TopMargin="27.5000" BottomMargin="6.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="15" Scale9OriginY="25" Scale9Width="18" Scale9Height="27" ctype="ImageViewObjectData">
                            <Size X="48.0000" Y="77.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="37.0000" Y="45.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.4933" Y="0.4054" />
                            <PreSize X="0.6400" Y="0.6937" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_big_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint />
                        <Position X="219.0000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.2102" />
                        <PreSize X="0.0720" Y="1.0091" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_hand.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="tile_img_4" ActionTag="-2099292101" Tag="676" IconVisible="False" LeftMargin="292.0000" RightMargin="675.0000" TopMargin="-1.0000" TouchEnable="True" Scale9Width="75" Scale9Height="111" ctype="ImageViewObjectData">
                        <Size X="75.0000" Y="111.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="1261097221" Tag="677" IconVisible="False" LeftMargin="13.0000" RightMargin="14.0000" TopMargin="27.5000" BottomMargin="6.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="15" Scale9OriginY="25" Scale9Width="18" Scale9Height="27" ctype="ImageViewObjectData">
                            <Size X="48.0000" Y="77.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="37.0000" Y="45.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.4933" Y="0.4054" />
                            <PreSize X="0.6400" Y="0.6937" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_big_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint />
                        <Position X="292.0000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.2802" />
                        <PreSize X="0.0720" Y="1.0091" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_hand.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="tile_img_5" ActionTag="-1997307684" Tag="678" IconVisible="False" LeftMargin="365.0000" RightMargin="602.0000" TopMargin="-1.0000" TouchEnable="True" Scale9Width="75" Scale9Height="111" ctype="ImageViewObjectData">
                        <Size X="75.0000" Y="111.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="-1954255159" Tag="679" IconVisible="False" LeftMargin="13.0000" RightMargin="14.0000" TopMargin="27.5000" BottomMargin="6.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="15" Scale9OriginY="25" Scale9Width="18" Scale9Height="27" ctype="ImageViewObjectData">
                            <Size X="48.0000" Y="77.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="37.0000" Y="45.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.4933" Y="0.4054" />
                            <PreSize X="0.6400" Y="0.6937" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_big_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint />
                        <Position X="365.0000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.3503" />
                        <PreSize X="0.0720" Y="1.0091" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_hand.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="tile_img_6" ActionTag="94007544" Tag="680" IconVisible="False" LeftMargin="438.0000" RightMargin="529.0000" TopMargin="-1.0000" TouchEnable="True" Scale9Width="75" Scale9Height="111" ctype="ImageViewObjectData">
                        <Size X="75.0000" Y="111.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="266744074" Tag="681" IconVisible="False" LeftMargin="13.0000" RightMargin="14.0000" TopMargin="27.5000" BottomMargin="6.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="15" Scale9OriginY="25" Scale9Width="18" Scale9Height="27" ctype="ImageViewObjectData">
                            <Size X="48.0000" Y="77.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="37.0000" Y="45.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.4933" Y="0.4054" />
                            <PreSize X="0.6400" Y="0.6937" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_big_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint />
                        <Position X="438.0000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.4203" />
                        <PreSize X="0.0720" Y="1.0091" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_hand.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="tile_img_7" ActionTag="-417198141" Tag="682" IconVisible="False" LeftMargin="511.0000" RightMargin="456.0000" TopMargin="-1.0000" TouchEnable="True" Scale9Width="75" Scale9Height="111" ctype="ImageViewObjectData">
                        <Size X="75.0000" Y="111.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="-1913968740" Tag="683" IconVisible="False" LeftMargin="13.0000" RightMargin="14.0000" TopMargin="27.5000" BottomMargin="6.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="15" Scale9OriginY="25" Scale9Width="18" Scale9Height="27" ctype="ImageViewObjectData">
                            <Size X="48.0000" Y="77.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="37.0000" Y="45.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.4933" Y="0.4054" />
                            <PreSize X="0.6400" Y="0.6937" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_big_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint />
                        <Position X="511.0000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.4904" />
                        <PreSize X="0.0720" Y="1.0091" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_hand.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="tile_img_8" ActionTag="1038132817" Tag="684" IconVisible="False" LeftMargin="584.0000" RightMargin="383.0000" TopMargin="-1.0000" TouchEnable="True" Scale9Width="75" Scale9Height="111" ctype="ImageViewObjectData">
                        <Size X="75.0000" Y="111.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="1277671197" Tag="685" IconVisible="False" LeftMargin="13.0000" RightMargin="14.0000" TopMargin="27.5000" BottomMargin="6.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="15" Scale9OriginY="25" Scale9Width="18" Scale9Height="27" ctype="ImageViewObjectData">
                            <Size X="48.0000" Y="77.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="37.0000" Y="45.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.4933" Y="0.4054" />
                            <PreSize X="0.6400" Y="0.6937" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_big_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint />
                        <Position X="584.0000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.5605" />
                        <PreSize X="0.0720" Y="1.0091" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_hand.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="tile_img_9" ActionTag="177642945" Tag="686" IconVisible="False" LeftMargin="657.0000" RightMargin="310.0000" TopMargin="-1.0000" TouchEnable="True" Scale9Width="75" Scale9Height="111" ctype="ImageViewObjectData">
                        <Size X="75.0000" Y="111.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="1863882988" Tag="687" IconVisible="False" LeftMargin="13.0000" RightMargin="14.0000" TopMargin="27.5000" BottomMargin="6.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="15" Scale9OriginY="25" Scale9Width="18" Scale9Height="27" ctype="ImageViewObjectData">
                            <Size X="48.0000" Y="77.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="37.0000" Y="45.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.4933" Y="0.4054" />
                            <PreSize X="0.6400" Y="0.6937" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_big_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint />
                        <Position X="657.0000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.6305" />
                        <PreSize X="0.0720" Y="1.0091" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_hand.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="tile_img_10" ActionTag="-176835265" Tag="688" IconVisible="False" LeftMargin="730.0000" RightMargin="237.0000" TopMargin="-1.0000" TouchEnable="True" Scale9Width="75" Scale9Height="111" ctype="ImageViewObjectData">
                        <Size X="75.0000" Y="111.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="-349075605" Tag="689" IconVisible="False" LeftMargin="13.0000" RightMargin="14.0000" TopMargin="27.5000" BottomMargin="6.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="15" Scale9OriginY="25" Scale9Width="18" Scale9Height="27" ctype="ImageViewObjectData">
                            <Size X="48.0000" Y="77.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="37.0000" Y="45.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.4933" Y="0.4054" />
                            <PreSize X="0.6400" Y="0.6937" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_big_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint />
                        <Position X="730.0000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.7006" />
                        <PreSize X="0.0720" Y="1.0091" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_hand.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="tile_img_11" ActionTag="-429281408" Tag="690" IconVisible="False" LeftMargin="803.0000" RightMargin="164.0000" TopMargin="-1.0000" TouchEnable="True" Scale9Width="75" Scale9Height="111" ctype="ImageViewObjectData">
                        <Size X="75.0000" Y="111.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="-476459178" Tag="691" IconVisible="False" LeftMargin="13.0000" RightMargin="14.0000" TopMargin="27.5000" BottomMargin="6.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="15" Scale9OriginY="25" Scale9Width="18" Scale9Height="27" ctype="ImageViewObjectData">
                            <Size X="48.0000" Y="77.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="37.0000" Y="45.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.4933" Y="0.4054" />
                            <PreSize X="0.6400" Y="0.6937" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_big_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint />
                        <Position X="803.0000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.7706" />
                        <PreSize X="0.0720" Y="1.0091" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_hand.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="tile_img_12" ActionTag="-1768045485" Tag="692" IconVisible="False" LeftMargin="876.0000" RightMargin="91.0000" TopMargin="-1.0000" TouchEnable="True" Scale9Width="75" Scale9Height="111" ctype="ImageViewObjectData">
                        <Size X="75.0000" Y="111.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="-2118053370" Tag="693" IconVisible="False" LeftMargin="13.0000" RightMargin="14.0000" TopMargin="27.5000" BottomMargin="6.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="15" Scale9OriginY="25" Scale9Width="18" Scale9Height="27" ctype="ImageViewObjectData">
                            <Size X="48.0000" Y="77.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="37.0000" Y="45.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.4933" Y="0.4054" />
                            <PreSize X="0.6400" Y="0.6937" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_big_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint />
                        <Position X="876.0000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.8407" />
                        <PreSize X="0.0720" Y="1.0091" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_hand.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="tile_img_13" ActionTag="-2137338675" Tag="694" IconVisible="False" LeftMargin="949.0000" RightMargin="18.0000" TopMargin="-1.0000" TouchEnable="True" Scale9Width="75" Scale9Height="111" ctype="ImageViewObjectData">
                        <Size X="75.0000" Y="111.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="357494563" Tag="695" IconVisible="False" LeftMargin="13.0000" RightMargin="14.0000" TopMargin="27.5000" BottomMargin="6.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="15" Scale9OriginY="25" Scale9Width="18" Scale9Height="27" ctype="ImageViewObjectData">
                            <Size X="48.0000" Y="77.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="37.0000" Y="45.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.4933" Y="0.4054" />
                            <PreSize X="0.6400" Y="0.6937" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_big_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint />
                        <Position X="949.0000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.9107" />
                        <PreSize X="0.0720" Y="1.0091" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_hand.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="mask_panel" ActionTag="-1024632555" VisibleForFrame="False" Tag="696" IconVisible="False" PercentWidthEnable="True" PercentHeightEnable="True" PercentWidthEnabled="True" PercentHeightEnabled="True" TouchEnable="True" ClipAble="False" BackColorAlpha="102" ColorAngle="90.0000" Scale9Width="1" Scale9Height="1" ctype="PanelObjectData">
                        <Size X="1042.0000" Y="110.0000" />
                        <AnchorPoint />
                        <Position />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition />
                        <PreSize X="1.0000" Y="1.0000" />
                        <SingleColor A="255" R="150" G="200" B="255" />
                        <FirstColor A="255" R="150" G="200" B="255" />
                        <EndColor A="255" R="255" G="255" B="255" />
                        <ColorVector ScaleY="1.0000" />
                      </AbstractNodeData>
                    </Children>
                    <AnchorPoint />
                    <Position />
                    <Scale ScaleX="0.5500" ScaleY="0.5500" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition />
                    <PreSize X="1.0000" Y="1.8644" />
                    <SingleColor A="255" R="150" G="200" B="255" />
                    <FirstColor A="255" R="150" G="200" B="255" />
                    <EndColor A="255" R="255" G="255" B="255" />
                    <ColorVector ScaleY="1.0000" />
                  </AbstractNodeData>
                  <AbstractNodeData Name="player_up_panel" ActionTag="1148645524" Tag="697" IconVisible="False" ClipAble="False" BackColorAlpha="102" ColorAngle="90.0000" Scale9Width="1" Scale9Height="1" ctype="PanelObjectData">
                    <Size X="1042.0000" Y="59.0000" />
                    <Children>
                      <AbstractNodeData Name="tile_img_0" ActionTag="1803849124" Tag="698" IconVisible="False" PositionPercentYEnabled="True" RightMargin="1002.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                        <Size X="40.0000" Y="59.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="883137320" Tag="699" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                            <Size X="25.0000" Y="39.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="20.0000" Y="37.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.5000" Y="0.6271" />
                            <PreSize X="0.6250" Y="0.6610" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint ScaleY="0.5000" />
                        <Position Y="29.5000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition Y="0.5000" />
                        <PreSize X="0.0384" Y="1.0000" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="tile_img_1" ActionTag="309217000" Tag="700" IconVisible="False" PositionPercentYEnabled="True" LeftMargin="38.0000" RightMargin="964.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                        <Size X="40.0000" Y="59.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="403839768" Tag="701" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                            <Size X="25.0000" Y="39.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="20.0000" Y="37.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.5000" Y="0.6271" />
                            <PreSize X="0.6250" Y="0.6610" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint ScaleY="0.5000" />
                        <Position X="38.0000" Y="29.5000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.0365" Y="0.5000" />
                        <PreSize X="0.0384" Y="1.0000" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="tile_img_2" ActionTag="-331717097" Tag="702" IconVisible="False" PositionPercentYEnabled="True" LeftMargin="76.0000" RightMargin="926.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                        <Size X="40.0000" Y="59.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="-527269289" Tag="703" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                            <Size X="25.0000" Y="39.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="20.0000" Y="37.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.5000" Y="0.6271" />
                            <PreSize X="0.6250" Y="0.6610" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint ScaleY="0.5000" />
                        <Position X="76.0000" Y="29.5000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.0729" Y="0.5000" />
                        <PreSize X="0.0384" Y="1.0000" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="tile_img_3" ActionTag="2118341661" Tag="704" IconVisible="False" PositionPercentYEnabled="True" LeftMargin="136.0000" RightMargin="866.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                        <Size X="40.0000" Y="59.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="-1722960553" Tag="705" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                            <Size X="25.0000" Y="39.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="20.0000" Y="37.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.5000" Y="0.6271" />
                            <PreSize X="0.6250" Y="0.6610" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint ScaleY="0.5000" />
                        <Position X="136.0000" Y="29.5000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.1305" Y="0.5000" />
                        <PreSize X="0.0384" Y="1.0000" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="tile_img_4" ActionTag="1177722752" Tag="706" IconVisible="False" PositionPercentYEnabled="True" LeftMargin="172.0000" RightMargin="830.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                        <Size X="40.0000" Y="59.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="98275200" Tag="707" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                            <Size X="25.0000" Y="39.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="20.0000" Y="37.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.5000" Y="0.6271" />
                            <PreSize X="0.6250" Y="0.6610" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint ScaleY="0.5000" />
                        <Position X="172.0000" Y="29.5000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.1651" Y="0.5000" />
                        <PreSize X="0.0384" Y="1.0000" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="tile_img_5" ActionTag="-587095145" Tag="708" IconVisible="False" PositionPercentYEnabled="True" LeftMargin="208.0000" RightMargin="794.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                        <Size X="40.0000" Y="59.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="1580999934" Tag="709" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                            <Size X="25.0000" Y="39.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="20.0000" Y="37.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.5000" Y="0.6271" />
                            <PreSize X="0.6250" Y="0.6610" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint ScaleY="0.5000" />
                        <Position X="208.0000" Y="29.5000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.1996" Y="0.5000" />
                        <PreSize X="0.0384" Y="1.0000" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="tile_img_6" ActionTag="-192095759" Tag="710" IconVisible="False" PositionPercentYEnabled="True" LeftMargin="268.0000" RightMargin="734.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                        <Size X="40.0000" Y="59.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="-1640137124" Tag="711" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                            <Size X="25.0000" Y="39.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="20.0000" Y="37.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.5000" Y="0.6271" />
                            <PreSize X="0.6250" Y="0.6610" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint ScaleY="0.5000" />
                        <Position X="268.0000" Y="29.5000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.2572" Y="0.5000" />
                        <PreSize X="0.0384" Y="1.0000" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="tile_img_7" ActionTag="1484881376" Tag="712" IconVisible="False" PositionPercentYEnabled="True" LeftMargin="306.0000" RightMargin="696.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                        <Size X="40.0000" Y="59.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="-533696429" Tag="713" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                            <Size X="25.0000" Y="39.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="20.0000" Y="37.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.5000" Y="0.6271" />
                            <PreSize X="0.6250" Y="0.6610" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint ScaleY="0.5000" />
                        <Position X="306.0000" Y="29.5000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.2937" Y="0.5000" />
                        <PreSize X="0.0384" Y="1.0000" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="tile_img_8" ActionTag="659159658" Tag="714" IconVisible="False" PositionPercentYEnabled="True" LeftMargin="344.0000" RightMargin="658.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                        <Size X="40.0000" Y="59.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="1454752428" Tag="715" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                            <Size X="25.0000" Y="39.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="20.0000" Y="37.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.5000" Y="0.6271" />
                            <PreSize X="0.6250" Y="0.6610" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint ScaleY="0.5000" />
                        <Position X="344.0000" Y="29.5000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.3301" Y="0.5000" />
                        <PreSize X="0.0384" Y="1.0000" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="tile_img_9" ActionTag="478485614" Tag="716" IconVisible="False" PositionPercentYEnabled="True" LeftMargin="404.0000" RightMargin="598.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                        <Size X="40.0000" Y="59.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="-1715973451" Tag="717" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                            <Size X="25.0000" Y="39.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="20.0000" Y="37.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.5000" Y="0.6271" />
                            <PreSize X="0.6250" Y="0.6610" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint ScaleY="0.5000" />
                        <Position X="404.0000" Y="29.5000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.3877" Y="0.5000" />
                        <PreSize X="0.0384" Y="1.0000" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="tile_img_10" ActionTag="-804463181" Tag="718" IconVisible="False" PositionPercentYEnabled="True" LeftMargin="442.0000" RightMargin="560.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                        <Size X="40.0000" Y="59.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="1378727102" Tag="719" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                            <Size X="25.0000" Y="39.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="20.0000" Y="37.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.5000" Y="0.6271" />
                            <PreSize X="0.6250" Y="0.6610" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint ScaleY="0.5000" />
                        <Position X="442.0000" Y="29.5000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.4242" Y="0.5000" />
                        <PreSize X="0.0384" Y="1.0000" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="tile_img_11" ActionTag="-62263223" Tag="720" IconVisible="False" PositionPercentYEnabled="True" LeftMargin="480.0000" RightMargin="522.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                        <Size X="40.0000" Y="59.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="-1952067610" Tag="721" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                            <Size X="25.0000" Y="39.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="20.0000" Y="37.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.5000" Y="0.6271" />
                            <PreSize X="0.6250" Y="0.6610" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint ScaleY="0.5000" />
                        <Position X="480.0000" Y="29.5000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.4607" Y="0.5000" />
                        <PreSize X="0.0384" Y="1.0000" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                    </Children>
                    <AnchorPoint />
                    <Position />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition />
                    <PreSize X="1.0000" Y="1.0000" />
                    <SingleColor A="255" R="150" G="200" B="255" />
                    <FirstColor A="255" R="150" G="200" B="255" />
                    <EndColor A="255" R="255" G="255" B="255" />
                    <ColorVector ScaleY="1.0000" />
                  </AbstractNodeData>
                </Children>
                <AnchorPoint ScaleX="0.4500" ScaleY="0.5000" />
                <Position X="600.0000" Y="38.6002" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.6000" Y="0.2757" />
                <PreSize X="1.0420" Y="0.4214" />
                <SingleColor A="255" R="150" G="200" B="255" />
                <FirstColor A="255" R="150" G="200" B="255" />
                <EndColor A="255" R="255" G="255" B="255" />
                <ColorVector ScaleY="1.0000" />
              </AbstractNodeData>
              <AbstractNodeData Name="player_info_panel" ActionTag="1185459231" Tag="722" IconVisible="False" LeftMargin="0.0400" RightMargin="869.9600" ClipAble="False" BackColorAlpha="127" ColorAngle="90.0000" Scale9Width="1" Scale9Height="1" ctype="PanelObjectData">
                <Size X="130.0000" Y="140.0000" />
                <Children>
                  <AbstractNodeData Name="portrait_sprite" ActionTag="-319301317" Tag="364" IconVisible="False" LeftMargin="40.0000" RightMargin="40.0000" TopMargin="33.0000" BottomMargin="57.0000" ctype="SpriteObjectData">
                    <Size X="50.0000" Y="50.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="65.0000" Y="82.0000" />
                    <Scale ScaleX="1.6000" ScaleY="1.6000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.5000" Y="0.5857" />
                    <PreSize X="0.3846" Y="0.3571" />
                    <FileData Type="Normal" Path="Default/common_portrait_mask.png" Plist="" />
                    <BlendFunc Src="1" Dst="771" />
                  </AbstractNodeData>
                  <AbstractNodeData Name="frame_img" ActionTag="-1851920543" Tag="725" IconVisible="False" PositionPercentXEnabled="True" PositionPercentYEnabled="True" LeftMargin="18.5000" RightMargin="18.5000" TopMargin="11.0040" BottomMargin="16.9960" LeftEage="24" RightEage="24" TopEage="24" BottomEage="24" Scale9OriginX="24" Scale9OriginY="24" Scale9Width="45" Scale9Height="64" ctype="ImageViewObjectData">
                    <Size X="93.0000" Y="112.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="65.0000" Y="72.9960" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.5000" Y="0.5214" />
                    <PreSize X="0.7154" Y="0.8000" />
                    <FileData Type="Normal" Path="Default/common_portrait_frame.png" Plist="" />
                  </AbstractNodeData>
                  <AbstractNodeData Name="name_label" ActionTag="513910789" Tag="726" IconVisible="False" PositionPercentXEnabled="True" LeftMargin="5.0000" RightMargin="5.0000" TopMargin="110.0000" BottomMargin="10.0000" IsCustomSize="True" FontSize="20" LabelText="我我我我我我我" ShadowOffsetX="2.0000" ShadowOffsetY="-2.0000" ctype="TextObjectData">
                    <Size X="120.0000" Y="20.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="65.0000" Y="20.0000" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="253" B="217" />
                    <PrePosition X="0.5000" Y="0.1429" />
                    <PreSize X="0.9231" Y="0.1429" />
                    <OutlineColor A="255" R="255" G="0" B="0" />
                    <ShadowColor A="255" R="110" G="110" B="110" />
                  </AbstractNodeData>
                </Children>
                <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                <Position X="65.0400" Y="70.0000" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.0650" Y="0.5000" />
                <PreSize X="0.1300" Y="1.0000" />
                <SingleColor A="255" R="0" G="0" B="0" />
                <FirstColor A="255" R="150" G="200" B="255" />
                <EndColor A="255" R="255" G="255" B="255" />
                <ColorVector ScaleY="1.0000" />
              </AbstractNodeData>
              <AbstractNodeData Name="win_label" ActionTag="-1744321016" VisibleForFrame="False" Tag="699" IconVisible="False" LeftMargin="120.0000" RightMargin="680.0000" TopMargin="16.0002" BottomMargin="87.9998" IsCustomSize="True" FontSize="36" LabelText="自摸" HorizontalAlignmentType="HT_Center" ShadowOffsetX="2.0000" ShadowOffsetY="-2.0000" ctype="TextObjectData">
                <Size X="200.0000" Y="36.0000" />
                <AnchorPoint ScaleY="0.5000" />
                <Position X="120.0000" Y="105.9998" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="223" />
                <PrePosition X="0.1200" Y="0.7571" />
                <PreSize X="0.2000" Y="0.2571" />
                <OutlineColor A="255" R="255" G="0" B="0" />
                <ShadowColor A="255" R="110" G="110" B="110" />
              </AbstractNodeData>
            </Children>
            <AnchorPoint ScaleX="0.6000" ScaleY="0.5000" />
            <Position X="640.0000" Y="633.6000" />
            <Scale ScaleX="1.0000" ScaleY="1.0000" />
            <CColor A="255" R="255" G="255" B="255" />
            <PrePosition X="0.5000" Y="0.8800" />
            <PreSize X="0.7813" Y="0.1944" />
            <SingleColor A="255" R="150" G="200" B="255" />
            <FirstColor A="255" R="150" G="200" B="255" />
            <EndColor A="255" R="255" G="255" B="255" />
            <ColorVector ScaleY="1.0000" />
          </AbstractNodeData>
          <AbstractNodeData Name="player_panel1" ActionTag="-1859352339" Tag="984" IconVisible="False" PositionPercentXEnabled="True" PositionPercentYEnabled="True" LeftMargin="40.0000" RightMargin="240.0000" TopMargin="160.4000" BottomMargin="419.6000" ClipAble="False" BackColorAlpha="102" ColorAngle="90.0000" Scale9Enable="True" LeftEage="11" RightEage="11" TopEage="13" BottomEage="13" Scale9OriginX="-11" Scale9OriginY="-13" Scale9Width="22" Scale9Height="26" ctype="PanelObjectData">
            <Size X="1000.0000" Y="140.0000" />
            <Children>
              <AbstractNodeData Name="bg_img" ActionTag="1472407395" Tag="985" IconVisible="False" PositionPercentXEnabled="True" PositionPercentYEnabled="True" PercentWidthEnable="True" PercentHeightEnable="True" PercentWidthEnabled="True" PercentHeightEnabled="True" LeftMargin="-15.0000" RightMargin="-15.0000" TopMargin="-9.8000" BottomMargin="-18.2000" Scale9Enable="True" LeftEage="11" TopEage="13" BottomEage="13" Scale9OriginX="11" Scale9OriginY="13" Scale9Width="916" Scale9Height="121" ctype="ImageViewObjectData">
                <Size X="1030.0000" Y="168.0000" />
                <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                <Position X="500.0000" Y="65.8000" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.5000" Y="0.4700" />
                <PreSize X="1.0300" Y="1.2000" />
                <FileData Type="Normal" Path="SettlementUI/settlement_lose_bg.png" Plist="" />
              </AbstractNodeData>
              <AbstractNodeData Name="score_label" ActionTag="1868260682" Tag="986" IconVisible="False" LeftMargin="780.0000" RightMargin="100.0000" TopMargin="46.0000" BottomMargin="46.0000" IsCustomSize="True" FontSize="48" LabelText="-1000" ShadowOffsetX="2.0000" ShadowOffsetY="-2.0000" ctype="TextObjectData">
                <Size X="120.0000" Y="48.0000" />
                <AnchorPoint ScaleY="0.5000" />
                <Position X="780.0000" Y="70.0000" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="245" G="218" B="96" />
                <PrePosition X="0.7800" Y="0.5000" />
                <PreSize X="0.1200" Y="0.3429" />
                <OutlineColor A="255" R="255" G="0" B="0" />
                <ShadowColor A="255" R="110" G="110" B="110" />
              </AbstractNodeData>
              <AbstractNodeData Name="player_lucky_tile_panel" ActionTag="-346121410" VisibleForFrame="False" Tag="987" IconVisible="False" LeftMargin="400.0000" RightMargin="260.0000" TopMargin="8.8996" BottomMargin="72.1004" ClipAble="False" BackColorAlpha="102" ColorAngle="90.0000" Scale9Width="1" Scale9Height="1" ctype="PanelObjectData">
                <Size X="340.0000" Y="59.0000" />
                <Children>
                  <AbstractNodeData Name="tile_img_0" ActionTag="-725007626" Tag="988" IconVisible="False" PositionPercentYEnabled="True" RightMargin="300.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                    <Size X="40.0000" Y="59.0000" />
                    <Children>
                      <AbstractNodeData Name="mahjong_img" ActionTag="1834255222" Tag="989" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                        <Size X="25.0000" Y="39.0000" />
                        <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                        <Position X="20.0000" Y="37.0000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.5000" Y="0.6271" />
                        <PreSize X="0.6250" Y="0.6610" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="mark_img" ActionTag="959299018" Tag="990" IconVisible="False" PositionPercentXEnabled="True" PositionPercentYEnabled="True" LeftMargin="-2.0000" RightMargin="-2.0000" TopMargin="22.1600" BottomMargin="-6.1600" LeftEage="14" RightEage="14" TopEage="14" BottomEage="14" Scale9OriginX="14" Scale9OriginY="14" Scale9Width="16" Scale9Height="15" ctype="ImageViewObjectData">
                        <Size X="44.0000" Y="43.0000" />
                        <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                        <Position X="20.0000" Y="15.3400" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.5000" Y="0.2600" />
                        <PreSize X="1.1000" Y="0.7288" />
                        <FileData Type="Normal" Path="Default/common_rightmark.png" Plist="" />
                      </AbstractNodeData>
                    </Children>
                    <AnchorPoint ScaleY="0.5000" />
                    <Position Y="29.5000" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition Y="0.5000" />
                    <PreSize X="0.1176" Y="1.0000" />
                    <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
                  </AbstractNodeData>
                  <AbstractNodeData Name="tile_img_1" ActionTag="890521298" Tag="991" IconVisible="False" PositionPercentYEnabled="True" LeftMargin="50.0000" RightMargin="250.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                    <Size X="40.0000" Y="59.0000" />
                    <Children>
                      <AbstractNodeData Name="mahjong_img" ActionTag="1703924238" Tag="992" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                        <Size X="25.0000" Y="39.0000" />
                        <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                        <Position X="20.0000" Y="37.0000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.5000" Y="0.6271" />
                        <PreSize X="0.6250" Y="0.6610" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="mark_img" ActionTag="-1933153018" Tag="993" IconVisible="False" PositionPercentXEnabled="True" PositionPercentYEnabled="True" LeftMargin="-2.0000" RightMargin="-2.0000" TopMargin="22.1600" BottomMargin="-6.1600" LeftEage="14" RightEage="14" TopEage="14" BottomEage="14" Scale9OriginX="14" Scale9OriginY="14" Scale9Width="16" Scale9Height="15" ctype="ImageViewObjectData">
                        <Size X="44.0000" Y="43.0000" />
                        <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                        <Position X="20.0000" Y="15.3400" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.5000" Y="0.2600" />
                        <PreSize X="1.1000" Y="0.7288" />
                        <FileData Type="Normal" Path="Default/common_rightmark.png" Plist="" />
                      </AbstractNodeData>
                    </Children>
                    <AnchorPoint ScaleY="0.5000" />
                    <Position X="50.0000" Y="29.5000" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.1471" Y="0.5000" />
                    <PreSize X="0.1176" Y="1.0000" />
                    <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
                  </AbstractNodeData>
                  <AbstractNodeData Name="tile_img_2" ActionTag="-1195805793" Tag="994" IconVisible="False" PositionPercentYEnabled="True" LeftMargin="100.0000" RightMargin="200.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                    <Size X="40.0000" Y="59.0000" />
                    <Children>
                      <AbstractNodeData Name="mahjong_img" ActionTag="-978041829" Tag="995" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                        <Size X="25.0000" Y="39.0000" />
                        <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                        <Position X="20.0000" Y="37.0000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.5000" Y="0.6271" />
                        <PreSize X="0.6250" Y="0.6610" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="mark_img" ActionTag="-783059942" Tag="996" IconVisible="False" PositionPercentXEnabled="True" PositionPercentYEnabled="True" LeftMargin="-2.0000" RightMargin="-2.0000" TopMargin="22.1600" BottomMargin="-6.1600" LeftEage="14" RightEage="14" TopEage="14" BottomEage="14" Scale9OriginX="14" Scale9OriginY="14" Scale9Width="16" Scale9Height="15" ctype="ImageViewObjectData">
                        <Size X="44.0000" Y="43.0000" />
                        <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                        <Position X="20.0000" Y="15.3400" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.5000" Y="0.2600" />
                        <PreSize X="1.1000" Y="0.7288" />
                        <FileData Type="Normal" Path="Default/common_rightmark.png" Plist="" />
                      </AbstractNodeData>
                    </Children>
                    <AnchorPoint ScaleY="0.5000" />
                    <Position X="100.0000" Y="29.5000" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.2941" Y="0.5000" />
                    <PreSize X="0.1176" Y="1.0000" />
                    <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
                  </AbstractNodeData>
                  <AbstractNodeData Name="tile_img_3" ActionTag="1922164685" Tag="997" IconVisible="False" PositionPercentYEnabled="True" LeftMargin="150.0000" RightMargin="150.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                    <Size X="40.0000" Y="59.0000" />
                    <Children>
                      <AbstractNodeData Name="mahjong_img" ActionTag="457814071" Tag="998" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                        <Size X="25.0000" Y="39.0000" />
                        <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                        <Position X="20.0000" Y="37.0000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.5000" Y="0.6271" />
                        <PreSize X="0.6250" Y="0.6610" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="mark_img" ActionTag="-1360626164" Tag="999" IconVisible="False" PositionPercentXEnabled="True" PositionPercentYEnabled="True" LeftMargin="-2.0000" RightMargin="-2.0000" TopMargin="22.1600" BottomMargin="-6.1600" LeftEage="14" RightEage="14" TopEage="14" BottomEage="14" Scale9OriginX="14" Scale9OriginY="14" Scale9Width="16" Scale9Height="15" ctype="ImageViewObjectData">
                        <Size X="44.0000" Y="43.0000" />
                        <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                        <Position X="20.0000" Y="15.3400" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.5000" Y="0.2600" />
                        <PreSize X="1.1000" Y="0.7288" />
                        <FileData Type="Normal" Path="Default/common_rightmark.png" Plist="" />
                      </AbstractNodeData>
                    </Children>
                    <AnchorPoint ScaleY="0.5000" />
                    <Position X="150.0000" Y="29.5000" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.4412" Y="0.5000" />
                    <PreSize X="0.1176" Y="1.0000" />
                    <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
                  </AbstractNodeData>
                  <AbstractNodeData Name="tile_img_4" ActionTag="-1476081041" Tag="825" IconVisible="False" PositionPercentYEnabled="True" LeftMargin="200.0000" RightMargin="100.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                    <Size X="40.0000" Y="59.0000" />
                    <Children>
                      <AbstractNodeData Name="mahjong_img" ActionTag="-241101419" Tag="826" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                        <Size X="25.0000" Y="39.0000" />
                        <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                        <Position X="20.0000" Y="37.0000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.5000" Y="0.6271" />
                        <PreSize X="0.6250" Y="0.6610" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="mark_img" ActionTag="680181967" Tag="827" IconVisible="False" PositionPercentXEnabled="True" PositionPercentYEnabled="True" LeftMargin="-2.0000" RightMargin="-2.0000" TopMargin="22.1600" BottomMargin="-6.1600" LeftEage="14" RightEage="14" TopEage="14" BottomEage="14" Scale9OriginX="14" Scale9OriginY="14" Scale9Width="16" Scale9Height="15" ctype="ImageViewObjectData">
                        <Size X="44.0000" Y="43.0000" />
                        <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                        <Position X="20.0000" Y="15.3400" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.5000" Y="0.2600" />
                        <PreSize X="1.1000" Y="0.7288" />
                        <FileData Type="Normal" Path="Default/common_rightmark.png" Plist="" />
                      </AbstractNodeData>
                    </Children>
                    <AnchorPoint ScaleY="0.5000" />
                    <Position X="200.0000" Y="29.5000" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.5882" Y="0.5000" />
                    <PreSize X="0.1176" Y="1.0000" />
                    <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
                  </AbstractNodeData>
                  <AbstractNodeData Name="tile_img_5" ActionTag="-617590350" Tag="828" IconVisible="False" PositionPercentYEnabled="True" LeftMargin="250.0000" RightMargin="50.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                    <Size X="40.0000" Y="59.0000" />
                    <Children>
                      <AbstractNodeData Name="mahjong_img" ActionTag="597298923" Tag="829" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                        <Size X="25.0000" Y="39.0000" />
                        <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                        <Position X="20.0000" Y="37.0000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.5000" Y="0.6271" />
                        <PreSize X="0.6250" Y="0.6610" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="mark_img" ActionTag="2070044778" Tag="830" IconVisible="False" PositionPercentXEnabled="True" PositionPercentYEnabled="True" LeftMargin="-2.0000" RightMargin="-2.0000" TopMargin="22.1600" BottomMargin="-6.1600" LeftEage="14" RightEage="14" TopEage="14" BottomEage="14" Scale9OriginX="14" Scale9OriginY="14" Scale9Width="16" Scale9Height="15" ctype="ImageViewObjectData">
                        <Size X="44.0000" Y="43.0000" />
                        <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                        <Position X="20.0000" Y="15.3400" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.5000" Y="0.2600" />
                        <PreSize X="1.1000" Y="0.7288" />
                        <FileData Type="Normal" Path="Default/common_rightmark.png" Plist="" />
                      </AbstractNodeData>
                    </Children>
                    <AnchorPoint ScaleY="0.5000" />
                    <Position X="250.0000" Y="29.5000" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.7353" Y="0.5000" />
                    <PreSize X="0.1176" Y="1.0000" />
                    <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
                  </AbstractNodeData>
                  <AbstractNodeData Name="tile_img_6" ActionTag="-938378000" Tag="467" IconVisible="False" PositionPercentYEnabled="True" LeftMargin="300.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                    <Size X="40.0000" Y="59.0000" />
                    <Children>
                      <AbstractNodeData Name="mahjong_img" ActionTag="2125163231" Tag="468" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                        <Size X="25.0000" Y="39.0000" />
                        <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                        <Position X="20.0000" Y="37.0000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.5000" Y="0.6271" />
                        <PreSize X="0.6250" Y="0.6610" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="mark_img" ActionTag="-1753329958" Tag="469" IconVisible="False" PositionPercentXEnabled="True" PositionPercentYEnabled="True" LeftMargin="-2.0000" RightMargin="-2.0000" TopMargin="22.1600" BottomMargin="-6.1600" LeftEage="14" RightEage="14" TopEage="14" BottomEage="14" Scale9OriginX="14" Scale9OriginY="14" Scale9Width="16" Scale9Height="15" ctype="ImageViewObjectData">
                        <Size X="44.0000" Y="43.0000" />
                        <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                        <Position X="20.0000" Y="15.3400" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.5000" Y="0.2600" />
                        <PreSize X="1.1000" Y="0.7288" />
                        <FileData Type="Normal" Path="Default/common_rightmark.png" Plist="" />
                      </AbstractNodeData>
                    </Children>
                    <AnchorPoint ScaleY="0.5000" />
                    <Position X="300.0000" Y="29.5000" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.8824" Y="0.5000" />
                    <PreSize X="0.1176" Y="1.0000" />
                    <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
                  </AbstractNodeData>
                </Children>
                <AnchorPoint ScaleY="0.5000" />
                <Position X="400.0000" Y="101.6004" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.4000" Y="0.7257" />
                <PreSize X="0.3400" Y="0.4214" />
                <SingleColor A="255" R="150" G="200" B="255" />
                <FirstColor A="255" R="150" G="200" B="255" />
                <EndColor A="255" R="255" G="255" B="255" />
                <ColorVector ScaleY="1.0000" />
              </AbstractNodeData>
              <AbstractNodeData Name="lucky_label" ActionTag="1088117742" VisibleForFrame="False" Tag="1000" IconVisible="False" LeftMargin="310.0000" RightMargin="600.0000" TopMargin="16.0003" BottomMargin="87.9997" IsCustomSize="True" FontSize="36" LabelText="中码" ShadowOffsetX="2.0000" ShadowOffsetY="-2.0000" ctype="TextObjectData">
                <Size X="90.0000" Y="36.0000" />
                <AnchorPoint ScaleY="0.5000" />
                <Position X="310.0000" Y="105.9997" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="223" />
                <PrePosition X="0.3100" Y="0.7571" />
                <PreSize X="0.0900" Y="0.2571" />
                <OutlineColor A="255" R="255" G="0" B="0" />
                <ShadowColor A="255" R="110" G="110" B="110" />
              </AbstractNodeData>
              <AbstractNodeData Name="player_tile_panel" ActionTag="-1089452500" Tag="1001" IconVisible="False" LeftMargin="131.1000" RightMargin="-173.1001" TopMargin="71.8998" BottomMargin="9.1002" ClipAble="False" BackColorAlpha="102" ColorAngle="90.0000" Scale9Width="1" Scale9Height="1" ctype="PanelObjectData">
                <Size X="1042.0000" Y="59.0000" />
                <Children>
                  <AbstractNodeData Name="player_hand_panel" ActionTag="-2110590068" Tag="1002" IconVisible="False" TopMargin="-51.0000" ClipAble="False" BackColorAlpha="102" ColorAngle="90.0000" Scale9Width="1" Scale9Height="1" ctype="PanelObjectData">
                    <Size X="1042.0000" Y="110.0000" />
                    <Children>
                      <AbstractNodeData Name="tile_img_0" ActionTag="1467482947" Tag="1003" IconVisible="False" RightMargin="967.0000" TopMargin="-1.0000" TouchEnable="True" Scale9Width="75" Scale9Height="111" ctype="ImageViewObjectData">
                        <Size X="75.0000" Y="111.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="-1181527872" Tag="1004" IconVisible="False" LeftMargin="13.0000" RightMargin="14.0000" TopMargin="27.5000" BottomMargin="6.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="15" Scale9OriginY="25" Scale9Width="18" Scale9Height="27" ctype="ImageViewObjectData">
                            <Size X="48.0000" Y="77.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="37.0000" Y="45.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.4933" Y="0.4054" />
                            <PreSize X="0.6400" Y="0.6937" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_big_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint />
                        <Position />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition />
                        <PreSize X="0.0720" Y="1.0091" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_hand.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="tile_img_1" ActionTag="2040500419" Tag="1005" IconVisible="False" LeftMargin="73.0000" RightMargin="894.0000" TopMargin="-1.0000" TouchEnable="True" Scale9Width="75" Scale9Height="111" ctype="ImageViewObjectData">
                        <Size X="75.0000" Y="111.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="-1252037889" Tag="1006" IconVisible="False" LeftMargin="13.0000" RightMargin="14.0000" TopMargin="27.5000" BottomMargin="6.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="15" Scale9OriginY="25" Scale9Width="18" Scale9Height="27" ctype="ImageViewObjectData">
                            <Size X="48.0000" Y="77.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="37.0000" Y="45.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.4933" Y="0.4054" />
                            <PreSize X="0.6400" Y="0.6937" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_big_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint />
                        <Position X="73.0000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.0701" />
                        <PreSize X="0.0720" Y="1.0091" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_hand.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="tile_img_2" ActionTag="-1144168803" Tag="1007" IconVisible="False" LeftMargin="146.0000" RightMargin="821.0000" TopMargin="-1.0000" TouchEnable="True" Scale9Width="75" Scale9Height="111" ctype="ImageViewObjectData">
                        <Size X="75.0000" Y="111.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="337574493" Tag="1008" IconVisible="False" LeftMargin="13.0000" RightMargin="14.0000" TopMargin="27.5000" BottomMargin="6.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="15" Scale9OriginY="25" Scale9Width="18" Scale9Height="27" ctype="ImageViewObjectData">
                            <Size X="48.0000" Y="77.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="37.0000" Y="45.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.4933" Y="0.4054" />
                            <PreSize X="0.6400" Y="0.6937" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_big_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint />
                        <Position X="146.0000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.1401" />
                        <PreSize X="0.0720" Y="1.0091" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_hand.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="tile_img_3" ActionTag="-1086542777" Tag="1009" IconVisible="False" LeftMargin="219.0000" RightMargin="748.0000" TopMargin="-1.0000" TouchEnable="True" Scale9Width="75" Scale9Height="111" ctype="ImageViewObjectData">
                        <Size X="75.0000" Y="111.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="945637435" Tag="1010" IconVisible="False" LeftMargin="13.0000" RightMargin="14.0000" TopMargin="27.5000" BottomMargin="6.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="15" Scale9OriginY="25" Scale9Width="18" Scale9Height="27" ctype="ImageViewObjectData">
                            <Size X="48.0000" Y="77.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="37.0000" Y="45.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.4933" Y="0.4054" />
                            <PreSize X="0.6400" Y="0.6937" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_big_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint />
                        <Position X="219.0000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.2102" />
                        <PreSize X="0.0720" Y="1.0091" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_hand.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="tile_img_4" ActionTag="1339597002" Tag="1011" IconVisible="False" LeftMargin="292.0000" RightMargin="675.0000" TopMargin="-1.0000" TouchEnable="True" Scale9Width="75" Scale9Height="111" ctype="ImageViewObjectData">
                        <Size X="75.0000" Y="111.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="2046761921" Tag="1012" IconVisible="False" LeftMargin="13.0000" RightMargin="14.0000" TopMargin="27.5000" BottomMargin="6.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="15" Scale9OriginY="25" Scale9Width="18" Scale9Height="27" ctype="ImageViewObjectData">
                            <Size X="48.0000" Y="77.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="37.0000" Y="45.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.4933" Y="0.4054" />
                            <PreSize X="0.6400" Y="0.6937" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_big_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint />
                        <Position X="292.0000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.2802" />
                        <PreSize X="0.0720" Y="1.0091" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_hand.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="tile_img_5" ActionTag="437826694" Tag="1013" IconVisible="False" LeftMargin="365.0000" RightMargin="602.0000" TopMargin="-1.0000" TouchEnable="True" Scale9Width="75" Scale9Height="111" ctype="ImageViewObjectData">
                        <Size X="75.0000" Y="111.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="2080039883" Tag="1014" IconVisible="False" LeftMargin="13.0000" RightMargin="14.0000" TopMargin="27.5000" BottomMargin="6.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="15" Scale9OriginY="25" Scale9Width="18" Scale9Height="27" ctype="ImageViewObjectData">
                            <Size X="48.0000" Y="77.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="37.0000" Y="45.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.4933" Y="0.4054" />
                            <PreSize X="0.6400" Y="0.6937" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_big_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint />
                        <Position X="365.0000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.3503" />
                        <PreSize X="0.0720" Y="1.0091" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_hand.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="tile_img_6" ActionTag="-260683220" Tag="1015" IconVisible="False" LeftMargin="438.0000" RightMargin="529.0000" TopMargin="-1.0000" TouchEnable="True" Scale9Width="75" Scale9Height="111" ctype="ImageViewObjectData">
                        <Size X="75.0000" Y="111.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="1950065736" Tag="1016" IconVisible="False" LeftMargin="13.0000" RightMargin="14.0000" TopMargin="27.5000" BottomMargin="6.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="15" Scale9OriginY="25" Scale9Width="18" Scale9Height="27" ctype="ImageViewObjectData">
                            <Size X="48.0000" Y="77.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="37.0000" Y="45.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.4933" Y="0.4054" />
                            <PreSize X="0.6400" Y="0.6937" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_big_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint />
                        <Position X="438.0000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.4203" />
                        <PreSize X="0.0720" Y="1.0091" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_hand.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="tile_img_7" ActionTag="1742575870" Tag="1017" IconVisible="False" LeftMargin="511.0000" RightMargin="456.0000" TopMargin="-1.0000" TouchEnable="True" Scale9Width="75" Scale9Height="111" ctype="ImageViewObjectData">
                        <Size X="75.0000" Y="111.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="1258466751" Tag="1018" IconVisible="False" LeftMargin="13.0000" RightMargin="14.0000" TopMargin="27.5000" BottomMargin="6.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="15" Scale9OriginY="25" Scale9Width="18" Scale9Height="27" ctype="ImageViewObjectData">
                            <Size X="48.0000" Y="77.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="37.0000" Y="45.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.4933" Y="0.4054" />
                            <PreSize X="0.6400" Y="0.6937" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_big_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint />
                        <Position X="511.0000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.4904" />
                        <PreSize X="0.0720" Y="1.0091" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_hand.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="tile_img_8" ActionTag="1527824785" Tag="1019" IconVisible="False" LeftMargin="584.0000" RightMargin="383.0000" TopMargin="-1.0000" TouchEnable="True" Scale9Width="75" Scale9Height="111" ctype="ImageViewObjectData">
                        <Size X="75.0000" Y="111.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="1786342646" Tag="1020" IconVisible="False" LeftMargin="13.0000" RightMargin="14.0000" TopMargin="27.5000" BottomMargin="6.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="15" Scale9OriginY="25" Scale9Width="18" Scale9Height="27" ctype="ImageViewObjectData">
                            <Size X="48.0000" Y="77.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="37.0000" Y="45.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.4933" Y="0.4054" />
                            <PreSize X="0.6400" Y="0.6937" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_big_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint />
                        <Position X="584.0000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.5605" />
                        <PreSize X="0.0720" Y="1.0091" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_hand.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="tile_img_9" ActionTag="2145286484" Tag="1021" IconVisible="False" LeftMargin="657.0000" RightMargin="310.0000" TopMargin="-1.0000" TouchEnable="True" Scale9Width="75" Scale9Height="111" ctype="ImageViewObjectData">
                        <Size X="75.0000" Y="111.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="-1574647204" Tag="1022" IconVisible="False" LeftMargin="13.0000" RightMargin="14.0000" TopMargin="27.5000" BottomMargin="6.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="15" Scale9OriginY="25" Scale9Width="18" Scale9Height="27" ctype="ImageViewObjectData">
                            <Size X="48.0000" Y="77.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="37.0000" Y="45.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.4933" Y="0.4054" />
                            <PreSize X="0.6400" Y="0.6937" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_big_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint />
                        <Position X="657.0000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.6305" />
                        <PreSize X="0.0720" Y="1.0091" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_hand.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="tile_img_10" ActionTag="-1335210177" Tag="1023" IconVisible="False" LeftMargin="730.0000" RightMargin="237.0000" TopMargin="-1.0000" TouchEnable="True" Scale9Width="75" Scale9Height="111" ctype="ImageViewObjectData">
                        <Size X="75.0000" Y="111.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="-779700190" Tag="1024" IconVisible="False" LeftMargin="13.0000" RightMargin="14.0000" TopMargin="27.5000" BottomMargin="6.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="15" Scale9OriginY="25" Scale9Width="18" Scale9Height="27" ctype="ImageViewObjectData">
                            <Size X="48.0000" Y="77.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="37.0000" Y="45.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.4933" Y="0.4054" />
                            <PreSize X="0.6400" Y="0.6937" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_big_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint />
                        <Position X="730.0000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.7006" />
                        <PreSize X="0.0720" Y="1.0091" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_hand.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="tile_img_11" ActionTag="906314981" Tag="1025" IconVisible="False" LeftMargin="803.0000" RightMargin="164.0000" TopMargin="-1.0000" TouchEnable="True" Scale9Width="75" Scale9Height="111" ctype="ImageViewObjectData">
                        <Size X="75.0000" Y="111.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="-662028337" Tag="1026" IconVisible="False" LeftMargin="13.0000" RightMargin="14.0000" TopMargin="27.5000" BottomMargin="6.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="15" Scale9OriginY="25" Scale9Width="18" Scale9Height="27" ctype="ImageViewObjectData">
                            <Size X="48.0000" Y="77.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="37.0000" Y="45.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.4933" Y="0.4054" />
                            <PreSize X="0.6400" Y="0.6937" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_big_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint />
                        <Position X="803.0000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.7706" />
                        <PreSize X="0.0720" Y="1.0091" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_hand.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="tile_img_12" ActionTag="-47386520" Tag="1027" IconVisible="False" LeftMargin="876.0000" RightMargin="91.0000" TopMargin="-1.0000" TouchEnable="True" Scale9Width="75" Scale9Height="111" ctype="ImageViewObjectData">
                        <Size X="75.0000" Y="111.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="-811477269" Tag="1028" IconVisible="False" LeftMargin="13.0000" RightMargin="14.0000" TopMargin="27.5000" BottomMargin="6.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="15" Scale9OriginY="25" Scale9Width="18" Scale9Height="27" ctype="ImageViewObjectData">
                            <Size X="48.0000" Y="77.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="37.0000" Y="45.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.4933" Y="0.4054" />
                            <PreSize X="0.6400" Y="0.6937" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_big_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint />
                        <Position X="876.0000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.8407" />
                        <PreSize X="0.0720" Y="1.0091" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_hand.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="tile_img_13" ActionTag="-780354407" Tag="1029" IconVisible="False" LeftMargin="949.0000" RightMargin="18.0000" TopMargin="-1.0000" TouchEnable="True" Scale9Width="75" Scale9Height="111" ctype="ImageViewObjectData">
                        <Size X="75.0000" Y="111.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="-1782301031" Tag="1030" IconVisible="False" LeftMargin="13.0000" RightMargin="14.0000" TopMargin="27.5000" BottomMargin="6.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="15" Scale9OriginY="25" Scale9Width="18" Scale9Height="27" ctype="ImageViewObjectData">
                            <Size X="48.0000" Y="77.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="37.0000" Y="45.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.4933" Y="0.4054" />
                            <PreSize X="0.6400" Y="0.6937" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_big_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint />
                        <Position X="949.0000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.9107" />
                        <PreSize X="0.0720" Y="1.0091" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_hand.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="mask_panel" ActionTag="2039881062" VisibleForFrame="False" Tag="1031" IconVisible="False" PercentWidthEnable="True" PercentHeightEnable="True" PercentWidthEnabled="True" PercentHeightEnabled="True" TouchEnable="True" ClipAble="False" BackColorAlpha="102" ColorAngle="90.0000" Scale9Width="1" Scale9Height="1" ctype="PanelObjectData">
                        <Size X="1042.0000" Y="110.0000" />
                        <AnchorPoint />
                        <Position />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition />
                        <PreSize X="1.0000" Y="1.0000" />
                        <SingleColor A="255" R="150" G="200" B="255" />
                        <FirstColor A="255" R="150" G="200" B="255" />
                        <EndColor A="255" R="255" G="255" B="255" />
                        <ColorVector ScaleY="1.0000" />
                      </AbstractNodeData>
                    </Children>
                    <AnchorPoint />
                    <Position />
                    <Scale ScaleX="0.5500" ScaleY="0.5500" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition />
                    <PreSize X="1.0000" Y="1.8644" />
                    <SingleColor A="255" R="150" G="200" B="255" />
                    <FirstColor A="255" R="150" G="200" B="255" />
                    <EndColor A="255" R="255" G="255" B="255" />
                    <ColorVector ScaleY="1.0000" />
                  </AbstractNodeData>
                  <AbstractNodeData Name="player_up_panel" ActionTag="-1063508359" Tag="1032" IconVisible="False" ClipAble="False" BackColorAlpha="102" ColorAngle="90.0000" Scale9Width="1" Scale9Height="1" ctype="PanelObjectData">
                    <Size X="1042.0000" Y="59.0000" />
                    <Children>
                      <AbstractNodeData Name="tile_img_0" ActionTag="1994821917" Tag="1033" IconVisible="False" PositionPercentYEnabled="True" RightMargin="1002.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                        <Size X="40.0000" Y="59.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="-1041216002" Tag="1034" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                            <Size X="25.0000" Y="39.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="20.0000" Y="37.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.5000" Y="0.6271" />
                            <PreSize X="0.6250" Y="0.6610" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint ScaleY="0.5000" />
                        <Position Y="29.5000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition Y="0.5000" />
                        <PreSize X="0.0384" Y="1.0000" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="tile_img_1" ActionTag="34400255" Tag="1035" IconVisible="False" PositionPercentYEnabled="True" LeftMargin="38.0000" RightMargin="964.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                        <Size X="40.0000" Y="59.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="409406288" Tag="1036" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                            <Size X="25.0000" Y="39.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="20.0000" Y="37.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.5000" Y="0.6271" />
                            <PreSize X="0.6250" Y="0.6610" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint ScaleY="0.5000" />
                        <Position X="38.0000" Y="29.5000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.0365" Y="0.5000" />
                        <PreSize X="0.0384" Y="1.0000" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="tile_img_2" ActionTag="1640399535" Tag="1037" IconVisible="False" PositionPercentYEnabled="True" LeftMargin="76.0000" RightMargin="926.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                        <Size X="40.0000" Y="59.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="362411830" Tag="1038" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                            <Size X="25.0000" Y="39.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="20.0000" Y="37.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.5000" Y="0.6271" />
                            <PreSize X="0.6250" Y="0.6610" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint ScaleY="0.5000" />
                        <Position X="76.0000" Y="29.5000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.0729" Y="0.5000" />
                        <PreSize X="0.0384" Y="1.0000" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="tile_img_3" ActionTag="1573298418" Tag="1039" IconVisible="False" PositionPercentYEnabled="True" LeftMargin="136.0000" RightMargin="866.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                        <Size X="40.0000" Y="59.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="-405107544" Tag="1040" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                            <Size X="25.0000" Y="39.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="20.0000" Y="37.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.5000" Y="0.6271" />
                            <PreSize X="0.6250" Y="0.6610" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint ScaleY="0.5000" />
                        <Position X="136.0000" Y="29.5000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.1305" Y="0.5000" />
                        <PreSize X="0.0384" Y="1.0000" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="tile_img_4" ActionTag="-647909976" Tag="1041" IconVisible="False" PositionPercentYEnabled="True" LeftMargin="172.0000" RightMargin="830.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                        <Size X="40.0000" Y="59.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="1023713886" Tag="1042" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                            <Size X="25.0000" Y="39.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="20.0000" Y="37.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.5000" Y="0.6271" />
                            <PreSize X="0.6250" Y="0.6610" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint ScaleY="0.5000" />
                        <Position X="172.0000" Y="29.5000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.1651" Y="0.5000" />
                        <PreSize X="0.0384" Y="1.0000" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="tile_img_5" ActionTag="-611875330" Tag="1043" IconVisible="False" PositionPercentYEnabled="True" LeftMargin="208.0000" RightMargin="794.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                        <Size X="40.0000" Y="59.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="1326909923" Tag="1044" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                            <Size X="25.0000" Y="39.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="20.0000" Y="37.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.5000" Y="0.6271" />
                            <PreSize X="0.6250" Y="0.6610" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint ScaleY="0.5000" />
                        <Position X="208.0000" Y="29.5000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.1996" Y="0.5000" />
                        <PreSize X="0.0384" Y="1.0000" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="tile_img_6" ActionTag="-421724438" Tag="1045" IconVisible="False" PositionPercentYEnabled="True" LeftMargin="268.0000" RightMargin="734.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                        <Size X="40.0000" Y="59.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="-1428908067" Tag="1046" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                            <Size X="25.0000" Y="39.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="20.0000" Y="37.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.5000" Y="0.6271" />
                            <PreSize X="0.6250" Y="0.6610" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint ScaleY="0.5000" />
                        <Position X="268.0000" Y="29.5000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.2572" Y="0.5000" />
                        <PreSize X="0.0384" Y="1.0000" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="tile_img_7" ActionTag="-1510879617" Tag="1047" IconVisible="False" PositionPercentYEnabled="True" LeftMargin="306.0000" RightMargin="696.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                        <Size X="40.0000" Y="59.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="-1031848490" Tag="1048" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                            <Size X="25.0000" Y="39.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="20.0000" Y="37.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.5000" Y="0.6271" />
                            <PreSize X="0.6250" Y="0.6610" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint ScaleY="0.5000" />
                        <Position X="306.0000" Y="29.5000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.2937" Y="0.5000" />
                        <PreSize X="0.0384" Y="1.0000" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="tile_img_8" ActionTag="1932982945" Tag="1049" IconVisible="False" PositionPercentYEnabled="True" LeftMargin="344.0000" RightMargin="658.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                        <Size X="40.0000" Y="59.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="1100593047" Tag="1050" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                            <Size X="25.0000" Y="39.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="20.0000" Y="37.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.5000" Y="0.6271" />
                            <PreSize X="0.6250" Y="0.6610" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint ScaleY="0.5000" />
                        <Position X="344.0000" Y="29.5000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.3301" Y="0.5000" />
                        <PreSize X="0.0384" Y="1.0000" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="tile_img_9" ActionTag="-1546276906" Tag="1051" IconVisible="False" PositionPercentYEnabled="True" LeftMargin="404.0000" RightMargin="598.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                        <Size X="40.0000" Y="59.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="-1513162239" Tag="1052" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                            <Size X="25.0000" Y="39.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="20.0000" Y="37.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.5000" Y="0.6271" />
                            <PreSize X="0.6250" Y="0.6610" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint ScaleY="0.5000" />
                        <Position X="404.0000" Y="29.5000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.3877" Y="0.5000" />
                        <PreSize X="0.0384" Y="1.0000" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="tile_img_10" ActionTag="1459972642" Tag="1053" IconVisible="False" PositionPercentYEnabled="True" LeftMargin="442.0000" RightMargin="560.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                        <Size X="40.0000" Y="59.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="-1319705144" Tag="1054" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                            <Size X="25.0000" Y="39.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="20.0000" Y="37.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.5000" Y="0.6271" />
                            <PreSize X="0.6250" Y="0.6610" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint ScaleY="0.5000" />
                        <Position X="442.0000" Y="29.5000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.4242" Y="0.5000" />
                        <PreSize X="0.0384" Y="1.0000" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="tile_img_11" ActionTag="-72631544" Tag="1055" IconVisible="False" PositionPercentYEnabled="True" LeftMargin="480.0000" RightMargin="522.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                        <Size X="40.0000" Y="59.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="651989078" Tag="1056" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                            <Size X="25.0000" Y="39.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="20.0000" Y="37.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.5000" Y="0.6271" />
                            <PreSize X="0.6250" Y="0.6610" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint ScaleY="0.5000" />
                        <Position X="480.0000" Y="29.5000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.4607" Y="0.5000" />
                        <PreSize X="0.0384" Y="1.0000" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                    </Children>
                    <AnchorPoint />
                    <Position />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition />
                    <PreSize X="1.0000" Y="1.0000" />
                    <SingleColor A="255" R="150" G="200" B="255" />
                    <FirstColor A="255" R="150" G="200" B="255" />
                    <EndColor A="255" R="255" G="255" B="255" />
                    <ColorVector ScaleY="1.0000" />
                  </AbstractNodeData>
                </Children>
                <AnchorPoint ScaleX="0.4500" ScaleY="0.5000" />
                <Position X="600.0000" Y="38.6002" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.6000" Y="0.2757" />
                <PreSize X="1.0420" Y="0.4214" />
                <SingleColor A="255" R="150" G="200" B="255" />
                <FirstColor A="255" R="150" G="200" B="255" />
                <EndColor A="255" R="255" G="255" B="255" />
                <ColorVector ScaleY="1.0000" />
              </AbstractNodeData>
              <AbstractNodeData Name="player_info_panel" ActionTag="37439383" Tag="1057" IconVisible="False" LeftMargin="0.0400" RightMargin="869.9600" ClipAble="False" BackColorAlpha="127" ColorAngle="90.0000" Scale9Width="1" Scale9Height="1" ctype="PanelObjectData">
                <Size X="130.0000" Y="140.0000" />
                <Children>
                  <AbstractNodeData Name="portrait_sprite" ActionTag="-1455142918" Tag="363" IconVisible="False" LeftMargin="39.9999" RightMargin="40.0001" TopMargin="32.9999" BottomMargin="57.0001" ctype="SpriteObjectData">
                    <Size X="50.0000" Y="50.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="64.9999" Y="82.0001" />
                    <Scale ScaleX="1.6000" ScaleY="1.6000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.5000" Y="0.5857" />
                    <PreSize X="0.3846" Y="0.3571" />
                    <FileData Type="Normal" Path="Default/common_portrait_mask.png" Plist="" />
                    <BlendFunc Src="1" Dst="771" />
                  </AbstractNodeData>
                  <AbstractNodeData Name="frame_img" ActionTag="-655684214" Tag="1059" IconVisible="False" PositionPercentXEnabled="True" PositionPercentYEnabled="True" LeftMargin="18.5000" RightMargin="18.5000" TopMargin="11.0040" BottomMargin="16.9960" LeftEage="24" RightEage="24" TopEage="24" BottomEage="24" Scale9OriginX="24" Scale9OriginY="24" Scale9Width="45" Scale9Height="64" ctype="ImageViewObjectData">
                    <Size X="93.0000" Y="112.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="65.0000" Y="72.9960" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.5000" Y="0.5214" />
                    <PreSize X="0.7154" Y="0.8000" />
                    <FileData Type="Normal" Path="Default/common_portrait_frame.png" Plist="" />
                  </AbstractNodeData>
                  <AbstractNodeData Name="name_label" ActionTag="-105397891" Tag="1060" IconVisible="False" PositionPercentXEnabled="True" LeftMargin="5.0000" RightMargin="5.0000" TopMargin="110.0000" BottomMargin="10.0000" IsCustomSize="True" FontSize="20" LabelText="我我我我我我我" ShadowOffsetX="2.0000" ShadowOffsetY="-2.0000" ctype="TextObjectData">
                    <Size X="120.0000" Y="20.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="65.0000" Y="20.0000" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="253" B="217" />
                    <PrePosition X="0.5000" Y="0.1429" />
                    <PreSize X="0.9231" Y="0.1429" />
                    <OutlineColor A="255" R="255" G="0" B="0" />
                    <ShadowColor A="255" R="110" G="110" B="110" />
                  </AbstractNodeData>
                </Children>
                <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                <Position X="65.0400" Y="70.0000" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.0650" Y="0.5000" />
                <PreSize X="0.1300" Y="1.0000" />
                <SingleColor A="255" R="0" G="0" B="0" />
                <FirstColor A="255" R="150" G="200" B="255" />
                <EndColor A="255" R="255" G="255" B="255" />
                <ColorVector ScaleY="1.0000" />
              </AbstractNodeData>
              <AbstractNodeData Name="win_label" ActionTag="1126962853" VisibleForFrame="False" Tag="1061" IconVisible="False" LeftMargin="120.0000" RightMargin="680.0000" TopMargin="16.0002" BottomMargin="87.9998" IsCustomSize="True" FontSize="36" LabelText="自摸" HorizontalAlignmentType="HT_Center" ShadowOffsetX="2.0000" ShadowOffsetY="-2.0000" ctype="TextObjectData">
                <Size X="200.0000" Y="36.0000" />
                <AnchorPoint ScaleY="0.5000" />
                <Position X="120.0000" Y="105.9998" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="223" />
                <PrePosition X="0.1200" Y="0.7571" />
                <PreSize X="0.2000" Y="0.2571" />
                <OutlineColor A="255" R="255" G="0" B="0" />
                <ShadowColor A="255" R="110" G="110" B="110" />
              </AbstractNodeData>
            </Children>
            <AnchorPoint ScaleX="0.6000" ScaleY="0.5000" />
            <Position X="640.0000" Y="489.6000" />
            <Scale ScaleX="1.0000" ScaleY="1.0000" />
            <CColor A="255" R="255" G="255" B="255" />
            <PrePosition X="0.5000" Y="0.6800" />
            <PreSize X="0.7813" Y="0.1944" />
            <SingleColor A="255" R="150" G="200" B="255" />
            <FirstColor A="255" R="150" G="200" B="255" />
            <EndColor A="255" R="255" G="255" B="255" />
            <ColorVector ScaleY="1.0000" />
          </AbstractNodeData>
          <AbstractNodeData Name="player_panel2" ActionTag="2139358646" Tag="1062" IconVisible="False" PositionPercentXEnabled="True" PositionPercentYEnabled="True" LeftMargin="40.0000" RightMargin="240.0000" TopMargin="304.4000" BottomMargin="275.6000" ClipAble="False" BackColorAlpha="102" ColorAngle="90.0000" Scale9Enable="True" LeftEage="11" RightEage="11" TopEage="13" BottomEage="13" Scale9OriginX="-11" Scale9OriginY="-13" Scale9Width="22" Scale9Height="26" ctype="PanelObjectData">
            <Size X="1000.0000" Y="140.0000" />
            <Children>
              <AbstractNodeData Name="bg_img" ActionTag="-744010171" Tag="1063" IconVisible="False" PositionPercentXEnabled="True" PositionPercentYEnabled="True" PercentWidthEnable="True" PercentHeightEnable="True" PercentWidthEnabled="True" PercentHeightEnabled="True" LeftMargin="-15.0000" RightMargin="-15.0000" TopMargin="-9.8000" BottomMargin="-18.2000" Scale9Enable="True" LeftEage="11" TopEage="13" BottomEage="13" Scale9OriginX="11" Scale9OriginY="13" Scale9Width="916" Scale9Height="121" ctype="ImageViewObjectData">
                <Size X="1030.0000" Y="168.0000" />
                <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                <Position X="500.0000" Y="65.8000" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.5000" Y="0.4700" />
                <PreSize X="1.0300" Y="1.2000" />
                <FileData Type="Normal" Path="SettlementUI/settlement_lose_bg.png" Plist="" />
              </AbstractNodeData>
              <AbstractNodeData Name="score_label" ActionTag="-1137542938" Tag="1064" IconVisible="False" LeftMargin="780.0000" RightMargin="100.0000" TopMargin="46.0000" BottomMargin="46.0000" IsCustomSize="True" FontSize="48" LabelText="-1000" ShadowOffsetX="2.0000" ShadowOffsetY="-2.0000" ctype="TextObjectData">
                <Size X="120.0000" Y="48.0000" />
                <AnchorPoint ScaleY="0.5000" />
                <Position X="780.0000" Y="70.0000" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="245" G="218" B="96" />
                <PrePosition X="0.7800" Y="0.5000" />
                <PreSize X="0.1200" Y="0.3429" />
                <OutlineColor A="255" R="255" G="0" B="0" />
                <ShadowColor A="255" R="110" G="110" B="110" />
              </AbstractNodeData>
              <AbstractNodeData Name="player_lucky_tile_panel" ActionTag="-797268449" VisibleForFrame="False" Tag="1065" IconVisible="False" LeftMargin="400.0000" RightMargin="260.0000" TopMargin="8.9000" BottomMargin="72.1000" ClipAble="False" BackColorAlpha="102" ColorAngle="90.0000" Scale9Width="1" Scale9Height="1" ctype="PanelObjectData">
                <Size X="340.0000" Y="59.0000" />
                <Children>
                  <AbstractNodeData Name="tile_img_0" ActionTag="-1997071625" Tag="1066" IconVisible="False" PositionPercentYEnabled="True" RightMargin="300.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                    <Size X="40.0000" Y="59.0000" />
                    <Children>
                      <AbstractNodeData Name="mahjong_img" ActionTag="-944840758" Tag="1067" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                        <Size X="25.0000" Y="39.0000" />
                        <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                        <Position X="20.0000" Y="37.0000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.5000" Y="0.6271" />
                        <PreSize X="0.6250" Y="0.6610" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="mark_img" ActionTag="-1277817565" Tag="1068" IconVisible="False" PositionPercentXEnabled="True" PositionPercentYEnabled="True" LeftMargin="-2.0000" RightMargin="-2.0000" TopMargin="22.1600" BottomMargin="-6.1600" LeftEage="14" RightEage="14" TopEage="14" BottomEage="14" Scale9OriginX="14" Scale9OriginY="14" Scale9Width="16" Scale9Height="15" ctype="ImageViewObjectData">
                        <Size X="44.0000" Y="43.0000" />
                        <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                        <Position X="20.0000" Y="15.3400" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.5000" Y="0.2600" />
                        <PreSize X="1.1000" Y="0.7288" />
                        <FileData Type="Normal" Path="Default/common_rightmark.png" Plist="" />
                      </AbstractNodeData>
                    </Children>
                    <AnchorPoint ScaleY="0.5000" />
                    <Position Y="29.5000" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition Y="0.5000" />
                    <PreSize X="0.1176" Y="1.0000" />
                    <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
                  </AbstractNodeData>
                  <AbstractNodeData Name="tile_img_1" ActionTag="259985991" Tag="1069" IconVisible="False" PositionPercentYEnabled="True" LeftMargin="50.0000" RightMargin="250.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                    <Size X="40.0000" Y="59.0000" />
                    <Children>
                      <AbstractNodeData Name="mahjong_img" ActionTag="-1109138969" Tag="1070" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                        <Size X="25.0000" Y="39.0000" />
                        <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                        <Position X="20.0000" Y="37.0000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.5000" Y="0.6271" />
                        <PreSize X="0.6250" Y="0.6610" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="mark_img" ActionTag="-789364540" Tag="1071" IconVisible="False" PositionPercentXEnabled="True" PositionPercentYEnabled="True" LeftMargin="-2.0000" RightMargin="-2.0000" TopMargin="22.1600" BottomMargin="-6.1600" LeftEage="14" RightEage="14" TopEage="14" BottomEage="14" Scale9OriginX="14" Scale9OriginY="14" Scale9Width="16" Scale9Height="15" ctype="ImageViewObjectData">
                        <Size X="44.0000" Y="43.0000" />
                        <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                        <Position X="20.0000" Y="15.3400" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.5000" Y="0.2600" />
                        <PreSize X="1.1000" Y="0.7288" />
                        <FileData Type="Normal" Path="Default/common_rightmark.png" Plist="" />
                      </AbstractNodeData>
                    </Children>
                    <AnchorPoint ScaleY="0.5000" />
                    <Position X="50.0000" Y="29.5000" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.1471" Y="0.5000" />
                    <PreSize X="0.1176" Y="1.0000" />
                    <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
                  </AbstractNodeData>
                  <AbstractNodeData Name="tile_img_2" ActionTag="767085049" Tag="1072" IconVisible="False" PositionPercentYEnabled="True" LeftMargin="100.0000" RightMargin="200.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                    <Size X="40.0000" Y="59.0000" />
                    <Children>
                      <AbstractNodeData Name="mahjong_img" ActionTag="1479109849" Tag="1073" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                        <Size X="25.0000" Y="39.0000" />
                        <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                        <Position X="20.0000" Y="37.0000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.5000" Y="0.6271" />
                        <PreSize X="0.6250" Y="0.6610" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="mark_img" ActionTag="1933202624" Tag="1074" IconVisible="False" PositionPercentXEnabled="True" PositionPercentYEnabled="True" LeftMargin="-2.0000" RightMargin="-2.0000" TopMargin="22.1600" BottomMargin="-6.1600" LeftEage="14" RightEage="14" TopEage="14" BottomEage="14" Scale9OriginX="14" Scale9OriginY="14" Scale9Width="16" Scale9Height="15" ctype="ImageViewObjectData">
                        <Size X="44.0000" Y="43.0000" />
                        <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                        <Position X="20.0000" Y="15.3400" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.5000" Y="0.2600" />
                        <PreSize X="1.1000" Y="0.7288" />
                        <FileData Type="Normal" Path="Default/common_rightmark.png" Plist="" />
                      </AbstractNodeData>
                    </Children>
                    <AnchorPoint ScaleY="0.5000" />
                    <Position X="100.0000" Y="29.5000" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.2941" Y="0.5000" />
                    <PreSize X="0.1176" Y="1.0000" />
                    <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
                  </AbstractNodeData>
                  <AbstractNodeData Name="tile_img_3" ActionTag="1393502442" Tag="1075" IconVisible="False" PositionPercentYEnabled="True" LeftMargin="150.0000" RightMargin="150.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                    <Size X="40.0000" Y="59.0000" />
                    <Children>
                      <AbstractNodeData Name="mahjong_img" ActionTag="-644699941" Tag="1076" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                        <Size X="25.0000" Y="39.0000" />
                        <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                        <Position X="20.0000" Y="37.0000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.5000" Y="0.6271" />
                        <PreSize X="0.6250" Y="0.6610" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="mark_img" ActionTag="2047922446" Tag="1077" IconVisible="False" PositionPercentXEnabled="True" PositionPercentYEnabled="True" LeftMargin="-2.0000" RightMargin="-2.0000" TopMargin="22.1600" BottomMargin="-6.1600" LeftEage="14" RightEage="14" TopEage="14" BottomEage="14" Scale9OriginX="14" Scale9OriginY="14" Scale9Width="16" Scale9Height="15" ctype="ImageViewObjectData">
                        <Size X="44.0000" Y="43.0000" />
                        <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                        <Position X="20.0000" Y="15.3400" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.5000" Y="0.2600" />
                        <PreSize X="1.1000" Y="0.7288" />
                        <FileData Type="Normal" Path="Default/common_rightmark.png" Plist="" />
                      </AbstractNodeData>
                    </Children>
                    <AnchorPoint ScaleY="0.5000" />
                    <Position X="150.0000" Y="29.5000" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.4412" Y="0.5000" />
                    <PreSize X="0.1176" Y="1.0000" />
                    <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
                  </AbstractNodeData>
                  <AbstractNodeData Name="tile_img_4" ActionTag="65118300" Tag="831" IconVisible="False" PositionPercentYEnabled="True" LeftMargin="200.0000" RightMargin="100.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                    <Size X="40.0000" Y="59.0000" />
                    <Children>
                      <AbstractNodeData Name="mahjong_img" ActionTag="-1295448037" Tag="832" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                        <Size X="25.0000" Y="39.0000" />
                        <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                        <Position X="20.0000" Y="37.0000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.5000" Y="0.6271" />
                        <PreSize X="0.6250" Y="0.6610" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="mark_img" ActionTag="-1944134432" Tag="833" IconVisible="False" PositionPercentXEnabled="True" PositionPercentYEnabled="True" LeftMargin="-2.0000" RightMargin="-2.0000" TopMargin="22.1600" BottomMargin="-6.1600" LeftEage="14" RightEage="14" TopEage="14" BottomEage="14" Scale9OriginX="14" Scale9OriginY="14" Scale9Width="16" Scale9Height="15" ctype="ImageViewObjectData">
                        <Size X="44.0000" Y="43.0000" />
                        <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                        <Position X="20.0000" Y="15.3400" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.5000" Y="0.2600" />
                        <PreSize X="1.1000" Y="0.7288" />
                        <FileData Type="Normal" Path="Default/common_rightmark.png" Plist="" />
                      </AbstractNodeData>
                    </Children>
                    <AnchorPoint ScaleY="0.5000" />
                    <Position X="200.0000" Y="29.5000" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.5882" Y="0.5000" />
                    <PreSize X="0.1176" Y="1.0000" />
                    <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
                  </AbstractNodeData>
                  <AbstractNodeData Name="tile_img_5" ActionTag="539086617" Tag="834" IconVisible="False" PositionPercentYEnabled="True" LeftMargin="250.0000" RightMargin="50.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                    <Size X="40.0000" Y="59.0000" />
                    <Children>
                      <AbstractNodeData Name="mahjong_img" ActionTag="-864228703" Tag="835" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                        <Size X="25.0000" Y="39.0000" />
                        <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                        <Position X="20.0000" Y="37.0000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.5000" Y="0.6271" />
                        <PreSize X="0.6250" Y="0.6610" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="mark_img" ActionTag="2032506595" Tag="836" IconVisible="False" PositionPercentXEnabled="True" PositionPercentYEnabled="True" LeftMargin="-2.0000" RightMargin="-2.0000" TopMargin="22.1600" BottomMargin="-6.1600" LeftEage="14" RightEage="14" TopEage="14" BottomEage="14" Scale9OriginX="14" Scale9OriginY="14" Scale9Width="16" Scale9Height="15" ctype="ImageViewObjectData">
                        <Size X="44.0000" Y="43.0000" />
                        <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                        <Position X="20.0000" Y="15.3400" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.5000" Y="0.2600" />
                        <PreSize X="1.1000" Y="0.7288" />
                        <FileData Type="Normal" Path="Default/common_rightmark.png" Plist="" />
                      </AbstractNodeData>
                    </Children>
                    <AnchorPoint ScaleY="0.5000" />
                    <Position X="250.0000" Y="29.5000" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.7353" Y="0.5000" />
                    <PreSize X="0.1176" Y="1.0000" />
                    <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
                  </AbstractNodeData>
                  <AbstractNodeData Name="tile_img_6" ActionTag="706752219" Tag="470" IconVisible="False" PositionPercentYEnabled="True" LeftMargin="300.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                    <Size X="40.0000" Y="59.0000" />
                    <Children>
                      <AbstractNodeData Name="mahjong_img" ActionTag="-1204536327" Tag="471" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                        <Size X="25.0000" Y="39.0000" />
                        <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                        <Position X="20.0000" Y="37.0000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.5000" Y="0.6271" />
                        <PreSize X="0.6250" Y="0.6610" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="mark_img" ActionTag="2116474081" Tag="472" IconVisible="False" PositionPercentXEnabled="True" PositionPercentYEnabled="True" LeftMargin="-2.0000" RightMargin="-2.0000" TopMargin="22.1600" BottomMargin="-6.1600" LeftEage="14" RightEage="14" TopEage="14" BottomEage="14" Scale9OriginX="14" Scale9OriginY="14" Scale9Width="16" Scale9Height="15" ctype="ImageViewObjectData">
                        <Size X="44.0000" Y="43.0000" />
                        <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                        <Position X="20.0000" Y="15.3400" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.5000" Y="0.2600" />
                        <PreSize X="1.1000" Y="0.7288" />
                        <FileData Type="Normal" Path="Default/common_rightmark.png" Plist="" />
                      </AbstractNodeData>
                    </Children>
                    <AnchorPoint ScaleY="0.5000" />
                    <Position X="300.0000" Y="29.5000" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.8824" Y="0.5000" />
                    <PreSize X="0.1176" Y="1.0000" />
                    <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
                  </AbstractNodeData>
                </Children>
                <AnchorPoint ScaleY="0.5000" />
                <Position X="400.0000" Y="101.6000" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.4000" Y="0.7257" />
                <PreSize X="0.3400" Y="0.4214" />
                <SingleColor A="255" R="150" G="200" B="255" />
                <FirstColor A="255" R="150" G="200" B="255" />
                <EndColor A="255" R="255" G="255" B="255" />
                <ColorVector ScaleY="1.0000" />
              </AbstractNodeData>
              <AbstractNodeData Name="lucky_label" ActionTag="-1607424575" VisibleForFrame="False" Tag="1078" IconVisible="False" LeftMargin="310.0000" RightMargin="600.0000" TopMargin="16.0003" BottomMargin="87.9997" IsCustomSize="True" FontSize="36" LabelText="中码" ShadowOffsetX="2.0000" ShadowOffsetY="-2.0000" ctype="TextObjectData">
                <Size X="90.0000" Y="36.0000" />
                <AnchorPoint ScaleY="0.5000" />
                <Position X="310.0000" Y="105.9997" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="223" />
                <PrePosition X="0.3100" Y="0.7571" />
                <PreSize X="0.0900" Y="0.2571" />
                <OutlineColor A="255" R="255" G="0" B="0" />
                <ShadowColor A="255" R="110" G="110" B="110" />
              </AbstractNodeData>
              <AbstractNodeData Name="player_tile_panel" ActionTag="1720194680" Tag="1079" IconVisible="False" LeftMargin="131.1000" RightMargin="-173.1001" TopMargin="71.8998" BottomMargin="9.1002" ClipAble="False" BackColorAlpha="102" ColorAngle="90.0000" Scale9Width="1" Scale9Height="1" ctype="PanelObjectData">
                <Size X="1042.0000" Y="59.0000" />
                <Children>
                  <AbstractNodeData Name="player_hand_panel" ActionTag="-1900297764" Tag="1080" IconVisible="False" TopMargin="-51.0000" ClipAble="False" BackColorAlpha="102" ColorAngle="90.0000" Scale9Width="1" Scale9Height="1" ctype="PanelObjectData">
                    <Size X="1042.0000" Y="110.0000" />
                    <Children>
                      <AbstractNodeData Name="tile_img_0" ActionTag="-734982093" Tag="1081" IconVisible="False" RightMargin="967.0000" TopMargin="-1.0000" TouchEnable="True" Scale9Width="75" Scale9Height="111" ctype="ImageViewObjectData">
                        <Size X="75.0000" Y="111.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="-194894791" Tag="1082" IconVisible="False" LeftMargin="13.0000" RightMargin="14.0000" TopMargin="27.5000" BottomMargin="6.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="15" Scale9OriginY="25" Scale9Width="18" Scale9Height="27" ctype="ImageViewObjectData">
                            <Size X="48.0000" Y="77.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="37.0000" Y="45.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.4933" Y="0.4054" />
                            <PreSize X="0.6400" Y="0.6937" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_big_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint />
                        <Position />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition />
                        <PreSize X="0.0720" Y="1.0091" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_hand.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="tile_img_1" ActionTag="-1667233523" Tag="1083" IconVisible="False" LeftMargin="73.0000" RightMargin="894.0000" TopMargin="-1.0000" TouchEnable="True" Scale9Width="75" Scale9Height="111" ctype="ImageViewObjectData">
                        <Size X="75.0000" Y="111.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="-1387103310" Tag="1084" IconVisible="False" LeftMargin="13.0000" RightMargin="14.0000" TopMargin="27.5000" BottomMargin="6.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="15" Scale9OriginY="25" Scale9Width="18" Scale9Height="27" ctype="ImageViewObjectData">
                            <Size X="48.0000" Y="77.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="37.0000" Y="45.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.4933" Y="0.4054" />
                            <PreSize X="0.6400" Y="0.6937" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_big_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint />
                        <Position X="73.0000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.0701" />
                        <PreSize X="0.0720" Y="1.0091" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_hand.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="tile_img_2" ActionTag="-1757476469" Tag="1085" IconVisible="False" LeftMargin="146.0000" RightMargin="821.0000" TopMargin="-1.0000" TouchEnable="True" Scale9Width="75" Scale9Height="111" ctype="ImageViewObjectData">
                        <Size X="75.0000" Y="111.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="968995265" Tag="1086" IconVisible="False" LeftMargin="13.0000" RightMargin="14.0000" TopMargin="27.5000" BottomMargin="6.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="15" Scale9OriginY="25" Scale9Width="18" Scale9Height="27" ctype="ImageViewObjectData">
                            <Size X="48.0000" Y="77.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="37.0000" Y="45.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.4933" Y="0.4054" />
                            <PreSize X="0.6400" Y="0.6937" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_big_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint />
                        <Position X="146.0000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.1401" />
                        <PreSize X="0.0720" Y="1.0091" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_hand.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="tile_img_3" ActionTag="754902165" Tag="1087" IconVisible="False" LeftMargin="219.0000" RightMargin="748.0000" TopMargin="-1.0000" TouchEnable="True" Scale9Width="75" Scale9Height="111" ctype="ImageViewObjectData">
                        <Size X="75.0000" Y="111.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="149827780" Tag="1088" IconVisible="False" LeftMargin="13.0000" RightMargin="14.0000" TopMargin="27.5000" BottomMargin="6.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="15" Scale9OriginY="25" Scale9Width="18" Scale9Height="27" ctype="ImageViewObjectData">
                            <Size X="48.0000" Y="77.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="37.0000" Y="45.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.4933" Y="0.4054" />
                            <PreSize X="0.6400" Y="0.6937" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_big_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint />
                        <Position X="219.0000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.2102" />
                        <PreSize X="0.0720" Y="1.0091" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_hand.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="tile_img_4" ActionTag="2059813174" Tag="1089" IconVisible="False" LeftMargin="292.0000" RightMargin="675.0000" TopMargin="-1.0000" TouchEnable="True" Scale9Width="75" Scale9Height="111" ctype="ImageViewObjectData">
                        <Size X="75.0000" Y="111.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="-2030693386" Tag="1090" IconVisible="False" LeftMargin="13.0000" RightMargin="14.0000" TopMargin="27.5000" BottomMargin="6.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="15" Scale9OriginY="25" Scale9Width="18" Scale9Height="27" ctype="ImageViewObjectData">
                            <Size X="48.0000" Y="77.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="37.0000" Y="45.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.4933" Y="0.4054" />
                            <PreSize X="0.6400" Y="0.6937" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_big_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint />
                        <Position X="292.0000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.2802" />
                        <PreSize X="0.0720" Y="1.0091" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_hand.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="tile_img_5" ActionTag="-1325791260" Tag="1091" IconVisible="False" LeftMargin="365.0000" RightMargin="602.0000" TopMargin="-1.0000" TouchEnable="True" Scale9Width="75" Scale9Height="111" ctype="ImageViewObjectData">
                        <Size X="75.0000" Y="111.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="-772914688" Tag="1092" IconVisible="False" LeftMargin="13.0000" RightMargin="14.0000" TopMargin="27.5000" BottomMargin="6.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="15" Scale9OriginY="25" Scale9Width="18" Scale9Height="27" ctype="ImageViewObjectData">
                            <Size X="48.0000" Y="77.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="37.0000" Y="45.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.4933" Y="0.4054" />
                            <PreSize X="0.6400" Y="0.6937" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_big_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint />
                        <Position X="365.0000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.3503" />
                        <PreSize X="0.0720" Y="1.0091" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_hand.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="tile_img_6" ActionTag="326400760" Tag="1093" IconVisible="False" LeftMargin="438.0000" RightMargin="529.0000" TopMargin="-1.0000" TouchEnable="True" Scale9Width="75" Scale9Height="111" ctype="ImageViewObjectData">
                        <Size X="75.0000" Y="111.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="-1496513379" Tag="1094" IconVisible="False" LeftMargin="13.0000" RightMargin="14.0000" TopMargin="27.5000" BottomMargin="6.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="15" Scale9OriginY="25" Scale9Width="18" Scale9Height="27" ctype="ImageViewObjectData">
                            <Size X="48.0000" Y="77.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="37.0000" Y="45.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.4933" Y="0.4054" />
                            <PreSize X="0.6400" Y="0.6937" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_big_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint />
                        <Position X="438.0000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.4203" />
                        <PreSize X="0.0720" Y="1.0091" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_hand.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="tile_img_7" ActionTag="-252741643" Tag="1095" IconVisible="False" LeftMargin="511.0000" RightMargin="456.0000" TopMargin="-1.0000" TouchEnable="True" Scale9Width="75" Scale9Height="111" ctype="ImageViewObjectData">
                        <Size X="75.0000" Y="111.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="-1382335404" Tag="1096" IconVisible="False" LeftMargin="13.0000" RightMargin="14.0000" TopMargin="27.5000" BottomMargin="6.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="15" Scale9OriginY="25" Scale9Width="18" Scale9Height="27" ctype="ImageViewObjectData">
                            <Size X="48.0000" Y="77.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="37.0000" Y="45.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.4933" Y="0.4054" />
                            <PreSize X="0.6400" Y="0.6937" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_big_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint />
                        <Position X="511.0000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.4904" />
                        <PreSize X="0.0720" Y="1.0091" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_hand.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="tile_img_8" ActionTag="-1370035944" Tag="1097" IconVisible="False" LeftMargin="584.0000" RightMargin="383.0000" TopMargin="-1.0000" TouchEnable="True" Scale9Width="75" Scale9Height="111" ctype="ImageViewObjectData">
                        <Size X="75.0000" Y="111.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="-397644583" Tag="1098" IconVisible="False" LeftMargin="13.0000" RightMargin="14.0000" TopMargin="27.5000" BottomMargin="6.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="15" Scale9OriginY="25" Scale9Width="18" Scale9Height="27" ctype="ImageViewObjectData">
                            <Size X="48.0000" Y="77.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="37.0000" Y="45.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.4933" Y="0.4054" />
                            <PreSize X="0.6400" Y="0.6937" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_big_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint />
                        <Position X="584.0000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.5605" />
                        <PreSize X="0.0720" Y="1.0091" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_hand.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="tile_img_9" ActionTag="438945899" Tag="1099" IconVisible="False" LeftMargin="657.0000" RightMargin="310.0000" TopMargin="-1.0000" TouchEnable="True" Scale9Width="75" Scale9Height="111" ctype="ImageViewObjectData">
                        <Size X="75.0000" Y="111.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="718292808" Tag="1100" IconVisible="False" LeftMargin="13.0000" RightMargin="14.0000" TopMargin="27.5000" BottomMargin="6.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="15" Scale9OriginY="25" Scale9Width="18" Scale9Height="27" ctype="ImageViewObjectData">
                            <Size X="48.0000" Y="77.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="37.0000" Y="45.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.4933" Y="0.4054" />
                            <PreSize X="0.6400" Y="0.6937" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_big_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint />
                        <Position X="657.0000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.6305" />
                        <PreSize X="0.0720" Y="1.0091" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_hand.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="tile_img_10" ActionTag="96388131" Tag="1101" IconVisible="False" LeftMargin="730.0000" RightMargin="237.0000" TopMargin="-1.0000" TouchEnable="True" Scale9Width="75" Scale9Height="111" ctype="ImageViewObjectData">
                        <Size X="75.0000" Y="111.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="-1638009129" Tag="1102" IconVisible="False" LeftMargin="13.0000" RightMargin="14.0000" TopMargin="27.5000" BottomMargin="6.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="15" Scale9OriginY="25" Scale9Width="18" Scale9Height="27" ctype="ImageViewObjectData">
                            <Size X="48.0000" Y="77.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="37.0000" Y="45.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.4933" Y="0.4054" />
                            <PreSize X="0.6400" Y="0.6937" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_big_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint />
                        <Position X="730.0000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.7006" />
                        <PreSize X="0.0720" Y="1.0091" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_hand.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="tile_img_11" ActionTag="169919346" Tag="1103" IconVisible="False" LeftMargin="803.0000" RightMargin="164.0000" TopMargin="-1.0000" TouchEnable="True" Scale9Width="75" Scale9Height="111" ctype="ImageViewObjectData">
                        <Size X="75.0000" Y="111.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="-1349148728" Tag="1104" IconVisible="False" LeftMargin="13.0000" RightMargin="14.0000" TopMargin="27.5000" BottomMargin="6.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="15" Scale9OriginY="25" Scale9Width="18" Scale9Height="27" ctype="ImageViewObjectData">
                            <Size X="48.0000" Y="77.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="37.0000" Y="45.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.4933" Y="0.4054" />
                            <PreSize X="0.6400" Y="0.6937" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_big_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint />
                        <Position X="803.0000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.7706" />
                        <PreSize X="0.0720" Y="1.0091" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_hand.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="tile_img_12" ActionTag="-2039276371" Tag="1105" IconVisible="False" LeftMargin="876.0000" RightMargin="91.0000" TopMargin="-1.0000" TouchEnable="True" Scale9Width="75" Scale9Height="111" ctype="ImageViewObjectData">
                        <Size X="75.0000" Y="111.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="-1443188021" Tag="1106" IconVisible="False" LeftMargin="13.0000" RightMargin="14.0000" TopMargin="27.5000" BottomMargin="6.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="15" Scale9OriginY="25" Scale9Width="18" Scale9Height="27" ctype="ImageViewObjectData">
                            <Size X="48.0000" Y="77.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="37.0000" Y="45.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.4933" Y="0.4054" />
                            <PreSize X="0.6400" Y="0.6937" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_big_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint />
                        <Position X="876.0000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.8407" />
                        <PreSize X="0.0720" Y="1.0091" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_hand.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="tile_img_13" ActionTag="958262760" Tag="1107" IconVisible="False" LeftMargin="949.0000" RightMargin="18.0000" TopMargin="-1.0000" TouchEnable="True" Scale9Width="75" Scale9Height="111" ctype="ImageViewObjectData">
                        <Size X="75.0000" Y="111.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="474676104" Tag="1108" IconVisible="False" LeftMargin="13.0000" RightMargin="14.0000" TopMargin="27.5000" BottomMargin="6.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="15" Scale9OriginY="25" Scale9Width="18" Scale9Height="27" ctype="ImageViewObjectData">
                            <Size X="48.0000" Y="77.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="37.0000" Y="45.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.4933" Y="0.4054" />
                            <PreSize X="0.6400" Y="0.6937" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_big_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint />
                        <Position X="949.0000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.9107" />
                        <PreSize X="0.0720" Y="1.0091" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_hand.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="mask_panel" ActionTag="1244913966" VisibleForFrame="False" Tag="1109" IconVisible="False" PercentWidthEnable="True" PercentHeightEnable="True" PercentWidthEnabled="True" PercentHeightEnabled="True" TouchEnable="True" ClipAble="False" BackColorAlpha="102" ColorAngle="90.0000" Scale9Width="1" Scale9Height="1" ctype="PanelObjectData">
                        <Size X="1042.0000" Y="110.0000" />
                        <AnchorPoint />
                        <Position />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition />
                        <PreSize X="1.0000" Y="1.0000" />
                        <SingleColor A="255" R="150" G="200" B="255" />
                        <FirstColor A="255" R="150" G="200" B="255" />
                        <EndColor A="255" R="255" G="255" B="255" />
                        <ColorVector ScaleY="1.0000" />
                      </AbstractNodeData>
                    </Children>
                    <AnchorPoint />
                    <Position />
                    <Scale ScaleX="0.5500" ScaleY="0.5500" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition />
                    <PreSize X="1.0000" Y="1.8644" />
                    <SingleColor A="255" R="150" G="200" B="255" />
                    <FirstColor A="255" R="150" G="200" B="255" />
                    <EndColor A="255" R="255" G="255" B="255" />
                    <ColorVector ScaleY="1.0000" />
                  </AbstractNodeData>
                  <AbstractNodeData Name="player_up_panel" ActionTag="-624560950" Tag="1110" IconVisible="False" ClipAble="False" BackColorAlpha="102" ColorAngle="90.0000" Scale9Width="1" Scale9Height="1" ctype="PanelObjectData">
                    <Size X="1042.0000" Y="59.0000" />
                    <Children>
                      <AbstractNodeData Name="tile_img_0" ActionTag="-1084597988" Tag="1111" IconVisible="False" PositionPercentYEnabled="True" RightMargin="1002.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                        <Size X="40.0000" Y="59.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="-393514212" Tag="1112" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                            <Size X="25.0000" Y="39.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="20.0000" Y="37.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.5000" Y="0.6271" />
                            <PreSize X="0.6250" Y="0.6610" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint ScaleY="0.5000" />
                        <Position Y="29.5000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition Y="0.5000" />
                        <PreSize X="0.0384" Y="1.0000" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="tile_img_1" ActionTag="721627592" Tag="1113" IconVisible="False" PositionPercentYEnabled="True" LeftMargin="38.0000" RightMargin="964.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                        <Size X="40.0000" Y="59.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="-1885219891" Tag="1114" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                            <Size X="25.0000" Y="39.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="20.0000" Y="37.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.5000" Y="0.6271" />
                            <PreSize X="0.6250" Y="0.6610" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint ScaleY="0.5000" />
                        <Position X="38.0000" Y="29.5000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.0365" Y="0.5000" />
                        <PreSize X="0.0384" Y="1.0000" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="tile_img_2" ActionTag="1687299608" Tag="1115" IconVisible="False" PositionPercentYEnabled="True" LeftMargin="76.0000" RightMargin="926.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                        <Size X="40.0000" Y="59.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="-907396088" Tag="1116" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                            <Size X="25.0000" Y="39.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="20.0000" Y="37.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.5000" Y="0.6271" />
                            <PreSize X="0.6250" Y="0.6610" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint ScaleY="0.5000" />
                        <Position X="76.0000" Y="29.5000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.0729" Y="0.5000" />
                        <PreSize X="0.0384" Y="1.0000" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="tile_img_3" ActionTag="741674030" Tag="1117" IconVisible="False" PositionPercentYEnabled="True" LeftMargin="136.0000" RightMargin="866.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                        <Size X="40.0000" Y="59.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="758200213" Tag="1118" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                            <Size X="25.0000" Y="39.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="20.0000" Y="37.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.5000" Y="0.6271" />
                            <PreSize X="0.6250" Y="0.6610" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint ScaleY="0.5000" />
                        <Position X="136.0000" Y="29.5000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.1305" Y="0.5000" />
                        <PreSize X="0.0384" Y="1.0000" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="tile_img_4" ActionTag="-574759731" Tag="1119" IconVisible="False" PositionPercentYEnabled="True" LeftMargin="172.0000" RightMargin="830.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                        <Size X="40.0000" Y="59.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="509540128" Tag="1120" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                            <Size X="25.0000" Y="39.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="20.0000" Y="37.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.5000" Y="0.6271" />
                            <PreSize X="0.6250" Y="0.6610" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint ScaleY="0.5000" />
                        <Position X="172.0000" Y="29.5000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.1651" Y="0.5000" />
                        <PreSize X="0.0384" Y="1.0000" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="tile_img_5" ActionTag="-477080041" Tag="1121" IconVisible="False" PositionPercentYEnabled="True" LeftMargin="208.0000" RightMargin="794.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                        <Size X="40.0000" Y="59.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="1425035347" Tag="1122" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                            <Size X="25.0000" Y="39.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="20.0000" Y="37.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.5000" Y="0.6271" />
                            <PreSize X="0.6250" Y="0.6610" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint ScaleY="0.5000" />
                        <Position X="208.0000" Y="29.5000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.1996" Y="0.5000" />
                        <PreSize X="0.0384" Y="1.0000" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="tile_img_6" ActionTag="-647602669" Tag="1123" IconVisible="False" PositionPercentYEnabled="True" LeftMargin="268.0000" RightMargin="734.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                        <Size X="40.0000" Y="59.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="1003167378" Tag="1124" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                            <Size X="25.0000" Y="39.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="20.0000" Y="37.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.5000" Y="0.6271" />
                            <PreSize X="0.6250" Y="0.6610" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint ScaleY="0.5000" />
                        <Position X="268.0000" Y="29.5000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.2572" Y="0.5000" />
                        <PreSize X="0.0384" Y="1.0000" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="tile_img_7" ActionTag="-2134716421" Tag="1125" IconVisible="False" PositionPercentYEnabled="True" LeftMargin="306.0000" RightMargin="696.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                        <Size X="40.0000" Y="59.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="1249292449" Tag="1126" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                            <Size X="25.0000" Y="39.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="20.0000" Y="37.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.5000" Y="0.6271" />
                            <PreSize X="0.6250" Y="0.6610" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint ScaleY="0.5000" />
                        <Position X="306.0000" Y="29.5000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.2937" Y="0.5000" />
                        <PreSize X="0.0384" Y="1.0000" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="tile_img_8" ActionTag="2127361356" Tag="1127" IconVisible="False" PositionPercentYEnabled="True" LeftMargin="344.0000" RightMargin="658.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                        <Size X="40.0000" Y="59.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="-1272483794" Tag="1128" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                            <Size X="25.0000" Y="39.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="20.0000" Y="37.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.5000" Y="0.6271" />
                            <PreSize X="0.6250" Y="0.6610" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint ScaleY="0.5000" />
                        <Position X="344.0000" Y="29.5000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.3301" Y="0.5000" />
                        <PreSize X="0.0384" Y="1.0000" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="tile_img_9" ActionTag="-1028527103" Tag="1129" IconVisible="False" PositionPercentYEnabled="True" LeftMargin="404.0000" RightMargin="598.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                        <Size X="40.0000" Y="59.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="517948257" Tag="1130" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                            <Size X="25.0000" Y="39.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="20.0000" Y="37.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.5000" Y="0.6271" />
                            <PreSize X="0.6250" Y="0.6610" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint ScaleY="0.5000" />
                        <Position X="404.0000" Y="29.5000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.3877" Y="0.5000" />
                        <PreSize X="0.0384" Y="1.0000" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="tile_img_10" ActionTag="-1700475276" Tag="1131" IconVisible="False" PositionPercentYEnabled="True" LeftMargin="442.0000" RightMargin="560.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                        <Size X="40.0000" Y="59.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="40987352" Tag="1132" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                            <Size X="25.0000" Y="39.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="20.0000" Y="37.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.5000" Y="0.6271" />
                            <PreSize X="0.6250" Y="0.6610" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint ScaleY="0.5000" />
                        <Position X="442.0000" Y="29.5000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.4242" Y="0.5000" />
                        <PreSize X="0.0384" Y="1.0000" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="tile_img_11" ActionTag="-280525333" Tag="1133" IconVisible="False" PositionPercentYEnabled="True" LeftMargin="480.0000" RightMargin="522.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                        <Size X="40.0000" Y="59.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="-1336219510" Tag="1134" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                            <Size X="25.0000" Y="39.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="20.0000" Y="37.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.5000" Y="0.6271" />
                            <PreSize X="0.6250" Y="0.6610" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint ScaleY="0.5000" />
                        <Position X="480.0000" Y="29.5000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.4607" Y="0.5000" />
                        <PreSize X="0.0384" Y="1.0000" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                    </Children>
                    <AnchorPoint />
                    <Position />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition />
                    <PreSize X="1.0000" Y="1.0000" />
                    <SingleColor A="255" R="150" G="200" B="255" />
                    <FirstColor A="255" R="150" G="200" B="255" />
                    <EndColor A="255" R="255" G="255" B="255" />
                    <ColorVector ScaleY="1.0000" />
                  </AbstractNodeData>
                </Children>
                <AnchorPoint ScaleX="0.4500" ScaleY="0.5000" />
                <Position X="600.0000" Y="38.6002" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.6000" Y="0.2757" />
                <PreSize X="1.0420" Y="0.4214" />
                <SingleColor A="255" R="150" G="200" B="255" />
                <FirstColor A="255" R="150" G="200" B="255" />
                <EndColor A="255" R="255" G="255" B="255" />
                <ColorVector ScaleY="1.0000" />
              </AbstractNodeData>
              <AbstractNodeData Name="player_info_panel" ActionTag="-2007590745" Tag="1135" IconVisible="False" LeftMargin="0.0400" RightMargin="869.9600" ClipAble="False" BackColorAlpha="127" ColorAngle="90.0000" Scale9Width="1" Scale9Height="1" ctype="PanelObjectData">
                <Size X="130.0000" Y="140.0000" />
                <Children>
                  <AbstractNodeData Name="portrait_sprite" ActionTag="-1808154719" Tag="362" IconVisible="False" LeftMargin="40.0000" RightMargin="40.0000" TopMargin="33.0000" BottomMargin="57.0000" ctype="SpriteObjectData">
                    <Size X="50.0000" Y="50.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="65.0000" Y="82.0000" />
                    <Scale ScaleX="1.6000" ScaleY="1.6000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.5000" Y="0.5857" />
                    <PreSize X="0.3846" Y="0.3571" />
                    <FileData Type="Normal" Path="Default/common_portrait_mask.png" Plist="" />
                    <BlendFunc Src="1" Dst="771" />
                  </AbstractNodeData>
                  <AbstractNodeData Name="frame_img" ActionTag="-523775768" Tag="1137" IconVisible="False" PositionPercentXEnabled="True" PositionPercentYEnabled="True" LeftMargin="18.5000" RightMargin="18.5000" TopMargin="11.0040" BottomMargin="16.9960" LeftEage="24" RightEage="24" TopEage="24" BottomEage="24" Scale9OriginX="24" Scale9OriginY="24" Scale9Width="45" Scale9Height="64" ctype="ImageViewObjectData">
                    <Size X="93.0000" Y="112.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="65.0000" Y="72.9960" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.5000" Y="0.5214" />
                    <PreSize X="0.7154" Y="0.8000" />
                    <FileData Type="Normal" Path="Default/common_portrait_frame.png" Plist="" />
                  </AbstractNodeData>
                  <AbstractNodeData Name="name_label" ActionTag="-548471645" Tag="1138" IconVisible="False" PositionPercentXEnabled="True" LeftMargin="5.0000" RightMargin="5.0000" TopMargin="110.0000" BottomMargin="10.0000" IsCustomSize="True" FontSize="20" LabelText="我我我我我我我" ShadowOffsetX="2.0000" ShadowOffsetY="-2.0000" ctype="TextObjectData">
                    <Size X="120.0000" Y="20.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="65.0000" Y="20.0000" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="253" B="217" />
                    <PrePosition X="0.5000" Y="0.1429" />
                    <PreSize X="0.9231" Y="0.1429" />
                    <OutlineColor A="255" R="255" G="0" B="0" />
                    <ShadowColor A="255" R="110" G="110" B="110" />
                  </AbstractNodeData>
                </Children>
                <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                <Position X="65.0400" Y="70.0000" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.0650" Y="0.5000" />
                <PreSize X="0.1300" Y="1.0000" />
                <SingleColor A="255" R="0" G="0" B="0" />
                <FirstColor A="255" R="150" G="200" B="255" />
                <EndColor A="255" R="255" G="255" B="255" />
                <ColorVector ScaleY="1.0000" />
              </AbstractNodeData>
              <AbstractNodeData Name="win_label" ActionTag="-346477352" VisibleForFrame="False" Tag="1139" IconVisible="False" LeftMargin="120.0000" RightMargin="680.0000" TopMargin="16.0002" BottomMargin="87.9998" IsCustomSize="True" FontSize="36" LabelText="自摸" HorizontalAlignmentType="HT_Center" ShadowOffsetX="2.0000" ShadowOffsetY="-2.0000" ctype="TextObjectData">
                <Size X="200.0000" Y="36.0000" />
                <AnchorPoint ScaleY="0.5000" />
                <Position X="120.0000" Y="105.9998" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="223" />
                <PrePosition X="0.1200" Y="0.7571" />
                <PreSize X="0.2000" Y="0.2571" />
                <OutlineColor A="255" R="255" G="0" B="0" />
                <ShadowColor A="255" R="110" G="110" B="110" />
              </AbstractNodeData>
            </Children>
            <AnchorPoint ScaleX="0.6000" ScaleY="0.5000" />
            <Position X="640.0000" Y="345.6000" />
            <Scale ScaleX="1.0000" ScaleY="1.0000" />
            <CColor A="255" R="255" G="255" B="255" />
            <PrePosition X="0.5000" Y="0.4800" />
            <PreSize X="0.7813" Y="0.1944" />
            <SingleColor A="255" R="150" G="200" B="255" />
            <FirstColor A="255" R="150" G="200" B="255" />
            <EndColor A="255" R="255" G="255" B="255" />
            <ColorVector ScaleY="1.0000" />
          </AbstractNodeData>
          <AbstractNodeData Name="player_panel3" ActionTag="-727813242" Tag="1140" IconVisible="False" PositionPercentXEnabled="True" PositionPercentYEnabled="True" LeftMargin="40.0000" RightMargin="240.0000" TopMargin="448.4000" BottomMargin="131.6000" ClipAble="False" BackColorAlpha="102" ColorAngle="90.0000" Scale9Enable="True" LeftEage="11" RightEage="11" TopEage="13" BottomEage="13" Scale9OriginX="-11" Scale9OriginY="-13" Scale9Width="22" Scale9Height="26" ctype="PanelObjectData">
            <Size X="1000.0000" Y="140.0000" />
            <Children>
              <AbstractNodeData Name="bg_img" ActionTag="1040645870" Tag="1141" IconVisible="False" PositionPercentXEnabled="True" PositionPercentYEnabled="True" PercentWidthEnable="True" PercentHeightEnable="True" PercentWidthEnabled="True" PercentHeightEnabled="True" LeftMargin="-15.0000" RightMargin="-15.0000" TopMargin="-9.8000" BottomMargin="-18.2000" Scale9Enable="True" LeftEage="11" TopEage="13" BottomEage="13" Scale9OriginX="11" Scale9OriginY="13" Scale9Width="916" Scale9Height="121" ctype="ImageViewObjectData">
                <Size X="1030.0000" Y="168.0000" />
                <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                <Position X="500.0000" Y="65.8000" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.5000" Y="0.4700" />
                <PreSize X="1.0300" Y="1.2000" />
                <FileData Type="Normal" Path="SettlementUI/settlement_lose_bg.png" Plist="" />
              </AbstractNodeData>
              <AbstractNodeData Name="score_label" ActionTag="-1477882105" Tag="1142" IconVisible="False" LeftMargin="780.0000" RightMargin="100.0000" TopMargin="46.0000" BottomMargin="46.0000" IsCustomSize="True" FontSize="48" LabelText="-1000" ShadowOffsetX="2.0000" ShadowOffsetY="-2.0000" ctype="TextObjectData">
                <Size X="120.0000" Y="48.0000" />
                <AnchorPoint ScaleY="0.5000" />
                <Position X="780.0000" Y="70.0000" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="245" G="218" B="96" />
                <PrePosition X="0.7800" Y="0.5000" />
                <PreSize X="0.1200" Y="0.3429" />
                <OutlineColor A="255" R="255" G="0" B="0" />
                <ShadowColor A="255" R="110" G="110" B="110" />
              </AbstractNodeData>
              <AbstractNodeData Name="player_lucky_tile_panel" ActionTag="503150165" VisibleForFrame="False" Tag="1143" IconVisible="False" LeftMargin="400.0000" RightMargin="260.0000" TopMargin="8.9000" BottomMargin="72.1000" ClipAble="False" BackColorAlpha="102" ColorAngle="90.0000" Scale9Width="1" Scale9Height="1" ctype="PanelObjectData">
                <Size X="340.0000" Y="59.0000" />
                <Children>
                  <AbstractNodeData Name="tile_img_0" ActionTag="-1960098056" Tag="1144" IconVisible="False" PositionPercentYEnabled="True" RightMargin="300.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                    <Size X="40.0000" Y="59.0000" />
                    <Children>
                      <AbstractNodeData Name="mahjong_img" ActionTag="1614789321" Tag="1145" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                        <Size X="25.0000" Y="39.0000" />
                        <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                        <Position X="20.0000" Y="37.0000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.5000" Y="0.6271" />
                        <PreSize X="0.6250" Y="0.6610" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="mark_img" ActionTag="939745276" Tag="1146" IconVisible="False" PositionPercentXEnabled="True" PositionPercentYEnabled="True" LeftMargin="-2.0000" RightMargin="-2.0000" TopMargin="22.1600" BottomMargin="-6.1600" LeftEage="14" RightEage="14" TopEage="14" BottomEage="14" Scale9OriginX="14" Scale9OriginY="14" Scale9Width="16" Scale9Height="15" ctype="ImageViewObjectData">
                        <Size X="44.0000" Y="43.0000" />
                        <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                        <Position X="20.0000" Y="15.3400" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.5000" Y="0.2600" />
                        <PreSize X="1.1000" Y="0.7288" />
                        <FileData Type="Normal" Path="Default/common_rightmark.png" Plist="" />
                      </AbstractNodeData>
                    </Children>
                    <AnchorPoint ScaleY="0.5000" />
                    <Position Y="29.5000" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition Y="0.5000" />
                    <PreSize X="0.1176" Y="1.0000" />
                    <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
                  </AbstractNodeData>
                  <AbstractNodeData Name="tile_img_1" ActionTag="1941775069" Tag="1147" IconVisible="False" PositionPercentYEnabled="True" LeftMargin="50.0000" RightMargin="250.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                    <Size X="40.0000" Y="59.0000" />
                    <Children>
                      <AbstractNodeData Name="mahjong_img" ActionTag="386505030" Tag="1148" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                        <Size X="25.0000" Y="39.0000" />
                        <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                        <Position X="20.0000" Y="37.0000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.5000" Y="0.6271" />
                        <PreSize X="0.6250" Y="0.6610" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="mark_img" ActionTag="-737401415" Tag="1149" IconVisible="False" PositionPercentXEnabled="True" PositionPercentYEnabled="True" LeftMargin="-2.0000" RightMargin="-2.0000" TopMargin="22.1600" BottomMargin="-6.1600" LeftEage="14" RightEage="14" TopEage="14" BottomEage="14" Scale9OriginX="14" Scale9OriginY="14" Scale9Width="16" Scale9Height="15" ctype="ImageViewObjectData">
                        <Size X="44.0000" Y="43.0000" />
                        <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                        <Position X="20.0000" Y="15.3400" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.5000" Y="0.2600" />
                        <PreSize X="1.1000" Y="0.7288" />
                        <FileData Type="Normal" Path="Default/common_rightmark.png" Plist="" />
                      </AbstractNodeData>
                    </Children>
                    <AnchorPoint ScaleY="0.5000" />
                    <Position X="50.0000" Y="29.5000" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.1471" Y="0.5000" />
                    <PreSize X="0.1176" Y="1.0000" />
                    <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
                  </AbstractNodeData>
                  <AbstractNodeData Name="tile_img_2" ActionTag="-665232012" Tag="1150" IconVisible="False" PositionPercentYEnabled="True" LeftMargin="100.0000" RightMargin="200.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                    <Size X="40.0000" Y="59.0000" />
                    <Children>
                      <AbstractNodeData Name="mahjong_img" ActionTag="-482174375" Tag="1151" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                        <Size X="25.0000" Y="39.0000" />
                        <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                        <Position X="20.0000" Y="37.0000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.5000" Y="0.6271" />
                        <PreSize X="0.6250" Y="0.6610" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="mark_img" ActionTag="1379305070" Tag="1152" IconVisible="False" PositionPercentXEnabled="True" PositionPercentYEnabled="True" LeftMargin="-2.0000" RightMargin="-2.0000" TopMargin="22.1600" BottomMargin="-6.1600" LeftEage="14" RightEage="14" TopEage="14" BottomEage="14" Scale9OriginX="14" Scale9OriginY="14" Scale9Width="16" Scale9Height="15" ctype="ImageViewObjectData">
                        <Size X="44.0000" Y="43.0000" />
                        <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                        <Position X="20.0000" Y="15.3400" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.5000" Y="0.2600" />
                        <PreSize X="1.1000" Y="0.7288" />
                        <FileData Type="Normal" Path="Default/common_rightmark.png" Plist="" />
                      </AbstractNodeData>
                    </Children>
                    <AnchorPoint ScaleY="0.5000" />
                    <Position X="100.0000" Y="29.5000" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.2941" Y="0.5000" />
                    <PreSize X="0.1176" Y="1.0000" />
                    <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
                  </AbstractNodeData>
                  <AbstractNodeData Name="tile_img_3" ActionTag="1182410791" Tag="1153" IconVisible="False" PositionPercentYEnabled="True" LeftMargin="150.0000" RightMargin="150.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                    <Size X="40.0000" Y="59.0000" />
                    <Children>
                      <AbstractNodeData Name="mahjong_img" ActionTag="-965351047" Tag="1154" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                        <Size X="25.0000" Y="39.0000" />
                        <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                        <Position X="20.0000" Y="37.0000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.5000" Y="0.6271" />
                        <PreSize X="0.6250" Y="0.6610" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="mark_img" ActionTag="-2137826664" Tag="1155" IconVisible="False" PositionPercentXEnabled="True" PositionPercentYEnabled="True" LeftMargin="-2.0000" RightMargin="-2.0000" TopMargin="22.1600" BottomMargin="-6.1600" LeftEage="14" RightEage="14" TopEage="14" BottomEage="14" Scale9OriginX="14" Scale9OriginY="14" Scale9Width="16" Scale9Height="15" ctype="ImageViewObjectData">
                        <Size X="44.0000" Y="43.0000" />
                        <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                        <Position X="20.0000" Y="15.3400" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.5000" Y="0.2600" />
                        <PreSize X="1.1000" Y="0.7288" />
                        <FileData Type="Normal" Path="Default/common_rightmark.png" Plist="" />
                      </AbstractNodeData>
                    </Children>
                    <AnchorPoint ScaleY="0.5000" />
                    <Position X="150.0000" Y="29.5000" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.4412" Y="0.5000" />
                    <PreSize X="0.1176" Y="1.0000" />
                    <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
                  </AbstractNodeData>
                  <AbstractNodeData Name="tile_img_4" ActionTag="1109696963" Tag="837" IconVisible="False" PositionPercentYEnabled="True" LeftMargin="200.0000" RightMargin="100.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                    <Size X="40.0000" Y="59.0000" />
                    <Children>
                      <AbstractNodeData Name="mahjong_img" ActionTag="-2119018394" Tag="838" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                        <Size X="25.0000" Y="39.0000" />
                        <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                        <Position X="20.0000" Y="37.0000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.5000" Y="0.6271" />
                        <PreSize X="0.6250" Y="0.6610" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="mark_img" ActionTag="-2015306242" Tag="839" IconVisible="False" PositionPercentXEnabled="True" PositionPercentYEnabled="True" LeftMargin="-2.0000" RightMargin="-2.0000" TopMargin="22.1600" BottomMargin="-6.1600" LeftEage="14" RightEage="14" TopEage="14" BottomEage="14" Scale9OriginX="14" Scale9OriginY="14" Scale9Width="16" Scale9Height="15" ctype="ImageViewObjectData">
                        <Size X="44.0000" Y="43.0000" />
                        <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                        <Position X="20.0000" Y="15.3400" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.5000" Y="0.2600" />
                        <PreSize X="1.1000" Y="0.7288" />
                        <FileData Type="Normal" Path="Default/common_rightmark.png" Plist="" />
                      </AbstractNodeData>
                    </Children>
                    <AnchorPoint ScaleY="0.5000" />
                    <Position X="200.0000" Y="29.5000" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.5882" Y="0.5000" />
                    <PreSize X="0.1176" Y="1.0000" />
                    <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
                  </AbstractNodeData>
                  <AbstractNodeData Name="tile_img_5" ActionTag="-1953937147" Tag="840" IconVisible="False" PositionPercentYEnabled="True" LeftMargin="250.0000" RightMargin="50.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                    <Size X="40.0000" Y="59.0000" />
                    <Children>
                      <AbstractNodeData Name="mahjong_img" ActionTag="-62864342" Tag="841" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                        <Size X="25.0000" Y="39.0000" />
                        <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                        <Position X="20.0000" Y="37.0000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.5000" Y="0.6271" />
                        <PreSize X="0.6250" Y="0.6610" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="mark_img" ActionTag="-1650449469" Tag="842" IconVisible="False" PositionPercentXEnabled="True" PositionPercentYEnabled="True" LeftMargin="-2.0000" RightMargin="-2.0000" TopMargin="22.1600" BottomMargin="-6.1600" LeftEage="14" RightEage="14" TopEage="14" BottomEage="14" Scale9OriginX="14" Scale9OriginY="14" Scale9Width="16" Scale9Height="15" ctype="ImageViewObjectData">
                        <Size X="44.0000" Y="43.0000" />
                        <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                        <Position X="20.0000" Y="15.3400" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.5000" Y="0.2600" />
                        <PreSize X="1.1000" Y="0.7288" />
                        <FileData Type="Normal" Path="Default/common_rightmark.png" Plist="" />
                      </AbstractNodeData>
                    </Children>
                    <AnchorPoint ScaleY="0.5000" />
                    <Position X="250.0000" Y="29.5000" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.7353" Y="0.5000" />
                    <PreSize X="0.1176" Y="1.0000" />
                    <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
                  </AbstractNodeData>
                  <AbstractNodeData Name="tile_img_6" ActionTag="530550360" Tag="473" IconVisible="False" PositionPercentYEnabled="True" LeftMargin="300.0000" TopMargin="-2.9500" BottomMargin="2.9500" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                    <Size X="40.0000" Y="59.0000" />
                    <Children>
                      <AbstractNodeData Name="mahjong_img" ActionTag="5053819" Tag="474" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                        <Size X="25.0000" Y="39.0000" />
                        <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                        <Position X="20.0000" Y="37.0000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.5000" Y="0.6271" />
                        <PreSize X="0.6250" Y="0.6610" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="mark_img" ActionTag="785385295" Tag="475" IconVisible="False" PositionPercentXEnabled="True" PositionPercentYEnabled="True" LeftMargin="-2.0000" RightMargin="-2.0000" TopMargin="22.1600" BottomMargin="-6.1600" LeftEage="14" RightEage="14" TopEage="14" BottomEage="14" Scale9OriginX="14" Scale9OriginY="14" Scale9Width="16" Scale9Height="15" ctype="ImageViewObjectData">
                        <Size X="44.0000" Y="43.0000" />
                        <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                        <Position X="20.0000" Y="15.3400" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.5000" Y="0.2600" />
                        <PreSize X="1.1000" Y="0.7288" />
                        <FileData Type="Normal" Path="Default/common_rightmark.png" Plist="" />
                      </AbstractNodeData>
                    </Children>
                    <AnchorPoint ScaleY="0.5000" />
                    <Position X="300.0000" Y="32.4500" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.8824" Y="0.5500" />
                    <PreSize X="0.1176" Y="1.0000" />
                    <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
                  </AbstractNodeData>
                </Children>
                <AnchorPoint ScaleY="0.5000" />
                <Position X="400.0000" Y="101.6000" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.4000" Y="0.7257" />
                <PreSize X="0.3400" Y="0.4214" />
                <SingleColor A="255" R="150" G="200" B="255" />
                <FirstColor A="255" R="150" G="200" B="255" />
                <EndColor A="255" R="255" G="255" B="255" />
                <ColorVector ScaleY="1.0000" />
              </AbstractNodeData>
              <AbstractNodeData Name="lucky_label" ActionTag="770745968" VisibleForFrame="False" Tag="1156" IconVisible="False" LeftMargin="310.0000" RightMargin="600.0000" TopMargin="16.0003" BottomMargin="87.9997" IsCustomSize="True" FontSize="36" LabelText="中码" ShadowOffsetX="2.0000" ShadowOffsetY="-2.0000" ctype="TextObjectData">
                <Size X="90.0000" Y="36.0000" />
                <AnchorPoint ScaleY="0.5000" />
                <Position X="310.0000" Y="105.9997" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="223" />
                <PrePosition X="0.3100" Y="0.7571" />
                <PreSize X="0.0900" Y="0.2571" />
                <OutlineColor A="255" R="255" G="0" B="0" />
                <ShadowColor A="255" R="110" G="110" B="110" />
              </AbstractNodeData>
              <AbstractNodeData Name="player_tile_panel" ActionTag="-948730818" Tag="1157" IconVisible="False" LeftMargin="131.1000" RightMargin="-173.1001" TopMargin="71.8998" BottomMargin="9.1002" ClipAble="False" BackColorAlpha="102" ColorAngle="90.0000" Scale9Width="1" Scale9Height="1" ctype="PanelObjectData">
                <Size X="1042.0000" Y="59.0000" />
                <Children>
                  <AbstractNodeData Name="player_hand_panel" ActionTag="-1435723043" Tag="1158" IconVisible="False" TopMargin="-51.0000" ClipAble="False" BackColorAlpha="102" ColorAngle="90.0000" Scale9Width="1" Scale9Height="1" ctype="PanelObjectData">
                    <Size X="1042.0000" Y="110.0000" />
                    <Children>
                      <AbstractNodeData Name="tile_img_0" ActionTag="-2039340921" Tag="1159" IconVisible="False" RightMargin="967.0000" TopMargin="-1.0000" TouchEnable="True" Scale9Width="75" Scale9Height="111" ctype="ImageViewObjectData">
                        <Size X="75.0000" Y="111.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="-849971330" Tag="1160" IconVisible="False" LeftMargin="13.0000" RightMargin="14.0000" TopMargin="27.5000" BottomMargin="6.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="15" Scale9OriginY="25" Scale9Width="18" Scale9Height="27" ctype="ImageViewObjectData">
                            <Size X="48.0000" Y="77.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="37.0000" Y="45.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.4933" Y="0.4054" />
                            <PreSize X="0.6400" Y="0.6937" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_big_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint />
                        <Position />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition />
                        <PreSize X="0.0720" Y="1.0091" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_hand.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="tile_img_1" ActionTag="-535590453" Tag="1161" IconVisible="False" LeftMargin="73.0000" RightMargin="894.0000" TopMargin="-1.0000" TouchEnable="True" Scale9Width="75" Scale9Height="111" ctype="ImageViewObjectData">
                        <Size X="75.0000" Y="111.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="1778355208" Tag="1162" IconVisible="False" LeftMargin="13.0000" RightMargin="14.0000" TopMargin="27.5000" BottomMargin="6.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="15" Scale9OriginY="25" Scale9Width="18" Scale9Height="27" ctype="ImageViewObjectData">
                            <Size X="48.0000" Y="77.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="37.0000" Y="45.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.4933" Y="0.4054" />
                            <PreSize X="0.6400" Y="0.6937" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_big_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint />
                        <Position X="73.0000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.0701" />
                        <PreSize X="0.0720" Y="1.0091" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_hand.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="tile_img_2" ActionTag="1297290535" Tag="1163" IconVisible="False" LeftMargin="146.0000" RightMargin="821.0000" TopMargin="-1.0000" TouchEnable="True" Scale9Width="75" Scale9Height="111" ctype="ImageViewObjectData">
                        <Size X="75.0000" Y="111.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="287814204" Tag="1164" IconVisible="False" LeftMargin="13.0000" RightMargin="14.0000" TopMargin="27.5000" BottomMargin="6.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="15" Scale9OriginY="25" Scale9Width="18" Scale9Height="27" ctype="ImageViewObjectData">
                            <Size X="48.0000" Y="77.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="37.0000" Y="45.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.4933" Y="0.4054" />
                            <PreSize X="0.6400" Y="0.6937" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_big_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint />
                        <Position X="146.0000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.1401" />
                        <PreSize X="0.0720" Y="1.0091" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_hand.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="tile_img_3" ActionTag="1017595563" Tag="1165" IconVisible="False" LeftMargin="219.0000" RightMargin="748.0000" TopMargin="-1.0000" TouchEnable="True" Scale9Width="75" Scale9Height="111" ctype="ImageViewObjectData">
                        <Size X="75.0000" Y="111.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="862687036" Tag="1166" IconVisible="False" LeftMargin="13.0000" RightMargin="14.0000" TopMargin="27.5000" BottomMargin="6.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="15" Scale9OriginY="25" Scale9Width="18" Scale9Height="27" ctype="ImageViewObjectData">
                            <Size X="48.0000" Y="77.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="37.0000" Y="45.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.4933" Y="0.4054" />
                            <PreSize X="0.6400" Y="0.6937" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_big_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint />
                        <Position X="219.0000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.2102" />
                        <PreSize X="0.0720" Y="1.0091" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_hand.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="tile_img_4" ActionTag="-244630261" Tag="1167" IconVisible="False" LeftMargin="292.0000" RightMargin="675.0000" TopMargin="-1.0000" TouchEnable="True" Scale9Width="75" Scale9Height="111" ctype="ImageViewObjectData">
                        <Size X="75.0000" Y="111.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="1327978957" Tag="1168" IconVisible="False" LeftMargin="13.0000" RightMargin="14.0000" TopMargin="27.5000" BottomMargin="6.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="15" Scale9OriginY="25" Scale9Width="18" Scale9Height="27" ctype="ImageViewObjectData">
                            <Size X="48.0000" Y="77.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="37.0000" Y="45.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.4933" Y="0.4054" />
                            <PreSize X="0.6400" Y="0.6937" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_big_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint />
                        <Position X="292.0000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.2802" />
                        <PreSize X="0.0720" Y="1.0091" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_hand.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="tile_img_5" ActionTag="-756533313" Tag="1169" IconVisible="False" LeftMargin="365.0000" RightMargin="602.0000" TopMargin="-1.0000" TouchEnable="True" Scale9Width="75" Scale9Height="111" ctype="ImageViewObjectData">
                        <Size X="75.0000" Y="111.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="-1612595112" Tag="1170" IconVisible="False" LeftMargin="13.0000" RightMargin="14.0000" TopMargin="27.5000" BottomMargin="6.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="15" Scale9OriginY="25" Scale9Width="18" Scale9Height="27" ctype="ImageViewObjectData">
                            <Size X="48.0000" Y="77.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="37.0000" Y="45.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.4933" Y="0.4054" />
                            <PreSize X="0.6400" Y="0.6937" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_big_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint />
                        <Position X="365.0000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.3503" />
                        <PreSize X="0.0720" Y="1.0091" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_hand.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="tile_img_6" ActionTag="502501745" Tag="1171" IconVisible="False" LeftMargin="438.0000" RightMargin="529.0000" TopMargin="-1.0000" TouchEnable="True" Scale9Width="75" Scale9Height="111" ctype="ImageViewObjectData">
                        <Size X="75.0000" Y="111.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="824511159" Tag="1172" IconVisible="False" LeftMargin="13.0000" RightMargin="14.0000" TopMargin="27.5000" BottomMargin="6.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="15" Scale9OriginY="25" Scale9Width="18" Scale9Height="27" ctype="ImageViewObjectData">
                            <Size X="48.0000" Y="77.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="37.0000" Y="45.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.4933" Y="0.4054" />
                            <PreSize X="0.6400" Y="0.6937" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_big_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint />
                        <Position X="438.0000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.4203" />
                        <PreSize X="0.0720" Y="1.0091" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_hand.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="tile_img_7" ActionTag="475325942" Tag="1173" IconVisible="False" LeftMargin="511.0000" RightMargin="456.0000" TopMargin="-1.0000" TouchEnable="True" Scale9Width="75" Scale9Height="111" ctype="ImageViewObjectData">
                        <Size X="75.0000" Y="111.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="903642454" Tag="1174" IconVisible="False" LeftMargin="13.0000" RightMargin="14.0000" TopMargin="27.5000" BottomMargin="6.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="15" Scale9OriginY="25" Scale9Width="18" Scale9Height="27" ctype="ImageViewObjectData">
                            <Size X="48.0000" Y="77.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="37.0000" Y="45.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.4933" Y="0.4054" />
                            <PreSize X="0.6400" Y="0.6937" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_big_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint />
                        <Position X="511.0000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.4904" />
                        <PreSize X="0.0720" Y="1.0091" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_hand.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="tile_img_8" ActionTag="-643553782" Tag="1175" IconVisible="False" LeftMargin="584.0000" RightMargin="383.0000" TopMargin="-1.0000" TouchEnable="True" Scale9Width="75" Scale9Height="111" ctype="ImageViewObjectData">
                        <Size X="75.0000" Y="111.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="-225021922" Tag="1176" IconVisible="False" LeftMargin="13.0000" RightMargin="14.0000" TopMargin="27.5000" BottomMargin="6.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="15" Scale9OriginY="25" Scale9Width="18" Scale9Height="27" ctype="ImageViewObjectData">
                            <Size X="48.0000" Y="77.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="37.0000" Y="45.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.4933" Y="0.4054" />
                            <PreSize X="0.6400" Y="0.6937" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_big_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint />
                        <Position X="584.0000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.5605" />
                        <PreSize X="0.0720" Y="1.0091" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_hand.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="tile_img_9" ActionTag="1916957736" Tag="1177" IconVisible="False" LeftMargin="657.0000" RightMargin="310.0000" TopMargin="-1.0000" TouchEnable="True" Scale9Width="75" Scale9Height="111" ctype="ImageViewObjectData">
                        <Size X="75.0000" Y="111.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="359234069" Tag="1178" IconVisible="False" LeftMargin="13.0000" RightMargin="14.0000" TopMargin="27.5000" BottomMargin="6.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="15" Scale9OriginY="25" Scale9Width="18" Scale9Height="27" ctype="ImageViewObjectData">
                            <Size X="48.0000" Y="77.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="37.0000" Y="45.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.4933" Y="0.4054" />
                            <PreSize X="0.6400" Y="0.6937" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_big_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint />
                        <Position X="657.0000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.6305" />
                        <PreSize X="0.0720" Y="1.0091" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_hand.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="tile_img_10" ActionTag="1750589324" Tag="1179" IconVisible="False" LeftMargin="730.0000" RightMargin="237.0000" TopMargin="-1.0000" TouchEnable="True" Scale9Width="75" Scale9Height="111" ctype="ImageViewObjectData">
                        <Size X="75.0000" Y="111.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="-575068369" Tag="1180" IconVisible="False" LeftMargin="13.0000" RightMargin="14.0000" TopMargin="27.5000" BottomMargin="6.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="15" Scale9OriginY="25" Scale9Width="18" Scale9Height="27" ctype="ImageViewObjectData">
                            <Size X="48.0000" Y="77.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="37.0000" Y="45.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.4933" Y="0.4054" />
                            <PreSize X="0.6400" Y="0.6937" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_big_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint />
                        <Position X="730.0000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.7006" />
                        <PreSize X="0.0720" Y="1.0091" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_hand.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="tile_img_11" ActionTag="1095236016" Tag="1181" IconVisible="False" LeftMargin="803.0000" RightMargin="164.0000" TopMargin="-1.0000" TouchEnable="True" Scale9Width="75" Scale9Height="111" ctype="ImageViewObjectData">
                        <Size X="75.0000" Y="111.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="-1570667121" Tag="1182" IconVisible="False" LeftMargin="13.0000" RightMargin="14.0000" TopMargin="27.5000" BottomMargin="6.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="15" Scale9OriginY="25" Scale9Width="18" Scale9Height="27" ctype="ImageViewObjectData">
                            <Size X="48.0000" Y="77.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="37.0000" Y="45.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.4933" Y="0.4054" />
                            <PreSize X="0.6400" Y="0.6937" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_big_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint />
                        <Position X="803.0000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.7706" />
                        <PreSize X="0.0720" Y="1.0091" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_hand.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="tile_img_12" ActionTag="-1847372907" Tag="1183" IconVisible="False" LeftMargin="876.0000" RightMargin="91.0000" TopMargin="-1.0000" TouchEnable="True" Scale9Width="75" Scale9Height="111" ctype="ImageViewObjectData">
                        <Size X="75.0000" Y="111.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="385404678" Tag="1184" IconVisible="False" LeftMargin="13.0000" RightMargin="14.0000" TopMargin="27.5000" BottomMargin="6.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="15" Scale9OriginY="25" Scale9Width="18" Scale9Height="27" ctype="ImageViewObjectData">
                            <Size X="48.0000" Y="77.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="37.0000" Y="45.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.4933" Y="0.4054" />
                            <PreSize X="0.6400" Y="0.6937" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_big_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint />
                        <Position X="876.0000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.8407" />
                        <PreSize X="0.0720" Y="1.0091" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_hand.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="tile_img_13" ActionTag="1169840517" Tag="1185" IconVisible="False" LeftMargin="949.0000" RightMargin="18.0000" TopMargin="-1.0000" TouchEnable="True" Scale9Width="75" Scale9Height="111" ctype="ImageViewObjectData">
                        <Size X="75.0000" Y="111.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="-516542294" Tag="1186" IconVisible="False" LeftMargin="13.0000" RightMargin="14.0000" TopMargin="27.5000" BottomMargin="6.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="15" Scale9OriginY="25" Scale9Width="18" Scale9Height="27" ctype="ImageViewObjectData">
                            <Size X="48.0000" Y="77.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="37.0000" Y="45.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.4933" Y="0.4054" />
                            <PreSize X="0.6400" Y="0.6937" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_big_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint />
                        <Position X="949.0000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.9107" />
                        <PreSize X="0.0720" Y="1.0091" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_hand.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="mask_panel" ActionTag="1707079116" VisibleForFrame="False" Tag="1187" IconVisible="False" PercentWidthEnable="True" PercentHeightEnable="True" PercentWidthEnabled="True" PercentHeightEnabled="True" TouchEnable="True" ClipAble="False" BackColorAlpha="102" ColorAngle="90.0000" Scale9Width="1" Scale9Height="1" ctype="PanelObjectData">
                        <Size X="1042.0000" Y="110.0000" />
                        <AnchorPoint />
                        <Position />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition />
                        <PreSize X="1.0000" Y="1.0000" />
                        <SingleColor A="255" R="150" G="200" B="255" />
                        <FirstColor A="255" R="150" G="200" B="255" />
                        <EndColor A="255" R="255" G="255" B="255" />
                        <ColorVector ScaleY="1.0000" />
                      </AbstractNodeData>
                    </Children>
                    <AnchorPoint />
                    <Position />
                    <Scale ScaleX="0.5500" ScaleY="0.5500" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition />
                    <PreSize X="1.0000" Y="1.8644" />
                    <SingleColor A="255" R="150" G="200" B="255" />
                    <FirstColor A="255" R="150" G="200" B="255" />
                    <EndColor A="255" R="255" G="255" B="255" />
                    <ColorVector ScaleY="1.0000" />
                  </AbstractNodeData>
                  <AbstractNodeData Name="player_up_panel" ActionTag="1373246383" Tag="1188" IconVisible="False" ClipAble="False" BackColorAlpha="102" ColorAngle="90.0000" Scale9Width="1" Scale9Height="1" ctype="PanelObjectData">
                    <Size X="1042.0000" Y="59.0000" />
                    <Children>
                      <AbstractNodeData Name="tile_img_0" ActionTag="2076488126" Tag="1189" IconVisible="False" PositionPercentYEnabled="True" RightMargin="1002.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                        <Size X="40.0000" Y="59.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="1280536276" Tag="1190" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                            <Size X="25.0000" Y="39.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="20.0000" Y="37.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.5000" Y="0.6271" />
                            <PreSize X="0.6250" Y="0.6610" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint ScaleY="0.5000" />
                        <Position Y="29.5000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition Y="0.5000" />
                        <PreSize X="0.0384" Y="1.0000" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="tile_img_1" ActionTag="73064738" Tag="1191" IconVisible="False" PositionPercentYEnabled="True" LeftMargin="38.0000" RightMargin="964.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                        <Size X="40.0000" Y="59.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="-1706171779" Tag="1192" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                            <Size X="25.0000" Y="39.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="20.0000" Y="37.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.5000" Y="0.6271" />
                            <PreSize X="0.6250" Y="0.6610" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint ScaleY="0.5000" />
                        <Position X="38.0000" Y="29.5000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.0365" Y="0.5000" />
                        <PreSize X="0.0384" Y="1.0000" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="tile_img_2" ActionTag="1855404556" Tag="1193" IconVisible="False" PositionPercentYEnabled="True" LeftMargin="76.0000" RightMargin="926.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                        <Size X="40.0000" Y="59.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="2105345983" Tag="1194" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                            <Size X="25.0000" Y="39.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="20.0000" Y="37.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.5000" Y="0.6271" />
                            <PreSize X="0.6250" Y="0.6610" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint ScaleY="0.5000" />
                        <Position X="76.0000" Y="29.5000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.0729" Y="0.5000" />
                        <PreSize X="0.0384" Y="1.0000" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="tile_img_3" ActionTag="-1786419563" Tag="1195" IconVisible="False" PositionPercentYEnabled="True" LeftMargin="136.0000" RightMargin="866.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                        <Size X="40.0000" Y="59.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="292637335" Tag="1196" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                            <Size X="25.0000" Y="39.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="20.0000" Y="37.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.5000" Y="0.6271" />
                            <PreSize X="0.6250" Y="0.6610" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint ScaleY="0.5000" />
                        <Position X="136.0000" Y="29.5000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.1305" Y="0.5000" />
                        <PreSize X="0.0384" Y="1.0000" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="tile_img_4" ActionTag="655129935" Tag="1197" IconVisible="False" PositionPercentYEnabled="True" LeftMargin="172.0000" RightMargin="830.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                        <Size X="40.0000" Y="59.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="945810176" Tag="1198" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                            <Size X="25.0000" Y="39.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="20.0000" Y="37.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.5000" Y="0.6271" />
                            <PreSize X="0.6250" Y="0.6610" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint ScaleY="0.5000" />
                        <Position X="172.0000" Y="29.5000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.1651" Y="0.5000" />
                        <PreSize X="0.0384" Y="1.0000" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="tile_img_5" ActionTag="1947110167" Tag="1199" IconVisible="False" PositionPercentYEnabled="True" LeftMargin="208.0000" RightMargin="794.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                        <Size X="40.0000" Y="59.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="-75167971" Tag="1200" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                            <Size X="25.0000" Y="39.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="20.0000" Y="37.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.5000" Y="0.6271" />
                            <PreSize X="0.6250" Y="0.6610" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint ScaleY="0.5000" />
                        <Position X="208.0000" Y="29.5000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.1996" Y="0.5000" />
                        <PreSize X="0.0384" Y="1.0000" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="tile_img_6" ActionTag="-1662463218" Tag="1201" IconVisible="False" PositionPercentYEnabled="True" LeftMargin="268.0000" RightMargin="734.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                        <Size X="40.0000" Y="59.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="508495965" Tag="1202" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                            <Size X="25.0000" Y="39.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="20.0000" Y="37.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.5000" Y="0.6271" />
                            <PreSize X="0.6250" Y="0.6610" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint ScaleY="0.5000" />
                        <Position X="268.0000" Y="29.5000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.2572" Y="0.5000" />
                        <PreSize X="0.0384" Y="1.0000" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="tile_img_7" ActionTag="1553907494" Tag="1203" IconVisible="False" PositionPercentYEnabled="True" LeftMargin="306.0000" RightMargin="696.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                        <Size X="40.0000" Y="59.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="-1248020243" Tag="1204" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                            <Size X="25.0000" Y="39.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="20.0000" Y="37.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.5000" Y="0.6271" />
                            <PreSize X="0.6250" Y="0.6610" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint ScaleY="0.5000" />
                        <Position X="306.0000" Y="29.5000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.2937" Y="0.5000" />
                        <PreSize X="0.0384" Y="1.0000" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="tile_img_8" ActionTag="-585056329" Tag="1205" IconVisible="False" PositionPercentYEnabled="True" LeftMargin="344.0000" RightMargin="658.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                        <Size X="40.0000" Y="59.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="-784139288" Tag="1206" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                            <Size X="25.0000" Y="39.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="20.0000" Y="37.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.5000" Y="0.6271" />
                            <PreSize X="0.6250" Y="0.6610" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint ScaleY="0.5000" />
                        <Position X="344.0000" Y="29.5000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.3301" Y="0.5000" />
                        <PreSize X="0.0384" Y="1.0000" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="tile_img_9" ActionTag="1071894897" Tag="1207" IconVisible="False" PositionPercentYEnabled="True" LeftMargin="404.0000" RightMargin="598.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                        <Size X="40.0000" Y="59.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="1542550675" Tag="1208" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                            <Size X="25.0000" Y="39.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="20.0000" Y="37.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.5000" Y="0.6271" />
                            <PreSize X="0.6250" Y="0.6610" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint ScaleY="0.5000" />
                        <Position X="404.0000" Y="29.5000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.3877" Y="0.5000" />
                        <PreSize X="0.0384" Y="1.0000" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="tile_img_10" ActionTag="1669316728" Tag="1209" IconVisible="False" PositionPercentYEnabled="True" LeftMargin="442.0000" RightMargin="560.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                        <Size X="40.0000" Y="59.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="-1702308974" Tag="1210" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                            <Size X="25.0000" Y="39.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="20.0000" Y="37.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.5000" Y="0.6271" />
                            <PreSize X="0.6250" Y="0.6610" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint ScaleY="0.5000" />
                        <Position X="442.0000" Y="29.5000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.4242" Y="0.5000" />
                        <PreSize X="0.0384" Y="1.0000" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="tile_img_11" ActionTag="1913296711" Tag="1211" IconVisible="False" PositionPercentYEnabled="True" LeftMargin="480.0000" RightMargin="522.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                        <Size X="40.0000" Y="59.0000" />
                        <Children>
                          <AbstractNodeData Name="mahjong_img" ActionTag="1449056511" Tag="1212" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                            <Size X="25.0000" Y="39.0000" />
                            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                            <Position X="20.0000" Y="37.0000" />
                            <Scale ScaleX="1.0000" ScaleY="1.0000" />
                            <CColor A="255" R="255" G="255" B="255" />
                            <PrePosition X="0.5000" Y="0.6271" />
                            <PreSize X="0.6250" Y="0.6610" />
                            <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                          </AbstractNodeData>
                        </Children>
                        <AnchorPoint ScaleY="0.5000" />
                        <Position X="480.0000" Y="29.5000" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.4607" Y="0.5000" />
                        <PreSize X="0.0384" Y="1.0000" />
                        <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
                      </AbstractNodeData>
                    </Children>
                    <AnchorPoint />
                    <Position />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition />
                    <PreSize X="1.0000" Y="1.0000" />
                    <SingleColor A="255" R="150" G="200" B="255" />
                    <FirstColor A="255" R="150" G="200" B="255" />
                    <EndColor A="255" R="255" G="255" B="255" />
                    <ColorVector ScaleY="1.0000" />
                  </AbstractNodeData>
                </Children>
                <AnchorPoint ScaleX="0.4500" ScaleY="0.5000" />
                <Position X="600.0000" Y="38.6002" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.6000" Y="0.2757" />
                <PreSize X="1.0420" Y="0.4214" />
                <SingleColor A="255" R="150" G="200" B="255" />
                <FirstColor A="255" R="150" G="200" B="255" />
                <EndColor A="255" R="255" G="255" B="255" />
                <ColorVector ScaleY="1.0000" />
              </AbstractNodeData>
              <AbstractNodeData Name="player_info_panel" ActionTag="1864123055" Tag="1213" IconVisible="False" LeftMargin="0.0400" RightMargin="869.9600" ClipAble="False" BackColorAlpha="127" ColorAngle="90.0000" Scale9Width="1" Scale9Height="1" ctype="PanelObjectData">
                <Size X="130.0000" Y="140.0000" />
                <Children>
                  <AbstractNodeData Name="portrait_sprite" ActionTag="-276452669" Tag="361" IconVisible="False" LeftMargin="40.0000" RightMargin="40.0000" TopMargin="33.0000" BottomMargin="57.0000" ctype="SpriteObjectData">
                    <Size X="50.0000" Y="50.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="65.0000" Y="82.0000" />
                    <Scale ScaleX="1.6000" ScaleY="1.6000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.5000" Y="0.5857" />
                    <PreSize X="0.3846" Y="0.3571" />
                    <FileData Type="Normal" Path="Default/common_portrait_mask.png" Plist="" />
                    <BlendFunc Src="1" Dst="771" />
                  </AbstractNodeData>
                  <AbstractNodeData Name="frame_img" ActionTag="1538048104" Tag="1215" IconVisible="False" PositionPercentXEnabled="True" PositionPercentYEnabled="True" LeftMargin="18.5000" RightMargin="18.5000" TopMargin="11.0040" BottomMargin="16.9960" LeftEage="24" RightEage="24" TopEage="24" BottomEage="24" Scale9OriginX="24" Scale9OriginY="24" Scale9Width="45" Scale9Height="64" ctype="ImageViewObjectData">
                    <Size X="93.0000" Y="112.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="65.0000" Y="72.9960" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.5000" Y="0.5214" />
                    <PreSize X="0.7154" Y="0.8000" />
                    <FileData Type="Normal" Path="Default/common_portrait_frame.png" Plist="" />
                  </AbstractNodeData>
                  <AbstractNodeData Name="name_label" ActionTag="1120884374" Tag="1216" IconVisible="False" PositionPercentXEnabled="True" LeftMargin="5.0000" RightMargin="5.0000" TopMargin="110.0000" BottomMargin="10.0000" IsCustomSize="True" FontSize="20" LabelText="我我我我我我我" ShadowOffsetX="2.0000" ShadowOffsetY="-2.0000" ctype="TextObjectData">
                    <Size X="120.0000" Y="20.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="65.0000" Y="20.0000" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="253" B="217" />
                    <PrePosition X="0.5000" Y="0.1429" />
                    <PreSize X="0.9231" Y="0.1429" />
                    <OutlineColor A="255" R="255" G="0" B="0" />
                    <ShadowColor A="255" R="110" G="110" B="110" />
                  </AbstractNodeData>
                </Children>
                <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                <Position X="65.0400" Y="70.0000" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.0650" Y="0.5000" />
                <PreSize X="0.1300" Y="1.0000" />
                <SingleColor A="255" R="0" G="0" B="0" />
                <FirstColor A="255" R="150" G="200" B="255" />
                <EndColor A="255" R="255" G="255" B="255" />
                <ColorVector ScaleY="1.0000" />
              </AbstractNodeData>
              <AbstractNodeData Name="win_label" ActionTag="1451152769" VisibleForFrame="False" Tag="1217" IconVisible="False" LeftMargin="120.0000" RightMargin="680.0000" TopMargin="16.0002" BottomMargin="87.9998" IsCustomSize="True" FontSize="36" LabelText="自摸" HorizontalAlignmentType="HT_Center" ShadowOffsetX="2.0000" ShadowOffsetY="-2.0000" ctype="TextObjectData">
                <Size X="200.0000" Y="36.0000" />
                <AnchorPoint ScaleY="0.5000" />
                <Position X="120.0000" Y="105.9998" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="223" />
                <PrePosition X="0.1200" Y="0.7571" />
                <PreSize X="0.2000" Y="0.2571" />
                <OutlineColor A="255" R="255" G="0" B="0" />
                <ShadowColor A="255" R="110" G="110" B="110" />
              </AbstractNodeData>
            </Children>
            <AnchorPoint ScaleX="0.6000" ScaleY="0.5000" />
            <Position X="640.0000" Y="201.6000" />
            <Scale ScaleX="1.0000" ScaleY="1.0000" />
            <CColor A="255" R="255" G="255" B="255" />
            <PrePosition X="0.5000" Y="0.2800" />
            <PreSize X="0.7813" Y="0.1944" />
            <SingleColor A="255" R="150" G="200" B="255" />
            <FirstColor A="255" R="150" G="200" B="255" />
            <EndColor A="255" R="255" G="255" B="255" />
            <ColorVector ScaleY="1.0000" />
          </AbstractNodeData>
          <AbstractNodeData Name="dealer_img" ActionTag="-617355924" Tag="982" IconVisible="False" PositionPercentXEnabled="True" PositionPercentYEnabled="True" LeftMargin="952.6000" RightMargin="5.4000" TopMargin="189.0000" LeftEage="106" RightEage="106" TopEage="175" BottomEage="175" Scale9OriginX="106" Scale9OriginY="175" Scale9Width="110" Scale9Height="181" ctype="ImageViewObjectData">
            <Size X="322.0000" Y="531.0000" />
            <AnchorPoint ScaleX="0.5000" />
            <Position X="1113.6000" />
            <Scale ScaleX="1.0000" ScaleY="1.0000" />
            <CColor A="255" R="255" G="255" B="255" />
            <PrePosition X="0.8700" />
            <PreSize X="0.2516" Y="0.7375" />
            <FileData Type="Normal" Path="Dealer/dealer_smile.png" Plist="" />
          </AbstractNodeData>
          <AbstractNodeData Name="result_img" ActionTag="-695345471" Tag="1218" IconVisible="False" PositionPercentXEnabled="True" PositionPercentYEnabled="True" LeftMargin="979.6000" RightMargin="32.4000" TopMargin="38.3000" BottomMargin="556.7000" LeftEage="118" RightEage="118" TopEage="32" BottomEage="32" Scale9OriginX="118" Scale9OriginY="32" Scale9Width="32" Scale9Height="61" ctype="ImageViewObjectData">
            <Size X="268.0000" Y="125.0000" />
            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
            <Position X="1113.6000" Y="619.2000" />
            <Scale ScaleX="1.0000" ScaleY="1.0000" />
            <CColor A="255" R="255" G="255" B="255" />
            <PrePosition X="0.8700" Y="0.8600" />
            <PreSize X="0.2094" Y="0.1736" />
            <FileData Type="Normal" Path="SettlementUI/settlement_winonce_img.png" Plist="" />
          </AbstractNodeData>
          <AbstractNodeData Name="lefttile_panel" ActionTag="-1467325704" Tag="793" IconVisible="False" PositionPercentXEnabled="True" PositionPercentYEnabled="True" LeftMargin="-159.4000" RightMargin="301.4000" TopMargin="596.0000" BottomMargin="20.0000" ClipAble="False" BackColorAlpha="102" ColorAngle="90.0000" Scale9Width="1" Scale9Height="1" ctype="PanelObjectData">
            <Size X="1138.0000" Y="104.0000" />
            <Children>
              <AbstractNodeData Name="tile_img_0" ActionTag="500455088" Tag="794" IconVisible="False" LeftMargin="-0.0002" RightMargin="1098.0002" BottomMargin="45.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                <Size X="40.0000" Y="59.0000" />
                <Children>
                  <AbstractNodeData Name="mahjong_img" ActionTag="698712285" Tag="795" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                    <Size X="25.0000" Y="39.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="20.0000" Y="37.0000" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.5000" Y="0.6271" />
                    <PreSize X="0.6250" Y="0.6610" />
                    <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                  </AbstractNodeData>
                </Children>
                <AnchorPoint ScaleY="0.5000" />
                <Position X="-0.0002" Y="74.5000" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.0000" Y="0.7163" />
                <PreSize X="0.0351" Y="0.5673" />
                <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
              </AbstractNodeData>
              <AbstractNodeData Name="tile_img_1" ActionTag="512217215" Tag="796" IconVisible="False" LeftMargin="37.9994" RightMargin="1060.0006" BottomMargin="45.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                <Size X="40.0000" Y="59.0000" />
                <Children>
                  <AbstractNodeData Name="mahjong_img" ActionTag="-1347433463" Tag="797" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                    <Size X="25.0000" Y="39.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="20.0000" Y="37.0000" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.5000" Y="0.6271" />
                    <PreSize X="0.6250" Y="0.6610" />
                    <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                  </AbstractNodeData>
                </Children>
                <AnchorPoint ScaleY="0.5000" />
                <Position X="37.9994" Y="74.5000" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.0334" Y="0.7163" />
                <PreSize X="0.0351" Y="0.5673" />
                <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
              </AbstractNodeData>
              <AbstractNodeData Name="tile_img_2" ActionTag="632244108" Tag="798" IconVisible="False" LeftMargin="75.9997" RightMargin="1022.0003" BottomMargin="45.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                <Size X="40.0000" Y="59.0000" />
                <Children>
                  <AbstractNodeData Name="mahjong_img" ActionTag="-708542487" Tag="799" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                    <Size X="25.0000" Y="39.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="20.0000" Y="37.0000" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.5000" Y="0.6271" />
                    <PreSize X="0.6250" Y="0.6610" />
                    <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                  </AbstractNodeData>
                </Children>
                <AnchorPoint ScaleY="0.5000" />
                <Position X="75.9997" Y="74.5000" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.0668" Y="0.7163" />
                <PreSize X="0.0351" Y="0.5673" />
                <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
              </AbstractNodeData>
              <AbstractNodeData Name="tile_img_3" ActionTag="-1116526838" Tag="800" IconVisible="False" LeftMargin="113.9997" RightMargin="984.0003" BottomMargin="45.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                <Size X="40.0000" Y="59.0000" />
                <Children>
                  <AbstractNodeData Name="mahjong_img" ActionTag="-468933603" Tag="801" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                    <Size X="25.0000" Y="39.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="20.0000" Y="37.0000" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.5000" Y="0.6271" />
                    <PreSize X="0.6250" Y="0.6610" />
                    <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                  </AbstractNodeData>
                </Children>
                <AnchorPoint ScaleY="0.5000" />
                <Position X="113.9997" Y="74.5000" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.1002" Y="0.7163" />
                <PreSize X="0.0351" Y="0.5673" />
                <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
              </AbstractNodeData>
              <AbstractNodeData Name="tile_img_4" ActionTag="-2033481198" Tag="802" IconVisible="False" LeftMargin="151.9997" RightMargin="946.0003" BottomMargin="45.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                <Size X="40.0000" Y="59.0000" />
                <Children>
                  <AbstractNodeData Name="mahjong_img" ActionTag="-1048109024" Tag="803" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                    <Size X="25.0000" Y="39.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="20.0000" Y="37.0000" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.5000" Y="0.6271" />
                    <PreSize X="0.6250" Y="0.6610" />
                    <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                  </AbstractNodeData>
                </Children>
                <AnchorPoint ScaleY="0.5000" />
                <Position X="151.9997" Y="74.5000" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.1336" Y="0.7163" />
                <PreSize X="0.0351" Y="0.5673" />
                <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
              </AbstractNodeData>
              <AbstractNodeData Name="tile_img_5" ActionTag="-1697462702" Tag="804" IconVisible="False" LeftMargin="189.9999" RightMargin="908.0001" BottomMargin="45.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                <Size X="40.0000" Y="59.0000" />
                <Children>
                  <AbstractNodeData Name="mahjong_img" ActionTag="1046949384" Tag="805" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                    <Size X="25.0000" Y="39.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="20.0000" Y="37.0000" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.5000" Y="0.6271" />
                    <PreSize X="0.6250" Y="0.6610" />
                    <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                  </AbstractNodeData>
                </Children>
                <AnchorPoint ScaleY="0.5000" />
                <Position X="189.9999" Y="74.5000" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.1670" Y="0.7163" />
                <PreSize X="0.0351" Y="0.5673" />
                <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
              </AbstractNodeData>
              <AbstractNodeData Name="tile_img_6" ActionTag="-921504931" Tag="806" IconVisible="False" LeftMargin="227.9998" RightMargin="870.0002" BottomMargin="45.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                <Size X="40.0000" Y="59.0000" />
                <Children>
                  <AbstractNodeData Name="mahjong_img" ActionTag="2008992859" Tag="807" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                    <Size X="25.0000" Y="39.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="20.0000" Y="37.0000" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.5000" Y="0.6271" />
                    <PreSize X="0.6250" Y="0.6610" />
                    <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                  </AbstractNodeData>
                </Children>
                <AnchorPoint ScaleY="0.5000" />
                <Position X="227.9998" Y="74.5000" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.2004" Y="0.7163" />
                <PreSize X="0.0351" Y="0.5673" />
                <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
              </AbstractNodeData>
              <AbstractNodeData Name="tile_img_7" ActionTag="1140785296" Tag="808" IconVisible="False" LeftMargin="263.9999" RightMargin="834.0001" BottomMargin="45.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                <Size X="40.0000" Y="59.0000" />
                <Children>
                  <AbstractNodeData Name="mahjong_img" ActionTag="1102286324" Tag="809" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                    <Size X="25.0000" Y="39.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="20.0000" Y="37.0000" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.5000" Y="0.6271" />
                    <PreSize X="0.6250" Y="0.6610" />
                    <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                  </AbstractNodeData>
                </Children>
                <AnchorPoint ScaleY="0.5000" />
                <Position X="263.9999" Y="74.5000" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.2320" Y="0.7163" />
                <PreSize X="0.0351" Y="0.5673" />
                <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
              </AbstractNodeData>
              <AbstractNodeData Name="tile_img_8" ActionTag="-296018192" Tag="810" IconVisible="False" LeftMargin="301.9999" RightMargin="796.0001" BottomMargin="45.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                <Size X="40.0000" Y="59.0000" />
                <Children>
                  <AbstractNodeData Name="mahjong_img" ActionTag="1287944146" Tag="811" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                    <Size X="25.0000" Y="39.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="20.0000" Y="37.0000" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.5000" Y="0.6271" />
                    <PreSize X="0.6250" Y="0.6610" />
                    <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                  </AbstractNodeData>
                </Children>
                <AnchorPoint ScaleY="0.5000" />
                <Position X="301.9999" Y="74.5000" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.2654" Y="0.7163" />
                <PreSize X="0.0351" Y="0.5673" />
                <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
              </AbstractNodeData>
              <AbstractNodeData Name="tile_img_9" ActionTag="-1956213962" Tag="812" IconVisible="False" LeftMargin="340.0000" RightMargin="758.0000" BottomMargin="45.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                <Size X="40.0000" Y="59.0000" />
                <Children>
                  <AbstractNodeData Name="mahjong_img" ActionTag="-1497828071" Tag="813" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                    <Size X="25.0000" Y="39.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="20.0000" Y="37.0000" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.5000" Y="0.6271" />
                    <PreSize X="0.6250" Y="0.6610" />
                    <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                  </AbstractNodeData>
                </Children>
                <AnchorPoint ScaleY="0.5000" />
                <Position X="340.0000" Y="74.5000" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.2988" Y="0.7163" />
                <PreSize X="0.0351" Y="0.5673" />
                <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
              </AbstractNodeData>
              <AbstractNodeData Name="tile_img_10" ActionTag="-1739501959" Tag="818" IconVisible="False" LeftMargin="378.0000" RightMargin="720.0000" BottomMargin="45.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                <Size X="40.0000" Y="59.0000" />
                <Children>
                  <AbstractNodeData Name="mahjong_img" ActionTag="-124829887" Tag="819" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                    <Size X="25.0000" Y="39.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="20.0000" Y="37.0000" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.5000" Y="0.6271" />
                    <PreSize X="0.6250" Y="0.6610" />
                    <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                  </AbstractNodeData>
                </Children>
                <AnchorPoint ScaleY="0.5000" />
                <Position X="378.0000" Y="74.5000" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.3322" Y="0.7163" />
                <PreSize X="0.0351" Y="0.5673" />
                <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
              </AbstractNodeData>
              <AbstractNodeData Name="tile_img_11" ActionTag="533686795" Tag="820" IconVisible="False" LeftMargin="416.0000" RightMargin="682.0000" BottomMargin="45.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                <Size X="40.0000" Y="59.0000" />
                <Children>
                  <AbstractNodeData Name="mahjong_img" ActionTag="-494093438" Tag="821" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                    <Size X="25.0000" Y="39.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="20.0000" Y="37.0000" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.5000" Y="0.6271" />
                    <PreSize X="0.6250" Y="0.6610" />
                    <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                  </AbstractNodeData>
                </Children>
                <AnchorPoint ScaleY="0.5000" />
                <Position X="416.0000" Y="74.5000" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.3656" Y="0.7163" />
                <PreSize X="0.0351" Y="0.5673" />
                <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
              </AbstractNodeData>
              <AbstractNodeData Name="tile_img_12" ActionTag="-532532691" Tag="822" IconVisible="False" LeftMargin="454.0001" RightMargin="643.9999" BottomMargin="45.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                <Size X="40.0000" Y="59.0000" />
                <Children>
                  <AbstractNodeData Name="mahjong_img" ActionTag="-159669884" Tag="823" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                    <Size X="25.0000" Y="39.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="20.0000" Y="37.0000" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.5000" Y="0.6271" />
                    <PreSize X="0.6250" Y="0.6610" />
                    <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                  </AbstractNodeData>
                </Children>
                <AnchorPoint ScaleY="0.5000" />
                <Position X="454.0001" Y="74.5000" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.3989" Y="0.7163" />
                <PreSize X="0.0351" Y="0.5673" />
                <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
              </AbstractNodeData>
              <AbstractNodeData Name="tile_img_13" ActionTag="-2099629768" Tag="824" IconVisible="False" LeftMargin="492.0003" RightMargin="605.9997" BottomMargin="45.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                <Size X="40.0000" Y="59.0000" />
                <Children>
                  <AbstractNodeData Name="mahjong_img" ActionTag="-75045627" Tag="825" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                    <Size X="25.0000" Y="39.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="20.0000" Y="37.0000" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.5000" Y="0.6271" />
                    <PreSize X="0.6250" Y="0.6610" />
                    <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                  </AbstractNodeData>
                </Children>
                <AnchorPoint ScaleY="0.5000" />
                <Position X="492.0003" Y="74.5000" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.4323" Y="0.7163" />
                <PreSize X="0.0351" Y="0.5673" />
                <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
              </AbstractNodeData>
              <AbstractNodeData Name="tile_img_14" ActionTag="1380187174" Tag="826" IconVisible="False" LeftMargin="530.0000" RightMargin="568.0000" BottomMargin="45.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                <Size X="40.0000" Y="59.0000" />
                <Children>
                  <AbstractNodeData Name="mahjong_img" ActionTag="-2084382801" Tag="827" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                    <Size X="25.0000" Y="39.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="20.0000" Y="37.0000" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.5000" Y="0.6271" />
                    <PreSize X="0.6250" Y="0.6610" />
                    <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                  </AbstractNodeData>
                </Children>
                <AnchorPoint ScaleY="0.5000" />
                <Position X="530.0000" Y="74.5000" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.4657" Y="0.7163" />
                <PreSize X="0.0351" Y="0.5673" />
                <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
              </AbstractNodeData>
              <AbstractNodeData Name="tile_img_15" ActionTag="-342313590" Tag="828" IconVisible="False" LeftMargin="568.0000" RightMargin="530.0000" BottomMargin="45.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                <Size X="40.0000" Y="59.0000" />
                <Children>
                  <AbstractNodeData Name="mahjong_img" ActionTag="-787096822" Tag="829" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                    <Size X="25.0000" Y="39.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="20.0000" Y="37.0000" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.5000" Y="0.6271" />
                    <PreSize X="0.6250" Y="0.6610" />
                    <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                  </AbstractNodeData>
                </Children>
                <AnchorPoint ScaleY="0.5000" />
                <Position X="568.0000" Y="74.5000" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.4991" Y="0.7163" />
                <PreSize X="0.0351" Y="0.5673" />
                <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
              </AbstractNodeData>
              <AbstractNodeData Name="tile_img_16" ActionTag="1968269387" Tag="830" IconVisible="False" LeftMargin="606.0000" RightMargin="492.0000" BottomMargin="45.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                <Size X="40.0000" Y="59.0000" />
                <Children>
                  <AbstractNodeData Name="mahjong_img" ActionTag="418232054" Tag="831" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                    <Size X="25.0000" Y="39.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="20.0000" Y="37.0000" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.5000" Y="0.6271" />
                    <PreSize X="0.6250" Y="0.6610" />
                    <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                  </AbstractNodeData>
                </Children>
                <AnchorPoint ScaleY="0.5000" />
                <Position X="606.0000" Y="74.5000" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.5325" Y="0.7163" />
                <PreSize X="0.0351" Y="0.5673" />
                <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
              </AbstractNodeData>
              <AbstractNodeData Name="tile_img_17" ActionTag="996250126" Tag="832" IconVisible="False" LeftMargin="644.0003" RightMargin="453.9997" BottomMargin="45.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                <Size X="40.0000" Y="59.0000" />
                <Children>
                  <AbstractNodeData Name="mahjong_img" ActionTag="166230752" Tag="833" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                    <Size X="25.0000" Y="39.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="20.0000" Y="37.0000" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.5000" Y="0.6271" />
                    <PreSize X="0.6250" Y="0.6610" />
                    <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                  </AbstractNodeData>
                </Children>
                <AnchorPoint ScaleY="0.5000" />
                <Position X="644.0003" Y="74.5000" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.5659" Y="0.7163" />
                <PreSize X="0.0351" Y="0.5673" />
                <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
              </AbstractNodeData>
              <AbstractNodeData Name="tile_img_18" ActionTag="-784404173" Tag="834" IconVisible="False" LeftMargin="682.0000" RightMargin="416.0000" BottomMargin="45.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                <Size X="40.0000" Y="59.0000" />
                <Children>
                  <AbstractNodeData Name="mahjong_img" ActionTag="-165398742" Tag="835" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                    <Size X="25.0000" Y="39.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="20.0000" Y="37.0000" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.5000" Y="0.6271" />
                    <PreSize X="0.6250" Y="0.6610" />
                    <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                  </AbstractNodeData>
                </Children>
                <AnchorPoint ScaleY="0.5000" />
                <Position X="682.0000" Y="74.5000" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.5993" Y="0.7163" />
                <PreSize X="0.0351" Y="0.5673" />
                <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
              </AbstractNodeData>
              <AbstractNodeData Name="tile_img_19" ActionTag="1538524895" Tag="836" IconVisible="False" LeftMargin="720.0000" RightMargin="378.0000" BottomMargin="45.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                <Size X="40.0000" Y="59.0000" />
                <Children>
                  <AbstractNodeData Name="mahjong_img" ActionTag="967650205" Tag="837" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                    <Size X="25.0000" Y="39.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="20.0000" Y="37.0000" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.5000" Y="0.6271" />
                    <PreSize X="0.6250" Y="0.6610" />
                    <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                  </AbstractNodeData>
                </Children>
                <AnchorPoint ScaleY="0.5000" />
                <Position X="720.0000" Y="74.5000" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.6327" Y="0.7163" />
                <PreSize X="0.0351" Y="0.5673" />
                <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
              </AbstractNodeData>
              <AbstractNodeData Name="tile_img_20" ActionTag="1444305576" Tag="838" IconVisible="False" LeftMargin="758.0005" RightMargin="339.9995" BottomMargin="45.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                <Size X="40.0000" Y="59.0000" />
                <Children>
                  <AbstractNodeData Name="mahjong_img" ActionTag="-836015113" Tag="839" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                    <Size X="25.0000" Y="39.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="20.0000" Y="37.0000" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.5000" Y="0.6271" />
                    <PreSize X="0.6250" Y="0.6610" />
                    <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                  </AbstractNodeData>
                </Children>
                <AnchorPoint ScaleY="0.5000" />
                <Position X="758.0005" Y="74.5000" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.6661" Y="0.7163" />
                <PreSize X="0.0351" Y="0.5673" />
                <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
              </AbstractNodeData>
              <AbstractNodeData Name="tile_img_21" ActionTag="-1233227287" Tag="840" IconVisible="False" LeftMargin="795.9999" RightMargin="302.0001" BottomMargin="45.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                <Size X="40.0000" Y="59.0000" />
                <Children>
                  <AbstractNodeData Name="mahjong_img" ActionTag="-608032734" Tag="841" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                    <Size X="25.0000" Y="39.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="20.0000" Y="37.0000" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.5000" Y="0.6271" />
                    <PreSize X="0.6250" Y="0.6610" />
                    <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                  </AbstractNodeData>
                </Children>
                <AnchorPoint ScaleY="0.5000" />
                <Position X="795.9999" Y="74.5000" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.6995" Y="0.7163" />
                <PreSize X="0.0351" Y="0.5673" />
                <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
              </AbstractNodeData>
              <AbstractNodeData Name="tile_img_22" ActionTag="588770386" Tag="842" IconVisible="False" LeftMargin="834.0005" RightMargin="263.9995" BottomMargin="45.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                <Size X="40.0000" Y="59.0000" />
                <Children>
                  <AbstractNodeData Name="mahjong_img" ActionTag="-1341976946" Tag="843" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                    <Size X="25.0000" Y="39.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="20.0000" Y="37.0000" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.5000" Y="0.6271" />
                    <PreSize X="0.6250" Y="0.6610" />
                    <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                  </AbstractNodeData>
                </Children>
                <AnchorPoint ScaleY="0.5000" />
                <Position X="834.0005" Y="74.5000" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.7329" Y="0.7163" />
                <PreSize X="0.0351" Y="0.5673" />
                <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
              </AbstractNodeData>
              <AbstractNodeData Name="tile_img_23" ActionTag="660251675" Tag="844" IconVisible="False" LeftMargin="872.0003" RightMargin="225.9997" BottomMargin="45.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                <Size X="40.0000" Y="59.0000" />
                <Children>
                  <AbstractNodeData Name="mahjong_img" ActionTag="-62914784" Tag="845" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                    <Size X="25.0000" Y="39.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="20.0000" Y="37.0000" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.5000" Y="0.6271" />
                    <PreSize X="0.6250" Y="0.6610" />
                    <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                  </AbstractNodeData>
                </Children>
                <AnchorPoint ScaleY="0.5000" />
                <Position X="872.0003" Y="74.5000" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.7663" Y="0.7163" />
                <PreSize X="0.0351" Y="0.5673" />
                <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
              </AbstractNodeData>
              <AbstractNodeData Name="tile_img_24" ActionTag="-505231743" Tag="846" IconVisible="False" LeftMargin="909.9999" RightMargin="188.0001" BottomMargin="45.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                <Size X="40.0000" Y="59.0000" />
                <Children>
                  <AbstractNodeData Name="mahjong_img" ActionTag="675597010" Tag="847" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                    <Size X="25.0000" Y="39.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="20.0000" Y="37.0000" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.5000" Y="0.6271" />
                    <PreSize X="0.6250" Y="0.6610" />
                    <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                  </AbstractNodeData>
                </Children>
                <AnchorPoint ScaleY="0.5000" />
                <Position X="909.9999" Y="74.5000" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.7996" Y="0.7163" />
                <PreSize X="0.0351" Y="0.5673" />
                <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
              </AbstractNodeData>
              <AbstractNodeData Name="tile_img_25" ActionTag="1693291222" Tag="848" IconVisible="False" LeftMargin="948.0008" RightMargin="149.9992" BottomMargin="45.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                <Size X="40.0000" Y="59.0000" />
                <Children>
                  <AbstractNodeData Name="mahjong_img" ActionTag="-419726919" Tag="849" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                    <Size X="25.0000" Y="39.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="20.0000" Y="37.0000" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.5000" Y="0.6271" />
                    <PreSize X="0.6250" Y="0.6610" />
                    <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                  </AbstractNodeData>
                </Children>
                <AnchorPoint ScaleY="0.5000" />
                <Position X="948.0008" Y="74.5000" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.8330" Y="0.7163" />
                <PreSize X="0.0351" Y="0.5673" />
                <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
              </AbstractNodeData>
              <AbstractNodeData Name="tile_img_26" ActionTag="1678000032" Tag="850" IconVisible="False" LeftMargin="986.0001" RightMargin="111.9999" BottomMargin="45.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                <Size X="40.0000" Y="59.0000" />
                <Children>
                  <AbstractNodeData Name="mahjong_img" ActionTag="1939117548" Tag="851" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                    <Size X="25.0000" Y="39.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="20.0000" Y="37.0000" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.5000" Y="0.6271" />
                    <PreSize X="0.6250" Y="0.6610" />
                    <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                  </AbstractNodeData>
                </Children>
                <AnchorPoint ScaleY="0.5000" />
                <Position X="986.0001" Y="74.5000" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.8664" Y="0.7163" />
                <PreSize X="0.0351" Y="0.5673" />
                <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
              </AbstractNodeData>
              <AbstractNodeData Name="tile_img_27" ActionTag="1586244991" Tag="852" IconVisible="False" LeftMargin="1024.0000" RightMargin="74.0000" BottomMargin="45.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                <Size X="40.0000" Y="59.0000" />
                <Children>
                  <AbstractNodeData Name="mahjong_img" ActionTag="202787328" Tag="853" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                    <Size X="25.0000" Y="39.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="20.0000" Y="37.0000" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.5000" Y="0.6271" />
                    <PreSize X="0.6250" Y="0.6610" />
                    <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                  </AbstractNodeData>
                </Children>
                <AnchorPoint ScaleY="0.5000" />
                <Position X="1024.0000" Y="74.5000" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.8998" Y="0.7163" />
                <PreSize X="0.0351" Y="0.5673" />
                <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
              </AbstractNodeData>
              <AbstractNodeData Name="tile_img_28" ActionTag="973175378" Tag="854" IconVisible="False" LeftMargin="1062.0005" RightMargin="35.9995" BottomMargin="45.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                <Size X="40.0000" Y="59.0000" />
                <Children>
                  <AbstractNodeData Name="mahjong_img" ActionTag="341873880" Tag="855" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                    <Size X="25.0000" Y="39.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="20.0000" Y="37.0000" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.5000" Y="0.6271" />
                    <PreSize X="0.6250" Y="0.6610" />
                    <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                  </AbstractNodeData>
                </Children>
                <AnchorPoint ScaleY="0.5000" />
                <Position X="1062.0005" Y="74.5000" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.9332" Y="0.7163" />
                <PreSize X="0.0351" Y="0.5673" />
                <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
              </AbstractNodeData>
              <AbstractNodeData Name="tile_img_29" ActionTag="1208477042" Tag="856" IconVisible="False" LeftMargin="1100.0000" RightMargin="-2.0000" BottomMargin="45.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                <Size X="40.0000" Y="59.0000" />
                <Children>
                  <AbstractNodeData Name="mahjong_img" ActionTag="1304053277" Tag="857" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                    <Size X="25.0000" Y="39.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="20.0000" Y="37.0000" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.5000" Y="0.6271" />
                    <PreSize X="0.6250" Y="0.6610" />
                    <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                  </AbstractNodeData>
                </Children>
                <AnchorPoint ScaleY="0.5000" />
                <Position X="1100.0000" Y="74.5000" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.9666" Y="0.7163" />
                <PreSize X="0.0351" Y="0.5673" />
                <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
              </AbstractNodeData>
              <AbstractNodeData Name="tile_img_30" ActionTag="446042297" Tag="858" IconVisible="False" LeftMargin="-0.0003" RightMargin="1098.0002" TopMargin="45.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                <Size X="40.0000" Y="59.0000" />
                <Children>
                  <AbstractNodeData Name="mahjong_img" ActionTag="302144934" Tag="859" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                    <Size X="25.0000" Y="39.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="20.0000" Y="37.0000" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.5000" Y="0.6271" />
                    <PreSize X="0.6250" Y="0.6610" />
                    <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                  </AbstractNodeData>
                </Children>
                <AnchorPoint ScaleY="0.5000" />
                <Position X="-0.0003" Y="29.5000" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.0000" Y="0.2837" />
                <PreSize X="0.0351" Y="0.5673" />
                <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
              </AbstractNodeData>
              <AbstractNodeData Name="tile_img_31" ActionTag="1852611676" Tag="860" IconVisible="False" LeftMargin="37.9997" RightMargin="1060.0002" TopMargin="45.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                <Size X="40.0000" Y="59.0000" />
                <Children>
                  <AbstractNodeData Name="mahjong_img" ActionTag="958585556" Tag="861" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                    <Size X="25.0000" Y="39.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="20.0000" Y="37.0000" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.5000" Y="0.6271" />
                    <PreSize X="0.6250" Y="0.6610" />
                    <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                  </AbstractNodeData>
                </Children>
                <AnchorPoint ScaleY="0.5000" />
                <Position X="37.9997" Y="29.5000" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.0334" Y="0.2837" />
                <PreSize X="0.0351" Y="0.5673" />
                <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
              </AbstractNodeData>
              <AbstractNodeData Name="tile_img_32" ActionTag="1599517239" Tag="862" IconVisible="False" LeftMargin="75.9996" RightMargin="1022.0004" TopMargin="45.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                <Size X="40.0000" Y="59.0000" />
                <Children>
                  <AbstractNodeData Name="mahjong_img" ActionTag="1949264890" Tag="863" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                    <Size X="25.0000" Y="39.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="20.0000" Y="37.0000" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.5000" Y="0.6271" />
                    <PreSize X="0.6250" Y="0.6610" />
                    <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                  </AbstractNodeData>
                </Children>
                <AnchorPoint ScaleY="0.5000" />
                <Position X="75.9996" Y="29.5000" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.0668" Y="0.2837" />
                <PreSize X="0.0351" Y="0.5673" />
                <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
              </AbstractNodeData>
              <AbstractNodeData Name="tile_img_33" ActionTag="732546770" Tag="864" IconVisible="False" LeftMargin="113.9995" RightMargin="984.0005" TopMargin="45.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                <Size X="40.0000" Y="59.0000" />
                <Children>
                  <AbstractNodeData Name="mahjong_img" ActionTag="2003994107" Tag="865" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                    <Size X="25.0000" Y="39.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="20.0000" Y="37.0000" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.5000" Y="0.6271" />
                    <PreSize X="0.6250" Y="0.6610" />
                    <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                  </AbstractNodeData>
                </Children>
                <AnchorPoint ScaleY="0.5000" />
                <Position X="113.9995" Y="29.5000" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.1002" Y="0.2837" />
                <PreSize X="0.0351" Y="0.5673" />
                <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
              </AbstractNodeData>
              <AbstractNodeData Name="tile_img_34" ActionTag="-2007455770" Tag="866" IconVisible="False" LeftMargin="151.9993" RightMargin="946.0007" TopMargin="45.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                <Size X="40.0000" Y="59.0000" />
                <Children>
                  <AbstractNodeData Name="mahjong_img" ActionTag="663792667" Tag="867" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                    <Size X="25.0000" Y="39.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="20.0000" Y="37.0000" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.5000" Y="0.6271" />
                    <PreSize X="0.6250" Y="0.6610" />
                    <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                  </AbstractNodeData>
                </Children>
                <AnchorPoint ScaleY="0.5000" />
                <Position X="151.9993" Y="29.5000" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.1336" Y="0.2837" />
                <PreSize X="0.0351" Y="0.5673" />
                <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
              </AbstractNodeData>
              <AbstractNodeData Name="tile_img_35" ActionTag="2070937802" Tag="868" IconVisible="False" LeftMargin="189.9995" RightMargin="908.0005" TopMargin="45.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                <Size X="40.0000" Y="59.0000" />
                <Children>
                  <AbstractNodeData Name="mahjong_img" ActionTag="-279393254" Tag="869" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                    <Size X="25.0000" Y="39.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="20.0000" Y="37.0000" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.5000" Y="0.6271" />
                    <PreSize X="0.6250" Y="0.6610" />
                    <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                  </AbstractNodeData>
                </Children>
                <AnchorPoint ScaleY="0.5000" />
                <Position X="189.9995" Y="29.5000" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.1670" Y="0.2837" />
                <PreSize X="0.0351" Y="0.5673" />
                <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
              </AbstractNodeData>
              <AbstractNodeData Name="tile_img_36" ActionTag="-1758052475" Tag="870" IconVisible="False" LeftMargin="227.9993" RightMargin="870.0007" TopMargin="45.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                <Size X="40.0000" Y="59.0000" />
                <Children>
                  <AbstractNodeData Name="mahjong_img" ActionTag="97996487" Tag="871" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                    <Size X="25.0000" Y="39.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="20.0000" Y="37.0000" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.5000" Y="0.6271" />
                    <PreSize X="0.6250" Y="0.6610" />
                    <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                  </AbstractNodeData>
                </Children>
                <AnchorPoint ScaleY="0.5000" />
                <Position X="227.9993" Y="29.5000" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.2004" Y="0.2837" />
                <PreSize X="0.0351" Y="0.5673" />
                <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
              </AbstractNodeData>
              <AbstractNodeData Name="tile_img_37" ActionTag="1218676332" Tag="872" IconVisible="False" LeftMargin="263.9993" RightMargin="834.0007" TopMargin="45.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                <Size X="40.0000" Y="59.0000" />
                <Children>
                  <AbstractNodeData Name="mahjong_img" ActionTag="-1020554638" Tag="873" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                    <Size X="25.0000" Y="39.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="20.0000" Y="37.0000" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.5000" Y="0.6271" />
                    <PreSize X="0.6250" Y="0.6610" />
                    <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                  </AbstractNodeData>
                </Children>
                <AnchorPoint ScaleY="0.5000" />
                <Position X="263.9993" Y="29.5000" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.2320" Y="0.2837" />
                <PreSize X="0.0351" Y="0.5673" />
                <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
              </AbstractNodeData>
              <AbstractNodeData Name="tile_img_38" ActionTag="1952405730" Tag="874" IconVisible="False" LeftMargin="301.9991" RightMargin="796.0009" TopMargin="45.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                <Size X="40.0000" Y="59.0000" />
                <Children>
                  <AbstractNodeData Name="mahjong_img" ActionTag="335021557" Tag="875" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                    <Size X="25.0000" Y="39.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="20.0000" Y="37.0000" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.5000" Y="0.6271" />
                    <PreSize X="0.6250" Y="0.6610" />
                    <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                  </AbstractNodeData>
                </Children>
                <AnchorPoint ScaleY="0.5000" />
                <Position X="301.9991" Y="29.5000" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.2654" Y="0.2837" />
                <PreSize X="0.0351" Y="0.5673" />
                <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
              </AbstractNodeData>
              <AbstractNodeData Name="tile_img_39" ActionTag="-883508755" Tag="876" IconVisible="False" LeftMargin="339.9992" RightMargin="758.0008" TopMargin="45.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                <Size X="40.0000" Y="59.0000" />
                <Children>
                  <AbstractNodeData Name="mahjong_img" ActionTag="941561340" Tag="877" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                    <Size X="25.0000" Y="39.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="20.0000" Y="37.0000" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.5000" Y="0.6271" />
                    <PreSize X="0.6250" Y="0.6610" />
                    <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                  </AbstractNodeData>
                </Children>
                <AnchorPoint ScaleY="0.5000" />
                <Position X="339.9992" Y="29.5000" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.2988" Y="0.2837" />
                <PreSize X="0.0351" Y="0.5673" />
                <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
              </AbstractNodeData>
              <AbstractNodeData Name="tile_img_40" ActionTag="-541452296" Tag="878" IconVisible="False" LeftMargin="377.9993" RightMargin="720.0007" TopMargin="45.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                <Size X="40.0000" Y="59.0000" />
                <Children>
                  <AbstractNodeData Name="mahjong_img" ActionTag="1333120766" Tag="879" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                    <Size X="25.0000" Y="39.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="20.0000" Y="37.0000" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.5000" Y="0.6271" />
                    <PreSize X="0.6250" Y="0.6610" />
                    <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                  </AbstractNodeData>
                </Children>
                <AnchorPoint ScaleY="0.5000" />
                <Position X="377.9993" Y="29.5000" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.3322" Y="0.2837" />
                <PreSize X="0.0351" Y="0.5673" />
                <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
              </AbstractNodeData>
              <AbstractNodeData Name="tile_img_41" ActionTag="1808628405" Tag="880" IconVisible="False" LeftMargin="415.9987" RightMargin="682.0013" TopMargin="45.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                <Size X="40.0000" Y="59.0000" />
                <Children>
                  <AbstractNodeData Name="mahjong_img" ActionTag="-922390309" Tag="881" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                    <Size X="25.0000" Y="39.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="20.0000" Y="37.0000" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.5000" Y="0.6271" />
                    <PreSize X="0.6250" Y="0.6610" />
                    <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                  </AbstractNodeData>
                </Children>
                <AnchorPoint ScaleY="0.5000" />
                <Position X="415.9987" Y="29.5000" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.3656" Y="0.2837" />
                <PreSize X="0.0351" Y="0.5673" />
                <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
              </AbstractNodeData>
              <AbstractNodeData Name="tile_img_42" ActionTag="819117595" Tag="882" IconVisible="False" LeftMargin="453.9995" RightMargin="644.0005" TopMargin="45.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                <Size X="40.0000" Y="59.0000" />
                <Children>
                  <AbstractNodeData Name="mahjong_img" ActionTag="-935871701" Tag="883" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                    <Size X="25.0000" Y="39.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="20.0000" Y="37.0000" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.5000" Y="0.6271" />
                    <PreSize X="0.6250" Y="0.6610" />
                    <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                  </AbstractNodeData>
                </Children>
                <AnchorPoint ScaleY="0.5000" />
                <Position X="453.9995" Y="29.5000" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.3989" Y="0.2837" />
                <PreSize X="0.0351" Y="0.5673" />
                <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
              </AbstractNodeData>
              <AbstractNodeData Name="tile_img_43" ActionTag="-1151890807" Tag="884" IconVisible="False" LeftMargin="491.9993" RightMargin="606.0007" TopMargin="45.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                <Size X="40.0000" Y="59.0000" />
                <Children>
                  <AbstractNodeData Name="mahjong_img" ActionTag="-928952988" Tag="885" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                    <Size X="25.0000" Y="39.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="20.0000" Y="37.0000" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.5000" Y="0.6271" />
                    <PreSize X="0.6250" Y="0.6610" />
                    <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                  </AbstractNodeData>
                </Children>
                <AnchorPoint ScaleY="0.5000" />
                <Position X="491.9993" Y="29.5000" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.4323" Y="0.2837" />
                <PreSize X="0.0351" Y="0.5673" />
                <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
              </AbstractNodeData>
              <AbstractNodeData Name="tile_img_44" ActionTag="1976130433" Tag="886" IconVisible="False" LeftMargin="529.9992" RightMargin="568.0008" TopMargin="45.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                <Size X="40.0000" Y="59.0000" />
                <Children>
                  <AbstractNodeData Name="mahjong_img" ActionTag="2095708189" Tag="887" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                    <Size X="25.0000" Y="39.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="20.0000" Y="37.0000" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.5000" Y="0.6271" />
                    <PreSize X="0.6250" Y="0.6610" />
                    <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                  </AbstractNodeData>
                </Children>
                <AnchorPoint ScaleY="0.5000" />
                <Position X="529.9992" Y="29.5000" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.4657" Y="0.2837" />
                <PreSize X="0.0351" Y="0.5673" />
                <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
              </AbstractNodeData>
              <AbstractNodeData Name="tile_img_45" ActionTag="1102410911" Tag="888" IconVisible="False" LeftMargin="567.9988" RightMargin="530.0012" TopMargin="45.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                <Size X="40.0000" Y="59.0000" />
                <Children>
                  <AbstractNodeData Name="mahjong_img" ActionTag="681596307" Tag="889" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                    <Size X="25.0000" Y="39.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="20.0000" Y="37.0000" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.5000" Y="0.6271" />
                    <PreSize X="0.6250" Y="0.6610" />
                    <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                  </AbstractNodeData>
                </Children>
                <AnchorPoint ScaleY="0.5000" />
                <Position X="567.9988" Y="29.5000" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.4991" Y="0.2837" />
                <PreSize X="0.0351" Y="0.5673" />
                <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
              </AbstractNodeData>
              <AbstractNodeData Name="tile_img_46" ActionTag="-710180713" Tag="890" IconVisible="False" LeftMargin="605.9994" RightMargin="492.0006" TopMargin="45.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                <Size X="40.0000" Y="59.0000" />
                <Children>
                  <AbstractNodeData Name="mahjong_img" ActionTag="624557407" Tag="891" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                    <Size X="25.0000" Y="39.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="20.0000" Y="37.0000" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.5000" Y="0.6271" />
                    <PreSize X="0.6250" Y="0.6610" />
                    <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                  </AbstractNodeData>
                </Children>
                <AnchorPoint ScaleY="0.5000" />
                <Position X="605.9994" Y="29.5000" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.5325" Y="0.2837" />
                <PreSize X="0.0351" Y="0.5673" />
                <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
              </AbstractNodeData>
              <AbstractNodeData Name="tile_img_47" ActionTag="983728120" Tag="892" IconVisible="False" LeftMargin="643.9992" RightMargin="454.0008" TopMargin="45.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                <Size X="40.0000" Y="59.0000" />
                <Children>
                  <AbstractNodeData Name="mahjong_img" ActionTag="1528452715" Tag="893" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                    <Size X="25.0000" Y="39.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="20.0000" Y="37.0000" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.5000" Y="0.6271" />
                    <PreSize X="0.6250" Y="0.6610" />
                    <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                  </AbstractNodeData>
                </Children>
                <AnchorPoint ScaleY="0.5000" />
                <Position X="643.9992" Y="29.5000" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.5659" Y="0.2837" />
                <PreSize X="0.0351" Y="0.5673" />
                <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
              </AbstractNodeData>
              <AbstractNodeData Name="tile_img_48" ActionTag="-1254327627" Tag="894" IconVisible="False" LeftMargin="681.9990" RightMargin="416.0010" TopMargin="45.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                <Size X="40.0000" Y="59.0000" />
                <Children>
                  <AbstractNodeData Name="mahjong_img" ActionTag="-927474244" Tag="895" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                    <Size X="25.0000" Y="39.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="20.0000" Y="37.0000" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.5000" Y="0.6271" />
                    <PreSize X="0.6250" Y="0.6610" />
                    <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                  </AbstractNodeData>
                </Children>
                <AnchorPoint ScaleY="0.5000" />
                <Position X="681.9990" Y="29.5000" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.5993" Y="0.2837" />
                <PreSize X="0.0351" Y="0.5673" />
                <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
              </AbstractNodeData>
              <AbstractNodeData Name="tile_img_49" ActionTag="1640105613" Tag="896" IconVisible="False" LeftMargin="719.9986" RightMargin="378.0014" TopMargin="45.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                <Size X="40.0000" Y="59.0000" />
                <Children>
                  <AbstractNodeData Name="mahjong_img" ActionTag="376667844" Tag="897" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                    <Size X="25.0000" Y="39.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="20.0000" Y="37.0000" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.5000" Y="0.6271" />
                    <PreSize X="0.6250" Y="0.6610" />
                    <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                  </AbstractNodeData>
                </Children>
                <AnchorPoint ScaleY="0.5000" />
                <Position X="719.9986" Y="29.5000" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.6327" Y="0.2837" />
                <PreSize X="0.0351" Y="0.5673" />
                <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
              </AbstractNodeData>
              <AbstractNodeData Name="tile_img_50" ActionTag="-2071595644" Tag="898" IconVisible="False" LeftMargin="757.9992" RightMargin="340.0008" TopMargin="45.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                <Size X="40.0000" Y="59.0000" />
                <Children>
                  <AbstractNodeData Name="mahjong_img" ActionTag="-587439262" Tag="899" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                    <Size X="25.0000" Y="39.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="20.0000" Y="37.0000" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.5000" Y="0.6271" />
                    <PreSize X="0.6250" Y="0.6610" />
                    <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                  </AbstractNodeData>
                </Children>
                <AnchorPoint ScaleY="0.5000" />
                <Position X="757.9992" Y="29.5000" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.6661" Y="0.2837" />
                <PreSize X="0.0351" Y="0.5673" />
                <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
              </AbstractNodeData>
              <AbstractNodeData Name="tile_img_51" ActionTag="606960477" Tag="900" IconVisible="False" LeftMargin="795.9991" RightMargin="302.0009" TopMargin="45.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                <Size X="40.0000" Y="59.0000" />
                <Children>
                  <AbstractNodeData Name="mahjong_img" ActionTag="-930427278" Tag="901" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                    <Size X="25.0000" Y="39.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="20.0000" Y="37.0000" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.5000" Y="0.6271" />
                    <PreSize X="0.6250" Y="0.6610" />
                    <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                  </AbstractNodeData>
                </Children>
                <AnchorPoint ScaleY="0.5000" />
                <Position X="795.9991" Y="29.5000" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.6995" Y="0.2837" />
                <PreSize X="0.0351" Y="0.5673" />
                <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
              </AbstractNodeData>
              <AbstractNodeData Name="tile_img_52" ActionTag="1836635050" Tag="902" IconVisible="False" LeftMargin="833.9988" RightMargin="264.0012" TopMargin="45.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                <Size X="40.0000" Y="59.0000" />
                <Children>
                  <AbstractNodeData Name="mahjong_img" ActionTag="454387148" Tag="903" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                    <Size X="25.0000" Y="39.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="20.0000" Y="37.0000" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.5000" Y="0.6271" />
                    <PreSize X="0.6250" Y="0.6610" />
                    <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                  </AbstractNodeData>
                </Children>
                <AnchorPoint ScaleY="0.5000" />
                <Position X="833.9988" Y="29.5000" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.7329" Y="0.2837" />
                <PreSize X="0.0351" Y="0.5673" />
                <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
              </AbstractNodeData>
              <AbstractNodeData Name="tile_img_53" ActionTag="-1341068860" Tag="904" IconVisible="False" LeftMargin="871.9995" RightMargin="226.0005" TopMargin="45.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                <Size X="40.0000" Y="59.0000" />
                <Children>
                  <AbstractNodeData Name="mahjong_img" ActionTag="233997980" Tag="905" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                    <Size X="25.0000" Y="39.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="20.0000" Y="37.0000" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.5000" Y="0.6271" />
                    <PreSize X="0.6250" Y="0.6610" />
                    <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                  </AbstractNodeData>
                </Children>
                <AnchorPoint ScaleY="0.5000" />
                <Position X="871.9995" Y="29.5000" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.7663" Y="0.2837" />
                <PreSize X="0.0351" Y="0.5673" />
                <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
              </AbstractNodeData>
              <AbstractNodeData Name="tile_img_54" ActionTag="1294909636" Tag="906" IconVisible="False" LeftMargin="909.9989" RightMargin="188.0011" TopMargin="45.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                <Size X="40.0000" Y="59.0000" />
                <Children>
                  <AbstractNodeData Name="mahjong_img" ActionTag="-678604282" Tag="907" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                    <Size X="25.0000" Y="39.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="20.0000" Y="37.0000" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.5000" Y="0.6271" />
                    <PreSize X="0.6250" Y="0.6610" />
                    <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                  </AbstractNodeData>
                </Children>
                <AnchorPoint ScaleY="0.5000" />
                <Position X="909.9989" Y="29.5000" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.7996" Y="0.2837" />
                <PreSize X="0.0351" Y="0.5673" />
                <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
              </AbstractNodeData>
              <AbstractNodeData Name="tile_img_55" ActionTag="871498063" Tag="908" IconVisible="False" LeftMargin="947.9993" RightMargin="150.0007" TopMargin="45.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                <Size X="40.0000" Y="59.0000" />
                <Children>
                  <AbstractNodeData Name="mahjong_img" ActionTag="-356476599" Tag="909" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                    <Size X="25.0000" Y="39.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="20.0000" Y="37.0000" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.5000" Y="0.6271" />
                    <PreSize X="0.6250" Y="0.6610" />
                    <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                  </AbstractNodeData>
                </Children>
                <AnchorPoint ScaleY="0.5000" />
                <Position X="947.9993" Y="29.5000" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.8330" Y="0.2837" />
                <PreSize X="0.0351" Y="0.5673" />
                <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
              </AbstractNodeData>
              <AbstractNodeData Name="tile_img_56" ActionTag="-1952807050" Tag="910" IconVisible="False" LeftMargin="985.9987" RightMargin="112.0012" TopMargin="45.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                <Size X="40.0000" Y="59.0000" />
                <Children>
                  <AbstractNodeData Name="mahjong_img" ActionTag="637489857" Tag="911" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                    <Size X="25.0000" Y="39.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="20.0000" Y="37.0000" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.5000" Y="0.6271" />
                    <PreSize X="0.6250" Y="0.6610" />
                    <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                  </AbstractNodeData>
                </Children>
                <AnchorPoint ScaleY="0.5000" />
                <Position X="985.9987" Y="29.5000" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.8664" Y="0.2837" />
                <PreSize X="0.0351" Y="0.5673" />
                <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
              </AbstractNodeData>
              <AbstractNodeData Name="tile_img_57" ActionTag="-316696221" Tag="912" IconVisible="False" LeftMargin="1023.9984" RightMargin="74.0016" TopMargin="45.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                <Size X="40.0000" Y="59.0000" />
                <Children>
                  <AbstractNodeData Name="mahjong_img" ActionTag="-447112686" Tag="913" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                    <Size X="25.0000" Y="39.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="20.0000" Y="37.0000" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.5000" Y="0.6271" />
                    <PreSize X="0.6250" Y="0.6610" />
                    <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                  </AbstractNodeData>
                </Children>
                <AnchorPoint ScaleY="0.5000" />
                <Position X="1023.9984" Y="29.5000" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.8998" Y="0.2837" />
                <PreSize X="0.0351" Y="0.5673" />
                <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
              </AbstractNodeData>
              <AbstractNodeData Name="tile_img_58" ActionTag="-1997309524" Tag="914" IconVisible="False" LeftMargin="1061.9982" RightMargin="36.0018" TopMargin="45.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                <Size X="40.0000" Y="59.0000" />
                <Children>
                  <AbstractNodeData Name="mahjong_img" ActionTag="716693946" Tag="915" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                    <Size X="25.0000" Y="39.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="20.0000" Y="37.0000" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.5000" Y="0.6271" />
                    <PreSize X="0.6250" Y="0.6610" />
                    <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                  </AbstractNodeData>
                </Children>
                <AnchorPoint ScaleY="0.5000" />
                <Position X="1061.9982" Y="29.5000" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.9332" Y="0.2837" />
                <PreSize X="0.0351" Y="0.5673" />
                <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
              </AbstractNodeData>
              <AbstractNodeData Name="tile_img_59" ActionTag="-69199412" Tag="916" IconVisible="False" LeftMargin="1099.9980" RightMargin="-1.9980" TopMargin="45.0000" Scale9Width="40" Scale9Height="59" ctype="ImageViewObjectData">
                <Size X="40.0000" Y="59.0000" />
                <Children>
                  <AbstractNodeData Name="mahjong_img" ActionTag="-405494433" Tag="917" IconVisible="False" LeftMargin="7.5000" RightMargin="7.5000" TopMargin="2.5000" BottomMargin="17.5000" LeftEage="15" RightEage="15" TopEage="25" BottomEage="25" Scale9OriginX="10" Scale9OriginY="14" Scale9Width="5" Scale9Height="11" ctype="ImageViewObjectData">
                    <Size X="25.0000" Y="39.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="20.0000" Y="37.0000" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.5000" Y="0.6271" />
                    <PreSize X="0.6250" Y="0.6610" />
                    <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_small_9.png" Plist="Mahjong.plist" />
                  </AbstractNodeData>
                </Children>
                <AnchorPoint ScaleY="0.5000" />
                <Position X="1099.9980" Y="29.5000" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.9666" Y="0.2837" />
                <PreSize X="0.0351" Y="0.5673" />
                <FileData Type="MarkedSubImage" Path="Mahjong/mahjong_tile_player_up.png" Plist="Mahjong.plist" />
              </AbstractNodeData>
            </Children>
            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
            <Position X="409.6000" Y="72.0000" />
            <Scale ScaleX="0.6600" ScaleY="0.6600" />
            <CColor A="255" R="255" G="255" B="255" />
            <PrePosition X="0.3200" Y="0.1000" />
            <PreSize X="0.8891" Y="0.1444" />
            <SingleColor A="255" R="150" G="200" B="255" />
            <FirstColor A="255" R="150" G="200" B="255" />
            <EndColor A="255" R="255" G="255" B="255" />
            <ColorVector ScaleY="1.0000" />
          </AbstractNodeData>
          <AbstractNodeData Name="confirm_btn" ActionTag="426048192" Tag="911" IconVisible="False" PositionPercentXEnabled="True" PositionPercentYEnabled="True" LeftMargin="793.6000" RightMargin="230.3999" TopMargin="597.0000" BottomMargin="21.0000" TouchEnable="True" FontSize="14" Scale9Enable="True" LeftEage="15" RightEage="15" TopEage="11" BottomEage="11" Scale9OriginX="15" Scale9OriginY="11" Scale9Width="226" Scale9Height="80" ShadowOffsetX="2.0000" ShadowOffsetY="-2.0000" ctype="ButtonObjectData">
            <Size X="256.0000" Y="102.0000" />
            <Children>
              <AbstractNodeData Name="Image_1" ActionTag="-947955297" Tag="716" IconVisible="False" PositionPercentXEnabled="True" PositionPercentYEnabled="True" LeftMargin="87.0000" RightMargin="87.0000" TopMargin="28.5000" BottomMargin="28.5000" LeftEage="27" RightEage="27" TopEage="14" BottomEage="14" Scale9OriginX="27" Scale9OriginY="14" Scale9Width="28" Scale9Height="17" ctype="ImageViewObjectData">
                <Size X="82.0000" Y="45.0000" />
                <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                <Position X="128.0000" Y="51.0000" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.5000" Y="0.5000" />
                <PreSize X="0.3203" Y="0.4412" />
                <FileData Type="Normal" Path="SettlementUI/settlement_confirm_label.png" Plist="" />
              </AbstractNodeData>
            </Children>
            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
            <Position X="921.6000" Y="72.0000" />
            <Scale ScaleX="1.0000" ScaleY="1.0000" />
            <CColor A="255" R="255" G="255" B="255" />
            <PrePosition X="0.7200" Y="0.1000" />
            <PreSize X="0.2000" Y="0.1417" />
            <TextColor A="255" R="65" G="65" B="70" />
            <NormalFileData Type="Normal" Path="Default/common_btn_orange.png" Plist="" />
            <OutlineColor A="255" R="255" G="0" B="0" />
            <ShadowColor A="255" R="110" G="110" B="110" />
          </AbstractNodeData>
        </Children>
      </ObjectData>
    </Content>
  </Content>
</GameFile>