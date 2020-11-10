<?xml version="1.0" encoding="UTF-8"?>
<model name="Arenstorf">
  <header formatversion="2" hwxversion="2020.0" script="oml"/>
  <edition>
    <properties>
      <property name="creator" value="masoud"/>
      <property name="creationdate" value="08/13/12 16:02:06"/>
      <property name="revision" value=""/>
      <property name="lastmodifieddate" value="11/10/20 10:13:56"/>
      <property name="comments" value=""/>
    </properties>
  </edition>
  <initialization/>
  <finalization/>
  <diagram>
    <block name="EventClock_1" type="block">
      <template name="system/ActivationOperations/EventClock"/>
      <properties>
        <property name="inlinable" value="1"/>
        <property name="masked" value="1"/>
        <property name="atomic" value="0"/>
      </properties>
      <graphics>
        <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
        <frame shape="rectangle" visible="0" color="0,0,0,0" thickness="1.5"/>
        <background color="255,255,255,0"/>
        <position x="570.967407" y="222.517593"/>
        <size width="50" height="40.00000000000003"/>
        <rotate angle="0"/>
        <texts>
          <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
        </texts>
        <images>
          <image name="image1" file="ActivationOperations/time.svg" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
        </images>
        <flip value="0">
          <images>
            <image name="image2" file="ActivationOperations/time.svg" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
          </images>
        </flip>
      </graphics>
      <ports>
        <port name="" type="fixedport">
          <properties>
            <property name="iotype" value="out"/>
            <property name="datatype" value="Activation"/>
            <property name="portnumber" value="1"/>
          </properties>
          <graphics>
            <location position="bottom"/>
            <label visible="1" font="Arial,10" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
            <background color="183,15,19,255"/>
          </graphics>
        </port>
      </ports>
      <parameters>
        <section name="Parameters">
          <parameter name="period" value="0.1"/>
          <parameter name="init" value="0"/>
        </section>
      </parameters>
    </block>
    <block name="arenstorf" type="block">
      <diagram>
        <block name="Sum" type="block">
          <template name="system/MathOperations/Sum"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="165" y="118.47757"/>
            <size width="16" height="46.000000000000014"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
            </texts>
            <images>
              <image name="image1" file="&quot;&quot;" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="&quot;+&quot; &quot;+&quot;" type="variableport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="nin"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="variableport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Activation"/>
                <property name="portnumber" value="externalActivation"/>
              </properties>
              <graphics>
                <location position="top"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                <background color="183,15,19,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
              <parameter name="nin" value="2"/>
              <parametertable name="in_ports">
                <columns number="1">
                  <parameter name="sgn" value="&apos;+&apos;"/>
                </columns>
                <rows number="nin">
                  <row>
                    <value>&apos;+&apos;</value>
                  </row>
                  <row>
                    <value>&apos;+&apos;</value>
                  </row>
                </rows>
              </parametertable>
              <parameter name="satur" value="&apos;Nothing&apos;"/>
              <parameter name="externalActivation" value="0"/>
            </section>
          </parameters>
        </block>
        <block name="Constant" type="block">
          <template name="system/SignalGenerators/Constant"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="92" y="77"/>
            <size width="36" height="27"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">amu</text>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="variableport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Activation"/>
                <property name="portnumber" value="externalActivation"/>
              </properties>
              <graphics>
                <location position="top"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                <background color="183,15,19,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
              <parameter name="C" value="amu"/>
              <parameter name="typ" value="&apos;double&apos;"/>
              <parameter name="externalActivation" value="0"/>
            </section>
          </parameters>
        </block>
        <block name="Sum_1" type="block">
          <template name="system/MathOperations/Sum"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="174" y="229"/>
            <size width="16" height="46"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
            </texts>
            <images>
              <image name="image1" file="&quot;&quot;" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="&quot;+&quot; &quot;+&quot;" type="variableport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="nin"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="variableport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Activation"/>
                <property name="portnumber" value="externalActivation"/>
              </properties>
              <graphics>
                <location position="top"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                <background color="183,15,19,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
              <parameter name="nin" value="2"/>
              <parametertable name="in_ports">
                <columns number="1">
                  <parameter name="sgn" value="&apos;+&apos;"/>
                </columns>
                <rows number="nin">
                  <row>
                    <value>&apos;+&apos;</value>
                  </row>
                  <row>
                    <value>&apos;+&apos;</value>
                  </row>
                </rows>
              </parametertable>
              <parameter name="satur" value="&apos;Nothing&apos;"/>
              <parameter name="externalActivation" value="0"/>
            </section>
          </parameters>
        </block>
        <block name="Constant_1" type="block">
          <template name="system/SignalGenerators/Constant"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="100.577545" y="250.188477"/>
            <size width="45.999999999999986" height="27.00000000000003"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">-amup</text>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="variableport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Activation"/>
                <property name="portnumber" value="externalActivation"/>
              </properties>
              <graphics>
                <location position="top"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                <background color="183,15,19,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
              <parameter name="C" value="-amup"/>
              <parameter name="typ" value="&apos;double&apos;"/>
              <parameter name="externalActivation" value="0"/>
            </section>
          </parameters>
        </block>
        <block name="Sum_1_1" type="block">
          <template name="system/MathOperations/Sum"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="265.820953" y="118.47757"/>
            <size width="16" height="46.000000000000014"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
            </texts>
            <images>
              <image name="image1" file="&quot;&quot;" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="&quot;+&quot; &quot;+&quot;" type="variableport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="nin"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="variableport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Activation"/>
                <property name="portnumber" value="externalActivation"/>
              </properties>
              <graphics>
                <location position="top"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                <background color="183,15,19,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
              <parameter name="nin" value="2"/>
              <parametertable name="in_ports">
                <columns number="1">
                  <parameter name="sgn" value="&apos;+&apos;"/>
                </columns>
                <rows number="nin">
                  <row>
                    <value>&apos;+&apos;</value>
                  </row>
                  <row>
                    <value>&apos;+&apos;</value>
                  </row>
                </rows>
              </parametertable>
              <parameter name="satur" value="&apos;Nothing&apos;"/>
              <parameter name="externalActivation" value="0"/>
            </section>
          </parameters>
        </block>
        <block name="Sum_1_1_1" type="block">
          <template name="system/MathOperations/Sum"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="276" y="177.777496"/>
            <size width="16" height="46"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
            </texts>
            <images>
              <image name="image1" file="&quot;&quot;" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="&quot;+&quot; &quot;+&quot;" type="variableport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="nin"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="variableport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Activation"/>
                <property name="portnumber" value="externalActivation"/>
              </properties>
              <graphics>
                <location position="top"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                <background color="183,15,19,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
              <parameter name="nin" value="2"/>
              <parametertable name="in_ports">
                <columns number="1">
                  <parameter name="sgn" value="&apos;+&apos;"/>
                </columns>
                <rows number="nin">
                  <row>
                    <value>&apos;+&apos;</value>
                  </row>
                  <row>
                    <value>&apos;+&apos;</value>
                  </row>
                </rows>
              </parametertable>
              <parameter name="satur" value="&apos;Nothing&apos;"/>
              <parameter name="externalActivation" value="0"/>
            </section>
          </parameters>
        </block>
        <block name="Product" type="block">
          <template name="system/MathOperations/Product"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="458.615997" y="88.649231"/>
            <size width="23" height="59.999999999999986"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
            </texts>
            <images>
              <image name="image1" file="&quot;&quot;" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="&quot;*&quot; &quot;*&quot;" type="variableport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="nin"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="variableport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Activation"/>
                <property name="portnumber" value="externalActivation"/>
              </properties>
              <graphics>
                <location position="top"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                <background color="183,15,19,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
              <parameter name="nin" value="2"/>
              <parametertable name="in_ports">
                <columns number="1">
                  <parameter name="sgn" value="&apos;*&apos;"/>
                </columns>
                <rows number="nin">
                  <row>
                    <value>&apos;*&apos;</value>
                  </row>
                  <row>
                    <value>&apos;*&apos;</value>
                  </row>
                </rows>
              </parametertable>
              <parameter name="overflow" value="&apos;Nothing&apos;"/>
              <parameter name="rmethod" value="&apos;Floor&apos;"/>
              <parameter name="externalActivation" value="0"/>
            </section>
          </parameters>
        </block>
        <block name="Gain" type="block">
          <template name="system/MathOperations/Gain"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="367" y="68"/>
            <size width="54" height="40"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.4" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">amup</text>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="variableport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Activation"/>
                <property name="portnumber" value="externalActivation"/>
              </properties>
              <graphics>
                <location position="top"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                <background color="183,15,19,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
              <parameter name="gain" value="amup"/>
              <parameter name="overflow" value="&apos;Nothing&apos;"/>
              <parameter name="externalActivation" value="0"/>
            </section>
          </parameters>
        </block>
        <block name="Gain_1" type="block">
          <template name="system/MathOperations/Gain"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="364" y="255.899719"/>
            <size width="54" height="40"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.4" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">amu</text>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="variableport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Activation"/>
                <property name="portnumber" value="externalActivation"/>
              </properties>
              <graphics>
                <location position="top"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                <background color="183,15,19,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
              <parameter name="gain" value="amu"/>
              <parameter name="overflow" value="&apos;Nothing&apos;"/>
              <parameter name="externalActivation" value="0"/>
            </section>
          </parameters>
        </block>
        <block name="Product_1" type="block">
          <template name="system/MathOperations/Product"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="460.96817" y="190.411758"/>
            <size width="23" height="60"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
            </texts>
            <images>
              <image name="image1" file="&quot;&quot;" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="&quot;*&quot; &quot;*&quot;" type="variableport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="nin"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="variableport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Activation"/>
                <property name="portnumber" value="externalActivation"/>
              </properties>
              <graphics>
                <location position="top"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                <background color="183,15,19,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
              <parameter name="nin" value="2"/>
              <parametertable name="in_ports">
                <columns number="1">
                  <parameter name="sgn" value="&apos;*&apos;"/>
                </columns>
                <rows number="nin">
                  <row>
                    <value>&apos;*&apos;</value>
                  </row>
                  <row>
                    <value>&apos;*&apos;</value>
                  </row>
                </rows>
              </parametertable>
              <parameter name="overflow" value="&apos;Nothing&apos;"/>
              <parameter name="rmethod" value="&apos;Floor&apos;"/>
              <parameter name="externalActivation" value="0"/>
            </section>
          </parameters>
        </block>
        <block name="Sum_2" type="block">
          <template name="system/MathOperations/Sum"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="527" y="108"/>
            <size width="41" height="120"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
            </texts>
            <images>
              <image name="image1" file="&quot;&quot;" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="&quot;+&quot; &quot;-&quot; &quot;-&quot; &quot;+&quot;" type="variableport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="nin"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="variableport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Activation"/>
                <property name="portnumber" value="externalActivation"/>
              </properties>
              <graphics>
                <location position="top"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                <background color="183,15,19,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
              <parameter name="nin" value="4"/>
              <parametertable name="in_ports">
                <columns number="1">
                  <parameter name="sgn" value="&apos;+&apos;"/>
                </columns>
                <rows number="nin">
                  <row>
                    <value>&apos;+&apos;</value>
                  </row>
                  <row>
                    <value>&apos;-&apos;</value>
                  </row>
                  <row>
                    <value>&apos;-&apos;</value>
                  </row>
                  <row>
                    <value>&apos;+&apos;</value>
                  </row>
                </rows>
              </parametertable>
              <parameter name="satur" value="&apos;Nothing&apos;"/>
              <parameter name="externalActivation" value="0"/>
            </section>
          </parameters>
        </block>
        <block name="Gain_1_1" type="block">
          <template name="system/MathOperations/Gain"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="286" y="310"/>
            <size width="54" height="25"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.4" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">2</text>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="variableport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Activation"/>
                <property name="portnumber" value="externalActivation"/>
              </properties>
              <graphics>
                <location position="top"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                <background color="183,15,19,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
              <parameter name="gain" value="2"/>
              <parameter name="overflow" value="&apos;Nothing&apos;"/>
              <parameter name="externalActivation" value="0"/>
            </section>
          </parameters>
        </block>
        <block name="Gain_1_1_1" type="block">
          <template name="system/MathOperations/Gain"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="288" y="374"/>
            <size width="54" height="25"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.4" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">2</text>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="variableport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Activation"/>
                <property name="portnumber" value="externalActivation"/>
              </properties>
              <graphics>
                <location position="top"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                <background color="183,15,19,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
              <parameter name="gain" value="2"/>
              <parameter name="overflow" value="&apos;Nothing&apos;"/>
              <parameter name="externalActivation" value="0"/>
            </section>
          </parameters>
        </block>
        <block name="Product_2" type="block">
          <template name="system/MathOperations/Product"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="474" y="328.268677"/>
            <size width="23" height="60"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
            </texts>
            <images>
              <image name="image1" file="&quot;&quot;" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="&quot;*&quot; &quot;*&quot;" type="variableport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="nin"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="variableport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Activation"/>
                <property name="portnumber" value="externalActivation"/>
              </properties>
              <graphics>
                <location position="top"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                <background color="183,15,19,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
              <parameter name="nin" value="2"/>
              <parametertable name="in_ports">
                <columns number="1">
                  <parameter name="sgn" value="&apos;*&apos;"/>
                </columns>
                <rows number="nin">
                  <row>
                    <value>&apos;*&apos;</value>
                  </row>
                  <row>
                    <value>&apos;*&apos;</value>
                  </row>
                </rows>
              </parametertable>
              <parameter name="overflow" value="&apos;Nothing&apos;"/>
              <parameter name="rmethod" value="&apos;Floor&apos;"/>
              <parameter name="externalActivation" value="0"/>
            </section>
          </parameters>
        </block>
        <block name="Product_3" type="block">
          <template name="system/MathOperations/Product"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="476" y="395"/>
            <size width="23" height="60"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
            </texts>
            <images>
              <image name="image1" file="&quot;&quot;" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="&quot;*&quot; &quot;*&quot;" type="variableport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="nin"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="variableport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Activation"/>
                <property name="portnumber" value="externalActivation"/>
              </properties>
              <graphics>
                <location position="top"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                <background color="183,15,19,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
              <parameter name="nin" value="2"/>
              <parametertable name="in_ports">
                <columns number="1">
                  <parameter name="sgn" value="&apos;*&apos;"/>
                </columns>
                <rows number="nin">
                  <row>
                    <value>&apos;*&apos;</value>
                  </row>
                  <row>
                    <value>&apos;*&apos;</value>
                  </row>
                </rows>
              </parametertable>
              <parameter name="overflow" value="&apos;Nothing&apos;"/>
              <parameter name="rmethod" value="&apos;Floor&apos;"/>
              <parameter name="externalActivation" value="0"/>
            </section>
          </parameters>
        </block>
        <block name="Gain_1_2" type="block">
          <template name="system/MathOperations/Gain"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="530" y="338.268677"/>
            <size width="54" height="40"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.4" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">amu</text>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="variableport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Activation"/>
                <property name="portnumber" value="externalActivation"/>
              </properties>
              <graphics>
                <location position="top"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                <background color="183,15,19,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
              <parameter name="gain" value="amu"/>
              <parameter name="overflow" value="&apos;Nothing&apos;"/>
              <parameter name="externalActivation" value="0"/>
            </section>
          </parameters>
        </block>
        <block name="Gain_2" type="block">
          <template name="system/MathOperations/Gain"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="533" y="405"/>
            <size width="54" height="40"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.4" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">amup</text>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="variableport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Activation"/>
                <property name="portnumber" value="externalActivation"/>
              </properties>
              <graphics>
                <location position="top"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                <background color="183,15,19,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
              <parameter name="gain" value="amup"/>
              <parameter name="overflow" value="&apos;Nothing&apos;"/>
              <parameter name="externalActivation" value="0"/>
            </section>
          </parameters>
        </block>
        <block name="Sum_2_1" type="block">
          <template name="system/MathOperations/Sum"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="623" y="339"/>
            <size width="41" height="120"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
            </texts>
            <images>
              <image name="image1" file="&quot;&quot;" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="&quot;-&quot; &quot;-&quot; &quot;-&quot; &quot;+&quot;" type="variableport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="nin"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="variableport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Activation"/>
                <property name="portnumber" value="externalActivation"/>
              </properties>
              <graphics>
                <location position="top"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                <background color="183,15,19,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
              <parameter name="nin" value="4"/>
              <parametertable name="in_ports">
                <columns number="1">
                  <parameter name="sgn" value="&apos;+&apos;"/>
                </columns>
                <rows number="nin">
                  <row>
                    <value>&apos;-&apos;</value>
                  </row>
                  <row>
                    <value>&apos;-&apos;</value>
                  </row>
                  <row>
                    <value>&apos;-&apos;</value>
                  </row>
                  <row>
                    <value>&apos;+&apos;</value>
                  </row>
                </rows>
              </parametertable>
              <parameter name="satur" value="&apos;Nothing&apos;"/>
              <parameter name="externalActivation" value="0"/>
            </section>
          </parameters>
        </block>
        <block name="Integral_4_1" type="block">
          <template name="system/Dynamical/Integral"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="11.656311" y="121.47757"/>
            <size width="40" height="40.000000000000014"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">1&#xA;─&#xA;s</text>
            </texts>
            <images>
              <image name="image1" file="&quot;&quot;" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="&quot;x&quot;" type="variableport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="reinit"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="variableport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Activation"/>
                <property name="portnumber" value="reinit"/>
              </properties>
              <graphics>
                <location position="top"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                <background color="183,15,19,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
              <parameter name="x0" value="y3"/>
              <parameter name="reinit" value="0"/>
              <parameter name="satur" value="0"/>
              <parametertable name="limit">
                <columns number="3">
                  <parameter name="max" value="[1]"/>
                  <parameter name="min" value="[-1]"/>
                  <parameter name="zcross" value="1"/>
                </columns>
                <rows number="satur">
                </rows>
              </parametertable>
            </section>
          </parameters>
        </block>
        <block name="Integral_4_1_1" type="block">
          <template name="system/Dynamical/Integral"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="13.500671" y="180.777496"/>
            <size width="40" height="40"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">1&#xA;─&#xA;s</text>
            </texts>
            <images>
              <image name="image1" file="&quot;&quot;" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="&quot;x&quot;" type="variableport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="reinit"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="variableport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Activation"/>
                <property name="portnumber" value="reinit"/>
              </properties>
              <graphics>
                <location position="top"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                <background color="183,15,19,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
              <parameter name="x0" value="y4"/>
              <parameter name="reinit" value="0"/>
              <parameter name="satur" value="0"/>
              <parametertable name="limit">
                <columns number="3">
                  <parameter name="max" value="[1]"/>
                  <parameter name="min" value="[-1]"/>
                  <parameter name="zcross" value="1"/>
                </columns>
                <rows number="satur">
                </rows>
              </parametertable>
            </section>
          </parameters>
        </block>
        <block name="Integral_2" type="block">
          <template name="system/Dynamical/Integral"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="91.511261" y="121.47757"/>
            <size width="39.999999999999986" height="40.000000000000014"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">1&#xA;─&#xA;s</text>
            </texts>
            <images>
              <image name="image1" file="&quot;&quot;" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="&quot;x&quot;" type="variableport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="reinit"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="variableport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Activation"/>
                <property name="portnumber" value="reinit"/>
              </properties>
              <graphics>
                <location position="top"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                <background color="183,15,19,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
              <parameter name="x0" value="y1"/>
              <parameter name="reinit" value="0"/>
              <parameter name="satur" value="0"/>
              <parametertable name="limit">
                <columns number="3">
                  <parameter name="max" value="[1]"/>
                  <parameter name="min" value="[-1]"/>
                  <parameter name="zcross" value="1"/>
                </columns>
                <rows number="satur">
                </rows>
              </parametertable>
            </section>
          </parameters>
        </block>
        <block name="Integral_2_1" type="block">
          <template name="system/Dynamical/Integral"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="95" y="180.777496"/>
            <size width="40" height="40"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">1&#xA;─&#xA;s</text>
            </texts>
            <images>
              <image name="image1" file="&quot;&quot;" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="&quot;x&quot;" type="variableport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="reinit"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="variableport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Activation"/>
                <property name="portnumber" value="reinit"/>
              </properties>
              <graphics>
                <location position="top"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                <background color="183,15,19,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
              <parameter name="x0" value="y2"/>
              <parameter name="reinit" value="0"/>
              <parameter name="satur" value="0"/>
              <parametertable name="limit">
                <columns number="3">
                  <parameter name="max" value="[1]"/>
                  <parameter name="min" value="[-1]"/>
                  <parameter name="zcross" value="1"/>
                </columns>
                <rows number="satur">
                </rows>
              </parametertable>
            </section>
          </parameters>
        </block>
        <block name="MathFunc_1" type="block">
          <template name="system/MathOperations/MathFunc"/>
          <properties>
            <property name="masked" value="1"/>
            <property name="inlinable" value="0"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="358.334503" y="120.853814"/>
            <size width="55.665497000000016" height="41.247513"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">1/u</text>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="variableport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="activation"/>
                <property name="portnumber" value="externalActivation"/>
              </properties>
              <graphics>
                <location position="top"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                <background color="183,15,19,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
              <parameter name="func" value="&apos;1/u&apos;"/>
              <parameter name="externalActivation" value="0"/>
            </section>
          </parameters>
        </block>
        <block name="MathFunc_1_1" type="block">
          <template name="system/MathOperations/MathFunc"/>
          <properties>
            <property name="masked" value="1"/>
            <property name="inlinable" value="0"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="384" y="189.237503"/>
            <size width="36" height="38.52499399999999"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">1/u</text>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="variableport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="activation"/>
                <property name="portnumber" value="externalActivation"/>
              </properties>
              <graphics>
                <location position="top"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                <background color="183,15,19,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
              <parameter name="func" value="&apos;1/u&apos;"/>
              <parameter name="externalActivation" value="0"/>
            </section>
          </parameters>
        </block>
        <block name="fork" type="regular_split">
          <template name="system/Links/Split"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="ellipse" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
            <position x="152.015405" y="141.47757"/>
            <size width="0" height="0"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="top"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="2"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="3"/>
              </properties>
              <graphics>
                <location position="bottom"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
            </section>
          </parameters>
        </block>
        <block name="fork_1" type="regular_split">
          <template name="system/Links/Split"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="ellipse" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
            <position x="251.299362" y="200.777496"/>
            <size width="0" height="0"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="top"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="2"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="3"/>
              </properties>
              <graphics>
                <location position="bottom"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
            </section>
          </parameters>
        </block>
        <block name="fork_2" type="regular_split">
          <template name="system/Links/Split"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="ellipse" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
            <position x="193.932779" y="141.560273"/>
            <size width="0" height="0"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="top"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="2"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="3"/>
              </properties>
              <graphics>
                <location position="bottom"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
            </section>
          </parameters>
        </block>
        <block name="fork_3" type="regular_split">
          <template name="system/Links/Split"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="ellipse" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
            <position x="199.999258" y="252.14122"/>
            <size width="0" height="0"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="top"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="2"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="3"/>
              </properties>
              <graphics>
                <location position="bottom"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
            </section>
          </parameters>
        </block>
        <block name="fork_4" type="regular_split">
          <template name="system/Links/Split"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="ellipse" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
            <position x="142.044487" y="141.47757"/>
            <size width="0" height="0"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="top"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="2"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="3"/>
              </properties>
              <graphics>
                <location position="bottom"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
            </section>
          </parameters>
        </block>
        <block name="fork_5" type="regular_split">
          <template name="system/Links/Split"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="ellipse" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
            <position x="67.789429" y="200.777496"/>
            <size width="0" height="0"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="top"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="2"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="3"/>
              </properties>
              <graphics>
                <location position="bottom"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
            </section>
          </parameters>
        </block>
        <block name="fork_7" type="regular_split">
          <template name="system/Links/Split"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="ellipse" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
            <position x="161.250721" y="200.777496"/>
            <size width="0" height="0"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="top"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="2"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="3"/>
              </properties>
              <graphics>
                <location position="bottom"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
            </section>
          </parameters>
        </block>
        <block name="fork_9" type="regular_split">
          <template name="system/Links/Split"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="ellipse" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
            <position x="437.655585" y="364.320783"/>
            <size width="0" height="0"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="top"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="2"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="3"/>
              </properties>
              <graphics>
                <location position="bottom"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
            </section>
          </parameters>
        </block>
        <block name="fork_10" type="regular_split">
          <template name="system/Links/Split"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="ellipse" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
            <position x="73.100311" y="141.47757"/>
            <size width="0" height="0"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="top"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="2"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="3"/>
              </properties>
              <graphics>
                <location position="bottom"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
            </section>
          </parameters>
        </block>
        <block name="fork_11" type="regular_split">
          <template name="system/Links/Split"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="ellipse" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
            <position x="421.393129" y="364.320783"/>
            <size width="0" height="0"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="top"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="2"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="3"/>
              </properties>
              <graphics>
                <location position="bottom"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
            </section>
          </parameters>
        </block>
        <block name="fork_12" type="regular_split">
          <template name="system/Links/Split"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="ellipse" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
            <position x="454.052202" y="364.320783"/>
            <size width="0" height="0"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="top"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="2"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="3"/>
              </properties>
              <graphics>
                <location position="bottom"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
            </section>
          </parameters>
        </block>
        <block name="fork_13" type="regular_split">
          <template name="system/Links/Split"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="ellipse" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
            <position x="507.171997" y="58.21875"/>
            <size width="0" height="0"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="top"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="2"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="3"/>
              </properties>
              <graphics>
                <location position="bottom"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
            </section>
          </parameters>
        </block>
        <block name="fork_8" type="regular_split">
          <template name="system/Links/Split"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="ellipse" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
            <position x="430.225489" y="133.755018"/>
            <size width="0" height="0"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="top"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="2"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="3"/>
              </properties>
              <graphics>
                <location position="bottom"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
            </section>
          </parameters>
        </block>
        <block name="fork_6" type="regular_split">
          <template name="system/Links/Split"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="ellipse" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
            <position x="439.210996" y="208.5"/>
            <size width="0" height="0"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="top"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="2"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="3"/>
              </properties>
              <graphics>
                <location position="bottom"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
            </section>
          </parameters>
        </block>
        <block name="y_coor" type="regular_out_port">
          <template name="system/Ports/Output"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="1" font="Arial,11" color="255,255,255,255"/>
            <frame shape="pentagon" visible="1" color="0,0,0,255" cornerradius="0" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="471.267438" y="271.830954"/>
            <size width="20" height="20"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.35" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">2</text>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
              <parameter name="portNumber" value="2"/>
              <parameter name="insize" value="[-1;-2]"/>
              <parameter name="intyp" value="&apos;inherit&apos;"/>
            </section>
          </parameters>
        </block>
        <block name="x_coor" type="regular_out_port">
          <template name="system/Ports/Output"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="1" font="Arial,11" color="255,255,255,255"/>
            <frame shape="pentagon" visible="1" color="0,0,0,255" cornerradius="0" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="660.742737" y="48.21875"/>
            <size width="20" height="20"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.35" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">1</text>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
              <parameter name="portNumber" value="1"/>
              <parameter name="insize" value="[-1;-2]"/>
              <parameter name="intyp" value="&apos;inherit&apos;"/>
            </section>
          </parameters>
        </block>
        <block name="Power_3_1_2" type="block">
          <template name="system/MathOperations/Power"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="205.124435" y="121.47757"/>
            <size width="40" height="40.000000000000014"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">u1^2</text>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="variableport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Activation"/>
                <property name="portnumber" value="externalActivation"/>
              </properties>
              <graphics>
                <location position="top"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                <background color="183,15,19,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
              <parameter name="power" value="2"/>
              <parameter name="ptype" value="&apos;Nothing&apos;"/>
              <parameter name="externalActivation" value="0"/>
            </section>
          </parameters>
        </block>
        <block name="Power_3_1_3" type="block">
          <template name="system/MathOperations/Power"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="180" y="180.777496"/>
            <size width="40" height="40"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">u1^2</text>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="variableport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Activation"/>
                <property name="portnumber" value="externalActivation"/>
              </properties>
              <graphics>
                <location position="top"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                <background color="183,15,19,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
              <parameter name="power" value="2"/>
              <parameter name="ptype" value="&apos;Nothing&apos;"/>
              <parameter name="externalActivation" value="0"/>
            </section>
          </parameters>
        </block>
        <block name="Power_3_1_4" type="block">
          <template name="system/MathOperations/Power"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="213.255356" y="232"/>
            <size width="40" height="40"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">u1^2</text>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="variableport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Activation"/>
                <property name="portnumber" value="externalActivation"/>
              </properties>
              <graphics>
                <location position="top"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                <background color="183,15,19,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
              <parameter name="power" value="2"/>
              <parameter name="ptype" value="&apos;Nothing&apos;"/>
              <parameter name="externalActivation" value="0"/>
            </section>
          </parameters>
        </block>
        <block name="Power_3_1_1_1" type="block">
          <template name="system/MathOperations/Power"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="298.745391" y="121.47757"/>
            <size width="40" height="40.000000000000014"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">u1^1.5</text>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="variableport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Activation"/>
                <property name="portnumber" value="externalActivation"/>
              </properties>
              <graphics>
                <location position="top"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                <background color="183,15,19,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
              <parameter name="power" value="1.5"/>
              <parameter name="ptype" value="&apos;Nothing&apos;"/>
              <parameter name="externalActivation" value="0"/>
            </section>
          </parameters>
        </block>
        <block name="Power_3_1_1_2" type="block">
          <template name="system/MathOperations/Power"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="319.568389" y="188.5"/>
            <size width="40" height="40"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">u1^1.5</text>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="variableport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Activation"/>
                <property name="portnumber" value="externalActivation"/>
              </properties>
              <graphics>
                <location position="top"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                <background color="183,15,19,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
              <parameter name="power" value="1.5"/>
              <parameter name="ptype" value="&apos;Nothing&apos;"/>
              <parameter name="externalActivation" value="0"/>
            </section>
          </parameters>
        </block>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Constant" port="1" iotype="out"/>
          <to block="Sum" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points>
            <point x="152.957" y="90.5"/>
            <point x="152.957" y="130.021"/>
          </points>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="fork" port="1" iotype="out"/>
          <to block="Sum" port="2" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points>
            <point x="155" y="141.478"/>
          </points>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Sum" port="1" iotype="out"/>
          <to block="fork_2" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points>
            <point x="193.933" y="141.478"/>
          </points>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="fork" port="2" iotype="out"/>
          <to block="Sum_1" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points>
            <point x="152.015" y="240.5"/>
          </points>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Constant_1" port="1" iotype="out"/>
          <to block="Sum_1" port="2" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points>
            <point x="160.288772" y="263.688477"/>
            <point x="160.288772" y="263.5"/>
          </points>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Sum_1" port="1" iotype="out"/>
          <to block="fork_3" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points>
            <point x="199.999" y="252"/>
          </points>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Power_3_1_2" port="1" iotype="out"/>
          <to block="Sum_1_1" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points>
            <point x="255.821" y="141.478"/>
          </points>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="fork_1" port="1" iotype="out"/>
          <to block="Sum_1_1" port="2" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points>
            <point x="251.299" y="152.978"/>
          </points>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="fork_1" port="2" iotype="out"/>
          <to block="Sum_1_1_1" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points>
            <point x="266" y="200.777"/>
          </points>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Power_3_1_4" port="1" iotype="out"/>
          <to block="Sum_1_1_1" port="2" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points>
            <point x="264" y="252"/>
            <point x="264" y="212.277"/>
          </points>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Sum_1_1_1" port="1" iotype="out"/>
          <to block="Power_3_1_1_2" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points>
            <point x="302" y="208.5"/>
          </points>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Gain" port="1" iotype="out"/>
          <to block="Product" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points>
            <point x="439.008" y="88"/>
            <point x="439.008" y="103.649"/>
          </points>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="fork_8" port="1" iotype="out"/>
          <to block="Product" port="2" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points>
            <point x="430.225" y="133.649"/>
          </points>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Product" port="1" iotype="out"/>
          <to block="Sum_2" port="2" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points>
            <point x="497.949" y="118.696"/>
            <point x="497.85" y="153.155"/>
          </points>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="fork_2" port="2" iotype="out"/>
          <to block="Gain" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points>
            <point x="193.933" y="88"/>
          </points>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="fork_3" port="2" iotype="out"/>
          <to block="Gain_1" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points>
            <point x="199.999" y="275.9"/>
          </points>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Gain_1" port="1" iotype="out"/>
          <to block="Product_1" port="2" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points>
            <point x="446.198" y="275.9"/>
            <point x="446.198" y="235.412"/>
          </points>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="fork_6" port="1" iotype="out"/>
          <to block="Product_1" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points>
            <point x="439.211" y="205.412"/>
          </points>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Product_1" port="1" iotype="out"/>
          <to block="Sum_2" port="3" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points>
            <point x="508.329" y="220.412"/>
            <point x="508.329" y="182.78"/>
          </points>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="fork_13" port="1" iotype="out"/>
          <to block="Sum_2" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points>
            <point x="507.172" y="123"/>
          </points>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Gain_1_1" port="1" iotype="out"/>
          <to block="Sum_2" port="4" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points>
            <point x="517" y="322.5"/>
          </points>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Sum_2" port="1" iotype="out"/>
          <to block="Integral_4_1" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points>
            <point x="600" y="168.55"/>
            <point x="600" y="27"/>
            <point x="-16.0151" y="27"/>
            <point x="-16.0151" y="141.478"/>
          </points>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="fork_5" port="2" iotype="out"/>
          <to block="Gain_1_1" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points>
            <point x="67.7894" y="322.5"/>
          </points>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="fork_10" port="2" iotype="out"/>
          <to block="Gain_1_1_1" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points>
            <point x="73.1003" y="386.56"/>
          </points>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Gain_1_1_1" port="1" iotype="out"/>
          <to block="Sum_2_1" port="2" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points>
            <point x="352" y="384"/>
          </points>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="fork_6" port="2" iotype="out"/>
          <to block="Product_2" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points>
            <point x="439.211" y="343.269"/>
          </points>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="fork_12" port="1" iotype="out"/>
          <to block="Product_2" port="2" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points>
            <point x="454.052" y="373.269"/>
          </points>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Product_2" port="1" iotype="out"/>
          <to block="Gain_1_2" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points/>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="fork_8" port="2" iotype="out"/>
          <to block="Product_3" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points>
            <point x="430.225" y="410"/>
          </points>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="fork_9" port="2" iotype="out"/>
          <to block="Product_3" port="2" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points>
            <point x="437.656" y="440"/>
          </points>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Product_3" port="1" iotype="out"/>
          <to block="Gain_2" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points/>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Gain_1_2" port="1" iotype="out"/>
          <to block="Sum_2_1" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points>
            <point x="613" y="358.269"/>
          </points>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Gain_2" port="1" iotype="out"/>
          <to block="Sum_2_1" port="3" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points>
            <point x="597" y="414"/>
          </points>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="fork_11" port="2" iotype="out"/>
          <to block="Sum_2_1" port="4" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points>
            <point x="421.393" y="456.837"/>
            <point x="613" y="456.837"/>
          </points>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Sum_2_1" port="1" iotype="out"/>
          <to block="Integral_4_1_1" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points>
            <point x="688" y="399"/>
            <point x="688" y="469"/>
            <point x="-10" y="469"/>
            <point x="-10" y="200.777"/>
          </points>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Integral_4_1" port="1" iotype="out"/>
          <to block="fork_10" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points/>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Integral_4_1_1" port="1" iotype="out"/>
          <to block="fork_5" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points/>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Integral_2" port="1" iotype="out"/>
          <to block="fork_4" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points/>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="fork_10" port="1" iotype="out"/>
          <to block="Integral_2" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points/>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Integral_2_1" port="1" iotype="out"/>
          <to block="fork_7" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points/>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="fork_5" port="1" iotype="out"/>
          <to block="Integral_2_1" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points/>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="fork_2" port="1" iotype="out"/>
          <to block="Power_3_1_2" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points>
            <point x="193.933" y="141.478"/>
          </points>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="fork_7" port="1" iotype="out"/>
          <to block="Power_3_1_3" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points/>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Power_3_1_3" port="1" iotype="out"/>
          <to block="fork_1" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points/>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="fork_3" port="1" iotype="out"/>
          <to block="Power_3_1_4" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points>
            <point x="199.999" y="252"/>
          </points>
        </link>
        <link name="" type="explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="MathFunc_1" port="1" iotype="out"/>
          <to block="fork_8" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points>
            <point x="424" y="133.755"/>
          </points>
        </link>
        <link name="" type="explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="MathFunc_1_1" port="1" iotype="out"/>
          <to block="fork_6" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points>
            <point x="430" y="208.472"/>
          </points>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="fork_4" port="1" iotype="out"/>
          <to block="fork" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points>
            <point x="142.045" y="141.398"/>
          </points>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="fork_4" port="2" iotype="out"/>
          <to block="fork_13" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points>
            <point x="142.044" y="48.2129"/>
            <point x="507.172" y="48.2129"/>
          </points>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="fork_7" port="2" iotype="out"/>
          <to block="fork_11" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points>
            <point x="162.386" y="365.005"/>
          </points>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="fork_11" port="1" iotype="out"/>
          <to block="fork_9" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points/>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="fork_9" port="1" iotype="out"/>
          <to block="fork_12" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points>
            <point x="437.656" y="364.285"/>
          </points>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="fork_12" port="2" iotype="out"/>
          <to block="y_coor" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points>
            <point x="454.052" y="281.831"/>
          </points>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="fork_13" port="2" iotype="out"/>
          <to block="x_coor" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points>
            <point x="650.7430000000001" y="58.2188"/>
          </points>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Power_3_1_1_2" port="1" iotype="out"/>
          <to block="MathFunc_1_1" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points/>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Power_3_1_1_1" port="1" iotype="out"/>
          <to block="MathFunc_1" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points/>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Sum_1_1" port="1" iotype="out"/>
          <to block="Power_3_1_1_1" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points/>
        </link>
        <context>amu=0.012277471;&#xA;amup=1.0-amu;&#xA;y1=0.994;&#xA;y2=0.0;&#xA;y3=0.0;&#xA;y4=-2.00158510637908252240537862224;&#xA;</context>
        <graphics>
          <viewport width="800" height="800" topleftx="0" toplefty="0"/>
          <window width="800" height="800" topleftx="0" toplefty="0"/>
        </graphics>
      </diagram>
      <properties>
        <property name="masked" value="0"/>
        <property name="inlinable" value="0"/>
        <property name="atomic" value="0"/>
        <property name="status" value="1"/>
      </properties>
      <graphics>
        <label position="bottom" visible="1" font="Arial,11" color="255,255,255,255"/>
        <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
        <background color="233,240,219,255"/>
        <position x="232.835419" y="189.029312"/>
        <size width="96" height="36"/>
        <rotate angle="0"/>
        <texts>
          <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
        </texts>
        <images>
          <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
        </images>
        <flip value="0">
          <images>
            <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
          </images>
        </flip>
      </graphics>
      <ports>
        <port name="x_coor" type="fixedport">
          <properties>
            <property name="iotype" value="out"/>
            <property name="datatype" value="Explicit"/>
            <property name="portnumber" value="1"/>
          </properties>
          <graphics>
            <location position="right"/>
            <label visible="1" font="Arial,10" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
          </graphics>
        </port>
        <port name="y_coor" type="fixedport">
          <properties>
            <property name="iotype" value="out"/>
            <property name="datatype" value="Explicit"/>
            <property name="portnumber" value="2"/>
          </properties>
          <graphics>
            <location position="right"/>
            <label visible="1" font="Arial,10" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
          </graphics>
        </port>
      </ports>
      <parameters title="new block definition">
        <callback>
          <pre/>
          <post/>
        </callback>
      </parameters>
    </block>
    <block name="ScopeXY" type="block">
      <template name="system/SignalViewers/ScopeXY"/>
      <properties>
        <property name="inlinable" value="0"/>
        <property name="masked" value="1"/>
        <property name="atomic" value="0"/>
      </properties>
      <graphics>
        <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
        <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
        <background color="255,255,255,255"/>
        <position x="575.967407" y="295.119049"/>
        <size width="40" height="40"/>
        <rotate angle="0"/>
        <texts>
          <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
        </texts>
        <images>
          <image name="image1" file="SignalViewers/scopeXY.svg" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
        </images>
        <flip value="0">
          <images>
            <image name="image2" file="SignalViewers/scopeXY.svg" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
          </images>
        </flip>
      </graphics>
      <ports>
        <port name="" type="fixedport">
          <properties>
            <property name="iotype" value="in"/>
            <property name="datatype" value="Explicit"/>
            <property name="portnumber" value="1"/>
          </properties>
          <graphics>
            <location position="left"/>
            <label visible="1" font="Arial,10" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
          </graphics>
        </port>
        <port name="" type="fixedport">
          <properties>
            <property name="iotype" value="in"/>
            <property name="datatype" value="Explicit"/>
            <property name="portnumber" value="2"/>
          </properties>
          <graphics>
            <location position="left"/>
            <label visible="1" font="Arial,10" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
          </graphics>
        </port>
        <port name="" type="variableport">
          <properties>
            <property name="iotype" value="in"/>
            <property name="datatype" value="Activation"/>
            <property name="portnumber" value="externalActivation"/>
          </properties>
          <graphics>
            <location position="top"/>
            <label visible="1" font="Arial,10" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
            <background color="183,15,19,255"/>
          </graphics>
        </port>
      </ports>
      <parameters>
        <section name="Main">
          <parameter name="externalActivation" value="1"/>
          <parameter name="winSize" value="[400,400]"/>
          <parameter name="winPos" value="[300,300]"/>
          <parameter name="winNam" value="&apos;&apos;"/>
          <parameter name="winHidden" value="0"/>
          <parameter name="showAtEnd" value="0"/>
          <parameter name="option" value="&apos;Reuse&apos;"/>
        </section>
        <section name="Advanced">
          <parameter name="plotTitle" value="&apos;&apos;"/>
          <parameter name="plotColor" value="0"/>
          <parameter name="plotGrid" value="&apos;No Grid&apos;"/>
          <parameter name="xScale" value="&apos;linear&apos;"/>
          <parameter name="xInterval" value="[-1.5,1.5]"/>
          <parameter name="yScale" value="&apos;linear&apos;"/>
          <parameter name="yInterval" value="[-1.5,1.5]"/>
          <parameter name="curvesStyle" value="0"/>
        </section>
      </parameters>
    </block>
    <block name="Mux" type="block">
      <template name="system/Routing/Mux"/>
      <properties>
        <property name="inlinable" value="0"/>
        <property name="masked" value="1"/>
        <property name="atomic" value="0"/>
      </properties>
      <graphics>
        <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
        <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
        <background color="255,255,255,255"/>
        <position x="490.954712" y="191.304337"/>
        <size width="7" height="60.00000000000003"/>
        <rotate angle="0"/>
        <texts>
          <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
        </texts>
        <images>
          <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
        </images>
        <flip value="0">
          <images>
            <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
          </images>
        </flip>
      </graphics>
      <ports>
        <port name="" type="variableport">
          <properties>
            <property name="iotype" value="in"/>
            <property name="datatype" value="Explicit"/>
            <property name="portnumber" value="nin"/>
          </properties>
          <graphics>
            <location position="left"/>
            <label visible="1" font="Arial,11" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
          </graphics>
        </port>
        <port name="" type="fixedport">
          <properties>
            <property name="iotype" value="out"/>
            <property name="datatype" value="Explicit"/>
            <property name="portnumber" value="1"/>
          </properties>
          <graphics>
            <location position="right"/>
            <label visible="1" font="Arial,11" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
          </graphics>
        </port>
      </ports>
      <parameters>
        <section name="Parameters">
          <parameter name="nin" value="3"/>
          <parametertable name="inports">
            <columns number="1">
              <parameter name="size" value="1"/>
            </columns>
            <rows number="nin">
              <row>
                <value>1</value>
              </row>
              <row>
                <value>1</value>
              </row>
              <row>
                <value>1</value>
              </row>
            </rows>
          </parametertable>
        </section>
      </parameters>
    </block>
    <block name="Scope" type="block">
      <template name="system/SignalViewers/Scope"/>
      <properties>
        <property name="masked" value="1"/>
        <property name="inlinable" value="0"/>
        <property name="atomic" value="0"/>
        <property name="status" value="1"/>
      </properties>
      <graphics>
        <label position="bottom" visible="1" font="Arial,11" color="255,255,255,255"/>
        <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
        <background color="255,255,255,255"/>
        <position x="517.954712" y="201.304337"/>
        <size width="40" height="40.00000000000003"/>
        <rotate angle="0"/>
        <texts>
          <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
        </texts>
        <images>
          <image name="image1" file="SignalViewers/scope.svg" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
        </images>
        <flip value="0">
          <images>
            <image name="image2" file="SignalViewers/scope.svg" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
          </images>
        </flip>
      </graphics>
      <ports>
        <port name="&quot;&quot;" type="variableport">
          <properties>
            <property name="iotype" value="in"/>
            <property name="datatype" value="explicit"/>
            <property name="portnumber" value="nin"/>
          </properties>
          <graphics>
            <location position="left"/>
            <label visible="1" font="Arial,11" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
          </graphics>
        </port>
        <port name="" type="variableport">
          <properties>
            <property name="iotype" value="in"/>
            <property name="datatype" value="activation"/>
            <property name="portnumber" value="externalActivation"/>
          </properties>
          <graphics>
            <location position="top"/>
            <label visible="1" font="Arial,11" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
            <background color="183,15,19,255"/>
          </graphics>
        </port>
      </ports>
      <parameters>
        <section name="Main">
          <parameter name="nin" value="1"/>
          <parameter name="externalActivation" value="0"/>
          <parameter name="winSize" value="[400,400]"/>
          <parameter name="winPos" value="[300,300]"/>
          <parameter name="winNam" value="&apos;&apos;"/>
          <parameter name="winHidden" value="1"/>
          <parameter name="showAtEnd" value="0"/>
          <parameter name="option" value="&apos;Reuse&apos;"/>
        </section>
        <section name="Advanced">
          <parameter name="useSubplot" value="1"/>
          <parametertable name="win_s">
            <columns number="7">
              <parameter name="title" value="&apos;&apos;"/>
              <parameter name="reverseColor" value="0"/>
              <parameter name="grid" value="&apos;Coarse&apos;"/>
              <parameter name="xScale" value="&apos;linear&apos;"/>
              <parameter name="xRefresh" value="-1"/>
              <parameter name="yScale" value="&apos;linear&apos;"/>
              <parameter name="yInterval" value="[NaN,NaN]"/>
            </columns>
            <rows number="nin">
              <row>
                <value>&apos;&apos;</value>
                <value>0</value>
                <value>&apos;Coarse&apos;</value>
                <value>&apos;linear&apos;</value>
                <value>-1</value>
                <value>&apos;linear&apos;</value>
                <value>[NaN,NaN]</value>
              </row>
            </rows>
          </parametertable>
          <parameter name="plotTitle" value="&apos;&apos;"/>
          <parameter name="plotColor" value="0"/>
          <parameter name="plotGrid" value="&apos;Coarse&apos;"/>
          <parameter name="xScale" value="&apos;linear&apos;"/>
          <parameter name="xRefresh" value="-1"/>
          <parameter name="yScale" value="&apos;linear&apos;"/>
          <parameter name="yInterval" value="[NaN,NaN]"/>
          <parametertable name="signals">
            <columns number="3">
              <parameter name="name" value="&apos;&apos;"/>
              <parameter name="color" value="0"/>
              <parameter name="marker" value="0"/>
            </columns>
            <rows number="nin">
              <row>
                <value>&apos;&apos;</value>
                <value>0</value>
                <value>0</value>
              </row>
            </rows>
          </parametertable>
        </section>
      </parameters>
    </block>
    <block name="FMU_1" type="block">
      <template name="system/CoSimulation/FMU"/>
      <properties>
        <property name="inlinable" value="0"/>
        <property name="masked" value="1"/>
        <property name="atomic" value="0"/>
        <property name="status" value="0"/>
      </properties>
      <graphics>
        <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
        <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
        <background color="255,255,255,255"/>
        <position x="230.835419" y="390.738739"/>
        <size width="156" height="108"/>
        <rotate angle="0"/>
        <texts>
          <text name="text" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">FMU&#xA;sb_arenstorf</text>
        </texts>
        <images>
          <image name="image1" file="CoSimulation/fmuv.svg" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
        </images>
        <flip value="0">
          <images>
            <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
          </images>
        </flip>
      </graphics>
      <ports>
        <port name="&quot;Output_1&quot; &quot;Output&quot;" type="variableport">
          <properties>
            <property name="iotype" value="out"/>
            <property name="datatype" value="Explicit"/>
            <property name="portnumber" value="nout"/>
          </properties>
          <graphics>
            <location position="right"/>
            <label visible="1" font="Arial,11" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
          </graphics>
        </port>
        <port name="" type="variableport">
          <properties>
            <property name="iotype" value="in"/>
            <property name="datatype" value="Explicit"/>
            <property name="portnumber" value="nin"/>
          </properties>
          <graphics>
            <location position="left"/>
            <label visible="1" font="Arial,11" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
          </graphics>
        </port>
        <port name="&quot;Ext&quot; &quot;End&quot; " type="variableport">
          <properties>
            <property name="iotype" value="in"/>
            <property name="datatype" value="Activation"/>
            <property name="portnumber" value="2*inevent"/>
          </properties>
          <graphics>
            <location position="top"/>
            <label visible="1" font="Arial,11" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
            <background color="183,15,19,255"/>
          </graphics>
        </port>
        <port name="&quot;Event&quot; &quot;End&quot; " type="variableport">
          <properties>
            <property name="iotype" value="out"/>
            <property name="datatype" value="Activation"/>
            <property name="portnumber" value="2*outevent"/>
          </properties>
          <graphics>
            <location position="bottom"/>
            <label visible="1" font="Arial,11" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
            <background color="183,15,19,255"/>
          </graphics>
        </port>
      </ports>
      <parameters>
        <section name="General Parameters">
          <parameter name="FMUfilename" value="&apos;sb_arenstorf.fmu&apos;"/>
          <parameter name="NX" value="0"/>
          <parameter name="NZ" value="0"/>
          <parameter name="nin" value="0"/>
          <parametertable name="inports">
            <columns number="4">
              <parameter name="name" value="&apos;&apos;"/>
              <parameter name="description" value="&apos;&apos;"/>
              <parameter name="it" value="&apos;fmiReal&apos;"/>
              <parameter name="dodependency" value="1"/>
            </columns>
            <rows number="nin">
            </rows>
          </parametertable>
          <parameter name="nout" value="2"/>
          <parametertable name="outports">
            <columns number="3">
              <parameter name="name" value="&apos;&apos;"/>
              <parameter name="description" value="&apos;&apos;"/>
              <parameter name="ot" value="&apos;fmiReal&apos;"/>
            </columns>
            <rows number="nout">
              <row>
                <value>&apos;Output_1&apos;</value>
                <value>&apos;index:80 ,output variable&apos;</value>
                <value>&apos;fmiReal&apos;</value>
              </row>
              <row>
                <value>&apos;Output&apos;</value>
                <value>&apos;index:81 ,output variable&apos;</value>
                <value>&apos;fmiReal&apos;</value>
              </row>
            </rows>
          </parametertable>
          <parameter name="nparam" value="75"/>
          <parametertable name="params">
            <columns number="7">
              <parameter name="name" value="&apos;&apos;"/>
              <parameter name="description" value="&apos;&apos;"/>
              <parameter name="tp" value="&apos;fmiReal&apos;"/>
              <parameter name="unit" value="&apos;&apos;"/>
              <parameter name="value" value="0"/>
              <parameter name="defvalue" value="0"/>
              <parameter name="reference" value="0"/>
            </columns>
            <rows number="nparam">
              <row>
                <value>&apos;Ipar(31,1)&apos;</value>
                <value>&apos;index:1 ,parameter variable&apos;</value>
                <value>&apos;fmiInteger&apos;</value>
                <value>&apos;&apos;</value>
                <value>1</value>
                <value>1</value>
                <value>47</value>
              </row>
              <row>
                <value>&apos;Ipar(30,1)&apos;</value>
                <value>&apos;index:2 ,parameter variable&apos;</value>
                <value>&apos;fmiInteger&apos;</value>
                <value>&apos;&apos;</value>
                <value>1</value>
                <value>1</value>
                <value>46</value>
              </row>
              <row>
                <value>&apos;Ipar(29,1)&apos;</value>
                <value>&apos;index:3 ,parameter variable&apos;</value>
                <value>&apos;fmiInteger&apos;</value>
                <value>&apos;&apos;</value>
                <value>1</value>
                <value>1</value>
                <value>45</value>
              </row>
              <row>
                <value>&apos;Ipar(28,1)&apos;</value>
                <value>&apos;index:4 ,parameter variable&apos;</value>
                <value>&apos;fmiInteger&apos;</value>
                <value>&apos;&apos;</value>
                <value>1</value>
                <value>1</value>
                <value>44</value>
              </row>
              <row>
                <value>&apos;Ipar(27,1)&apos;</value>
                <value>&apos;index:5 ,parameter variable&apos;</value>
                <value>&apos;fmiInteger&apos;</value>
                <value>&apos;&apos;</value>
                <value>1</value>
                <value>1</value>
                <value>43</value>
              </row>
              <row>
                <value>&apos;Ipar(26,1)&apos;</value>
                <value>&apos;index:6 ,parameter variable&apos;</value>
                <value>&apos;fmiInteger&apos;</value>
                <value>&apos;&apos;</value>
                <value>1</value>
                <value>1</value>
                <value>42</value>
              </row>
              <row>
                <value>&apos;Ipar(25,1)&apos;</value>
                <value>&apos;index:7 ,parameter variable&apos;</value>
                <value>&apos;fmiInteger&apos;</value>
                <value>&apos;&apos;</value>
                <value>1</value>
                <value>1</value>
                <value>41</value>
              </row>
              <row>
                <value>&apos;Ipar(24,1)&apos;</value>
                <value>&apos;index:8 ,parameter variable&apos;</value>
                <value>&apos;fmiInteger&apos;</value>
                <value>&apos;&apos;</value>
                <value>1</value>
                <value>1</value>
                <value>40</value>
              </row>
              <row>
                <value>&apos;Ipar(23,1)&apos;</value>
                <value>&apos;index:9 ,parameter variable&apos;</value>
                <value>&apos;fmiInteger&apos;</value>
                <value>&apos;&apos;</value>
                <value>0</value>
                <value>0</value>
                <value>39</value>
              </row>
              <row>
                <value>&apos;Ipar(22,1)&apos;</value>
                <value>&apos;index:10 ,parameter variable&apos;</value>
                <value>&apos;fmiInteger&apos;</value>
                <value>&apos;&apos;</value>
                <value>1</value>
                <value>1</value>
                <value>38</value>
              </row>
              <row>
                <value>&apos;Ipar(21,1)&apos;</value>
                <value>&apos;index:11 ,parameter variable&apos;</value>
                <value>&apos;fmiInteger&apos;</value>
                <value>&apos;&apos;</value>
                <value>1</value>
                <value>1</value>
                <value>37</value>
              </row>
              <row>
                <value>&apos;Ipar(20,1)&apos;</value>
                <value>&apos;index:12 ,parameter variable&apos;</value>
                <value>&apos;fmiInteger&apos;</value>
                <value>&apos;&apos;</value>
                <value>0</value>
                <value>0</value>
                <value>36</value>
              </row>
              <row>
                <value>&apos;Ipar(19,1)&apos;</value>
                <value>&apos;index:13 ,parameter variable&apos;</value>
                <value>&apos;fmiInteger&apos;</value>
                <value>&apos;&apos;</value>
                <value>1</value>
                <value>1</value>
                <value>35</value>
              </row>
              <row>
                <value>&apos;Ipar(18,1)&apos;</value>
                <value>&apos;index:14 ,parameter variable&apos;</value>
                <value>&apos;fmiInteger&apos;</value>
                <value>&apos;&apos;</value>
                <value>1</value>
                <value>1</value>
                <value>34</value>
              </row>
              <row>
                <value>&apos;Ipar(17,1)&apos;</value>
                <value>&apos;index:15 ,parameter variable&apos;</value>
                <value>&apos;fmiInteger&apos;</value>
                <value>&apos;&apos;</value>
                <value>1</value>
                <value>1</value>
                <value>33</value>
              </row>
              <row>
                <value>&apos;Ipar(16,1)&apos;</value>
                <value>&apos;index:16 ,parameter variable&apos;</value>
                <value>&apos;fmiInteger&apos;</value>
                <value>&apos;&apos;</value>
                <value>-1</value>
                <value>-1</value>
                <value>32</value>
              </row>
              <row>
                <value>&apos;Ipar(15,1)&apos;</value>
                <value>&apos;index:17 ,parameter variable&apos;</value>
                <value>&apos;fmiInteger&apos;</value>
                <value>&apos;&apos;</value>
                <value>-1</value>
                <value>-1</value>
                <value>31</value>
              </row>
              <row>
                <value>&apos;Ipar(14,1)&apos;</value>
                <value>&apos;index:18 ,parameter variable&apos;</value>
                <value>&apos;fmiInteger&apos;</value>
                <value>&apos;&apos;</value>
                <value>1</value>
                <value>1</value>
                <value>30</value>
              </row>
              <row>
                <value>&apos;Ipar(13,1)&apos;</value>
                <value>&apos;index:19 ,parameter variable&apos;</value>
                <value>&apos;fmiInteger&apos;</value>
                <value>&apos;&apos;</value>
                <value>0</value>
                <value>0</value>
                <value>29</value>
              </row>
              <row>
                <value>&apos;Ipar(12,1)&apos;</value>
                <value>&apos;index:20 ,parameter variable&apos;</value>
                <value>&apos;fmiInteger&apos;</value>
                <value>&apos;&apos;</value>
                <value>1</value>
                <value>1</value>
                <value>28</value>
              </row>
              <row>
                <value>&apos;Ipar(11,1)&apos;</value>
                <value>&apos;index:21 ,parameter variable&apos;</value>
                <value>&apos;fmiInteger&apos;</value>
                <value>&apos;&apos;</value>
                <value>1</value>
                <value>1</value>
                <value>27</value>
              </row>
              <row>
                <value>&apos;Ipar(10,1)&apos;</value>
                <value>&apos;index:22 ,parameter variable&apos;</value>
                <value>&apos;fmiInteger&apos;</value>
                <value>&apos;&apos;</value>
                <value>0</value>
                <value>0</value>
                <value>26</value>
              </row>
              <row>
                <value>&apos;Ipar(9,1)&apos;</value>
                <value>&apos;index:23 ,parameter variable&apos;</value>
                <value>&apos;fmiInteger&apos;</value>
                <value>&apos;&apos;</value>
                <value>1</value>
                <value>1</value>
                <value>25</value>
              </row>
              <row>
                <value>&apos;Ipar(8,1)&apos;</value>
                <value>&apos;index:24 ,parameter variable&apos;</value>
                <value>&apos;fmiInteger&apos;</value>
                <value>&apos;&apos;</value>
                <value>1</value>
                <value>1</value>
                <value>24</value>
              </row>
              <row>
                <value>&apos;Ipar(7,1)&apos;</value>
                <value>&apos;index:25 ,parameter variable&apos;</value>
                <value>&apos;fmiInteger&apos;</value>
                <value>&apos;&apos;</value>
                <value>1</value>
                <value>1</value>
                <value>23</value>
              </row>
              <row>
                <value>&apos;Ipar(6,1)&apos;</value>
                <value>&apos;index:26 ,parameter variable&apos;</value>
                <value>&apos;fmiInteger&apos;</value>
                <value>&apos;&apos;</value>
                <value>-1</value>
                <value>-1</value>
                <value>22</value>
              </row>
              <row>
                <value>&apos;Ipar(5,1)&apos;</value>
                <value>&apos;index:27 ,parameter variable&apos;</value>
                <value>&apos;fmiInteger&apos;</value>
                <value>&apos;&apos;</value>
                <value>-1</value>
                <value>-1</value>
                <value>21</value>
              </row>
              <row>
                <value>&apos;Ipar(4,1)&apos;</value>
                <value>&apos;index:28 ,parameter variable&apos;</value>
                <value>&apos;fmiInteger&apos;</value>
                <value>&apos;&apos;</value>
                <value>-1</value>
                <value>-1</value>
                <value>20</value>
              </row>
              <row>
                <value>&apos;Ipar(3,1)&apos;</value>
                <value>&apos;index:29 ,parameter variable&apos;</value>
                <value>&apos;fmiInteger&apos;</value>
                <value>&apos;&apos;</value>
                <value>2</value>
                <value>2</value>
                <value>19</value>
              </row>
              <row>
                <value>&apos;Ipar(2,1)&apos;</value>
                <value>&apos;index:30 ,parameter variable&apos;</value>
                <value>&apos;fmiInteger&apos;</value>
                <value>&apos;&apos;</value>
                <value>1</value>
                <value>1</value>
                <value>18</value>
              </row>
              <row>
                <value>&apos;Ipar(1,1)&apos;</value>
                <value>&apos;index:31 ,parameter variable&apos;</value>
                <value>&apos;fmiInteger&apos;</value>
                <value>&apos;&apos;</value>
                <value>1</value>
                <value>1</value>
                <value>17</value>
              </row>
              <row>
                <value>&apos;Opar(35)&apos;</value>
                <value>&apos;index:32 ,parameter variable&apos;</value>
                <value>&apos;fmiReal&apos;</value>
                <value>&apos;&apos;</value>
                <value>0.012277471</value>
                <value>0.012277471</value>
                <value>27</value>
              </row>
              <row>
                <value>&apos;Opar(34)&apos;</value>
                <value>&apos;index:33 ,parameter variable&apos;</value>
                <value>&apos;fmiReal&apos;</value>
                <value>&apos;&apos;</value>
                <value>-0.987722529</value>
                <value>-0.987722529</value>
                <value>26</value>
              </row>
              <row>
                <value>&apos;Opar(33)&apos;</value>
                <value>&apos;index:34 ,parameter variable&apos;</value>
                <value>&apos;fmiInteger&apos;</value>
                <value>&apos;&apos;</value>
                <value>0</value>
                <value>0</value>
                <value>16</value>
              </row>
              <row>
                <value>&apos;Opar(32)&apos;</value>
                <value>&apos;index:35 ,parameter variable&apos;</value>
                <value>&apos;fmiInteger&apos;</value>
                <value>&apos;&apos;</value>
                <value>0</value>
                <value>0</value>
                <value>15</value>
              </row>
              <row>
                <value>&apos;Opar(31)&apos;</value>
                <value>&apos;index:36 ,parameter variable&apos;</value>
                <value>&apos;fmiReal&apos;</value>
                <value>&apos;&apos;</value>
                <value>0.987722529</value>
                <value>0.987722529</value>
                <value>25</value>
              </row>
              <row>
                <value>&apos;Opar(30)&apos;</value>
                <value>&apos;index:37 ,parameter variable&apos;</value>
                <value>&apos;fmiInteger&apos;</value>
                <value>&apos;&apos;</value>
                <value>0</value>
                <value>0</value>
                <value>14</value>
              </row>
              <row>
                <value>&apos;Opar(29)&apos;</value>
                <value>&apos;index:38 ,parameter variable&apos;</value>
                <value>&apos;fmiInteger&apos;</value>
                <value>&apos;&apos;</value>
                <value>0</value>
                <value>0</value>
                <value>13</value>
              </row>
              <row>
                <value>&apos;Opar(28)&apos;</value>
                <value>&apos;index:39 ,parameter variable&apos;</value>
                <value>&apos;fmiReal&apos;</value>
                <value>&apos;&apos;</value>
                <value>0.012277471</value>
                <value>0.012277471</value>
                <value>24</value>
              </row>
              <row>
                <value>&apos;Opar(27)&apos;</value>
                <value>&apos;index:40 ,parameter variable&apos;</value>
                <value>&apos;fmiInteger&apos;</value>
                <value>&apos;&apos;</value>
                <value>0</value>
                <value>0</value>
                <value>12</value>
              </row>
              <row>
                <value>&apos;Opar(26)&apos;</value>
                <value>&apos;index:41 ,parameter variable&apos;</value>
                <value>&apos;fmiInteger&apos;</value>
                <value>&apos;&apos;</value>
                <value>0</value>
                <value>0</value>
                <value>11</value>
              </row>
              <row>
                <value>&apos;Opar(25)&apos;</value>
                <value>&apos;index:42 ,parameter variable&apos;</value>
                <value>&apos;fmiReal&apos;</value>
                <value>&apos;&apos;</value>
                <value>2.</value>
                <value>2.</value>
                <value>23</value>
              </row>
              <row>
                <value>&apos;Opar(24)&apos;</value>
                <value>&apos;index:43 ,parameter variable&apos;</value>
                <value>&apos;fmiInteger&apos;</value>
                <value>&apos;&apos;</value>
                <value>0</value>
                <value>0</value>
                <value>10</value>
              </row>
              <row>
                <value>&apos;Opar(23)&apos;</value>
                <value>&apos;index:44 ,parameter variable&apos;</value>
                <value>&apos;fmiInteger&apos;</value>
                <value>&apos;&apos;</value>
                <value>0</value>
                <value>0</value>
                <value>9</value>
              </row>
              <row>
                <value>&apos;Opar(22)&apos;</value>
                <value>&apos;index:45 ,parameter variable&apos;</value>
                <value>&apos;fmiReal&apos;</value>
                <value>&apos;&apos;</value>
                <value>2.</value>
                <value>2.</value>
                <value>22</value>
              </row>
              <row>
                <value>&apos;Opar(21)&apos;</value>
                <value>&apos;index:46 ,parameter variable&apos;</value>
                <value>&apos;fmiInteger&apos;</value>
                <value>&apos;&apos;</value>
                <value>0</value>
                <value>0</value>
                <value>8</value>
              </row>
              <row>
                <value>&apos;Opar(20)&apos;</value>
                <value>&apos;index:47 ,parameter variable&apos;</value>
                <value>&apos;fmiInteger&apos;</value>
                <value>&apos;&apos;</value>
                <value>0</value>
                <value>0</value>
                <value>7</value>
              </row>
              <row>
                <value>&apos;Opar(19)&apos;</value>
                <value>&apos;index:48 ,parameter variable&apos;</value>
                <value>&apos;fmiReal&apos;</value>
                <value>&apos;&apos;</value>
                <value>0.012277471</value>
                <value>0.012277471</value>
                <value>21</value>
              </row>
              <row>
                <value>&apos;Opar(18)&apos;</value>
                <value>&apos;index:49 ,parameter variable&apos;</value>
                <value>&apos;fmiInteger&apos;</value>
                <value>&apos;&apos;</value>
                <value>0</value>
                <value>0</value>
                <value>6</value>
              </row>
              <row>
                <value>&apos;Opar(17)&apos;</value>
                <value>&apos;index:50 ,parameter variable&apos;</value>
                <value>&apos;fmiInteger&apos;</value>
                <value>&apos;&apos;</value>
                <value>0</value>
                <value>0</value>
                <value>5</value>
              </row>
              <row>
                <value>&apos;Opar(16)&apos;</value>
                <value>&apos;index:51 ,parameter variable&apos;</value>
                <value>&apos;fmiReal&apos;</value>
                <value>&apos;&apos;</value>
                <value>0.987722529</value>
                <value>0.987722529</value>
                <value>20</value>
              </row>
              <row>
                <value>&apos;Opar(15)&apos;</value>
                <value>&apos;index:52 ,parameter variable&apos;</value>
                <value>&apos;fmiInteger&apos;</value>
                <value>&apos;&apos;</value>
                <value>0</value>
                <value>0</value>
                <value>4</value>
              </row>
              <row>
                <value>&apos;Opar(14)&apos;</value>
                <value>&apos;index:53 ,parameter variable&apos;</value>
                <value>&apos;fmiBoolean&apos;</value>
                <value>&apos;&apos;</value>
                <value>true</value>
                <value>true</value>
                <value>4</value>
              </row>
              <row>
                <value>&apos;Opar(13)(2,1)&apos;</value>
                <value>&apos;index:54 ,parameter variable&apos;</value>
                <value>&apos;fmiReal&apos;</value>
                <value>&apos;&apos;</value>
                <value>2.</value>
                <value>2.</value>
                <value>19</value>
              </row>
              <row>
                <value>&apos;Opar(13)(1,1)&apos;</value>
                <value>&apos;index:55 ,parameter variable&apos;</value>
                <value>&apos;fmiReal&apos;</value>
                <value>&apos;&apos;</value>
                <value>2.</value>
                <value>2.</value>
                <value>18</value>
              </row>
              <row>
                <value>&apos;Opar(12)&apos;</value>
                <value>&apos;index:56 ,parameter variable&apos;</value>
                <value>&apos;fmiInteger&apos;</value>
                <value>&apos;&apos;</value>
                <value>0</value>
                <value>0</value>
                <value>3</value>
              </row>
              <row>
                <value>&apos;Opar(11)&apos;</value>
                <value>&apos;index:57 ,parameter variable&apos;</value>
                <value>&apos;fmiBoolean&apos;</value>
                <value>&apos;&apos;</value>
                <value>true</value>
                <value>true</value>
                <value>3</value>
              </row>
              <row>
                <value>&apos;Opar(10)(2,1)&apos;</value>
                <value>&apos;index:58 ,parameter variable&apos;</value>
                <value>&apos;fmiReal&apos;</value>
                <value>&apos;&apos;</value>
                <value>2.</value>
                <value>2.</value>
                <value>17</value>
              </row>
              <row>
                <value>&apos;Opar(10)(1,1)&apos;</value>
                <value>&apos;index:59 ,parameter variable&apos;</value>
                <value>&apos;fmiReal&apos;</value>
                <value>&apos;&apos;</value>
                <value>2.</value>
                <value>2.</value>
                <value>16</value>
              </row>
              <row>
                <value>&apos;Opar(9)&apos;</value>
                <value>&apos;index:60 ,parameter variable&apos;</value>
                <value>&apos;fmiInteger&apos;</value>
                <value>&apos;&apos;</value>
                <value>0</value>
                <value>0</value>
                <value>2</value>
              </row>
              <row>
                <value>&apos;Opar(8)&apos;</value>
                <value>&apos;index:61 ,parameter variable&apos;</value>
                <value>&apos;fmiBoolean&apos;</value>
                <value>&apos;&apos;</value>
                <value>true</value>
                <value>true</value>
                <value>2</value>
              </row>
              <row>
                <value>&apos;Opar(7)(2,1)&apos;</value>
                <value>&apos;index:62 ,parameter variable&apos;</value>
                <value>&apos;fmiReal&apos;</value>
                <value>&apos;&apos;</value>
                <value>2.</value>
                <value>2.</value>
                <value>15</value>
              </row>
              <row>
                <value>&apos;Opar(7)(1,1)&apos;</value>
                <value>&apos;index:63 ,parameter variable&apos;</value>
                <value>&apos;fmiReal&apos;</value>
                <value>&apos;&apos;</value>
                <value>2.</value>
                <value>2.</value>
                <value>14</value>
              </row>
              <row>
                <value>&apos;Opar(6)&apos;</value>
                <value>&apos;index:64 ,parameter variable&apos;</value>
                <value>&apos;fmiInteger&apos;</value>
                <value>&apos;&apos;</value>
                <value>0</value>
                <value>0</value>
                <value>1</value>
              </row>
              <row>
                <value>&apos;Opar(5)&apos;</value>
                <value>&apos;index:65 ,parameter variable&apos;</value>
                <value>&apos;fmiBoolean&apos;</value>
                <value>&apos;&apos;</value>
                <value>false</value>
                <value>false</value>
                <value>1</value>
              </row>
              <row>
                <value>&apos;Opar(4)(2,1)&apos;</value>
                <value>&apos;index:66 ,parameter variable&apos;</value>
                <value>&apos;fmiReal&apos;</value>
                <value>&apos;&apos;</value>
                <value>1.5</value>
                <value>1.5</value>
                <value>13</value>
              </row>
              <row>
                <value>&apos;Opar(4)(1,1)&apos;</value>
                <value>&apos;index:67 ,parameter variable&apos;</value>
                <value>&apos;fmiReal&apos;</value>
                <value>&apos;&apos;</value>
                <value>1.5</value>
                <value>1.5</value>
                <value>12</value>
              </row>
              <row>
                <value>&apos;Opar(3)&apos;</value>
                <value>&apos;index:68 ,parameter variable&apos;</value>
                <value>&apos;fmiInteger&apos;</value>
                <value>&apos;&apos;</value>
                <value>0</value>
                <value>0</value>
                <value>0</value>
              </row>
              <row>
                <value>&apos;Opar(2)&apos;</value>
                <value>&apos;index:69 ,parameter variable&apos;</value>
                <value>&apos;fmiBoolean&apos;</value>
                <value>&apos;&apos;</value>
                <value>false</value>
                <value>false</value>
                <value>0</value>
              </row>
              <row>
                <value>&apos;Opar(1)(2,1)&apos;</value>
                <value>&apos;index:70 ,parameter variable&apos;</value>
                <value>&apos;fmiReal&apos;</value>
                <value>&apos;&apos;</value>
                <value>1.5</value>
                <value>1.5</value>
                <value>11</value>
              </row>
              <row>
                <value>&apos;Opar(1)(1,1)&apos;</value>
                <value>&apos;index:71 ,parameter variable&apos;</value>
                <value>&apos;fmiReal&apos;</value>
                <value>&apos;&apos;</value>
                <value>1.5</value>
                <value>1.5</value>
                <value>10</value>
              </row>
              <row>
                <value>&apos;state[3]&apos;</value>
                <value>&apos;index:72 ,local variable&apos;</value>
                <value>&apos;fmiReal&apos;</value>
                <value>&apos;&apos;</value>
                <value>0.</value>
                <value>0.</value>
                <value>8</value>
              </row>
              <row>
                <value>&apos;state[2]&apos;</value>
                <value>&apos;index:74 ,local variable&apos;</value>
                <value>&apos;fmiReal&apos;</value>
                <value>&apos;&apos;</value>
                <value>-2.00158510638</value>
                <value>-2.00158510638</value>
                <value>6</value>
              </row>
              <row>
                <value>&apos;state[1]&apos;</value>
                <value>&apos;index:76 ,local variable&apos;</value>
                <value>&apos;fmiReal&apos;</value>
                <value>&apos;&apos;</value>
                <value>0.994</value>
                <value>0.994</value>
                <value>4</value>
              </row>
              <row>
                <value>&apos;state[0]&apos;</value>
                <value>&apos;index:78 ,local variable&apos;</value>
                <value>&apos;fmiReal&apos;</value>
                <value>&apos;&apos;</value>
                <value>0.</value>
                <value>0.</value>
                <value>2</value>
              </row>
            </rows>
          </parametertable>
        </section>
        <section name="Advanced">
          <parameter name="run_as_me" value="0"/>
          <parameter name="tolerancecontrolled" value="1"/>
          <parameter name="stoptimedefined" value="1"/>
          <parameter name="deleteafteruse" value="1"/>
          <parameter name="inevent" value="0"/>
          <parameter name="outevent" value="0"/>
          <parameter name="resources" value="&apos;&apos;"/>
          <parameter name="tempdir" value="&apos;&apos;"/>
          <parameter name="ipc" value="0"/>
        </section>
        <section name="Reporting">
          <parameter name="enable_fmulogging" value="1"/>
          <parameter name="simloglevel" value="&apos;Warning&apos;"/>
          <parameter name="add_Activate_messages" value="1"/>
          <parameter name="fmulogging_cats" value="&apos;&apos;"/>
          <parameter name="log_file_name" value="&apos;&apos;"/>
          <parameter name="csv" value="&apos;;&apos;"/>
          <parameter name="out_enum_as_int_flag" value="1"/>
          <parameter name="log_only_outputs" value="1"/>
          <parameter name="result_file" value="&apos;&apos;"/>
        </section>
        <section name="Model Exchange">
          <parameter name="stepevent" value="1"/>
          <parameter name="stateevent" value="1"/>
          <parameter name="timeevent" value="1"/>
          <parameter name="OutputOn" value="0"/>
          <parameter name="meshpoints" value="1"/>
          <parameter name="superdensetimes" value="1"/>
        </section>
        <section name="Co-Simulation">
          <parameter name="fixedComStepsize" value="0.0"/>
          <parameter name="provideDerivative" value="0"/>
          <parameter name="exploitOutDerivative" value="1"/>
          <parameter name="visible" value="0"/>
        </section>
      </parameters>
    </block>
    <block name="FMU" type="block">
      <template name="system/CoSimulation/FMU"/>
      <properties>
        <property name="inlinable" value="0"/>
        <property name="masked" value="1"/>
        <property name="atomic" value="0"/>
        <property name="status" value="0"/>
      </properties>
      <graphics>
        <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
        <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
        <background color="255,255,255,255"/>
        <position x="230.835419" y="262.218506"/>
        <size width="156" height="108"/>
        <rotate angle="0"/>
        <texts>
          <text name="text" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">FMU&#xA;sb_arenstorf</text>
        </texts>
        <images>
          <image name="image1" file="CoSimulation/fmuv.svg" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
        </images>
        <flip value="0">
          <images>
            <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
          </images>
        </flip>
      </graphics>
      <ports>
        <port name="&quot;x_coor&quot; &quot;y_coor&quot;" type="variableport">
          <properties>
            <property name="iotype" value="out"/>
            <property name="datatype" value="Explicit"/>
            <property name="portnumber" value="nout"/>
          </properties>
          <graphics>
            <location position="right"/>
            <label visible="1" font="Arial,11" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
          </graphics>
        </port>
        <port name="" type="variableport">
          <properties>
            <property name="iotype" value="in"/>
            <property name="datatype" value="Explicit"/>
            <property name="portnumber" value="nin"/>
          </properties>
          <graphics>
            <location position="left"/>
            <label visible="1" font="Arial,11" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
          </graphics>
        </port>
        <port name="&quot;Ext&quot; &quot;End&quot; " type="variableport">
          <properties>
            <property name="iotype" value="in"/>
            <property name="datatype" value="Activation"/>
            <property name="portnumber" value="2*inevent"/>
          </properties>
          <graphics>
            <location position="top"/>
            <label visible="1" font="Arial,11" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
            <background color="183,15,19,255"/>
          </graphics>
        </port>
        <port name="&quot;Event&quot; &quot;End&quot; " type="variableport">
          <properties>
            <property name="iotype" value="out"/>
            <property name="datatype" value="Activation"/>
            <property name="portnumber" value="2*outevent"/>
          </properties>
          <graphics>
            <location position="bottom"/>
            <label visible="1" font="Arial,11" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
            <background color="183,15,19,255"/>
          </graphics>
        </port>
      </ports>
      <parameters>
        <section name="General Parameters">
          <parameter name="FMUfilename" value="&apos;sb_arenstorf.fmu&apos;"/>
          <parameter name="NX" value="4"/>
          <parameter name="NZ" value="0"/>
          <parameter name="nin" value="0"/>
          <parametertable name="inports">
            <columns number="4">
              <parameter name="name" value="&apos;&apos;"/>
              <parameter name="description" value="&apos;&apos;"/>
              <parameter name="it" value="&apos;fmiReal&apos;"/>
              <parameter name="dodependency" value="1"/>
            </columns>
            <rows number="nin">
            </rows>
          </parametertable>
          <parameter name="nout" value="2"/>
          <parametertable name="outports">
            <columns number="3">
              <parameter name="name" value="&apos;&apos;"/>
              <parameter name="description" value="&apos;&apos;"/>
              <parameter name="ot" value="&apos;fmiReal&apos;"/>
            </columns>
            <rows number="nout">
              <row>
                <value>&apos;x_coor&apos;</value>
                <value>&apos;index:83 ,output variable:SCSREAL_COP&apos;</value>
                <value>&apos;fmiReal&apos;</value>
              </row>
              <row>
                <value>&apos;y_coor&apos;</value>
                <value>&apos;index:84 ,output variable:SCSREAL_COP&apos;</value>
                <value>&apos;fmiReal&apos;</value>
              </row>
            </rows>
          </parametertable>
          <parameter name="nparam" value="75"/>
          <parametertable name="params">
            <columns number="7">
              <parameter name="name" value="&apos;&apos;"/>
              <parameter name="description" value="&apos;&apos;"/>
              <parameter name="tp" value="&apos;fmiReal&apos;"/>
              <parameter name="unit" value="&apos;&apos;"/>
              <parameter name="value" value="0"/>
              <parameter name="defvalue" value="0"/>
              <parameter name="reference" value="0"/>
            </columns>
            <rows number="nparam">
              <row>
                <value>&apos;Ipar.(31,1)&apos;</value>
                <value>&apos;index:4 ,parameter variable:SCSINT32_COP&apos;</value>
                <value>&apos;fmiInteger&apos;</value>
                <value>&apos;&apos;</value>
                <value>1</value>
                <value>1</value>
                <value>47</value>
              </row>
              <row>
                <value>&apos;Ipar.(30,1)&apos;</value>
                <value>&apos;index:5 ,parameter variable:SCSINT32_COP&apos;</value>
                <value>&apos;fmiInteger&apos;</value>
                <value>&apos;&apos;</value>
                <value>2</value>
                <value>2</value>
                <value>46</value>
              </row>
              <row>
                <value>&apos;Ipar.(29,1)&apos;</value>
                <value>&apos;index:6 ,parameter variable:SCSINT32_COP&apos;</value>
                <value>&apos;fmiInteger&apos;</value>
                <value>&apos;&apos;</value>
                <value>1</value>
                <value>1</value>
                <value>45</value>
              </row>
              <row>
                <value>&apos;Ipar.(28,1)&apos;</value>
                <value>&apos;index:7 ,parameter variable:SCSINT32_COP&apos;</value>
                <value>&apos;fmiInteger&apos;</value>
                <value>&apos;&apos;</value>
                <value>-1</value>
                <value>-1</value>
                <value>44</value>
              </row>
              <row>
                <value>&apos;Ipar.(27,1)&apos;</value>
                <value>&apos;index:8 ,parameter variable:SCSINT32_COP&apos;</value>
                <value>&apos;fmiInteger&apos;</value>
                <value>&apos;&apos;</value>
                <value>-1</value>
                <value>-1</value>
                <value>43</value>
              </row>
              <row>
                <value>&apos;Ipar.(26,1)&apos;</value>
                <value>&apos;index:9 ,parameter variable:SCSINT32_COP&apos;</value>
                <value>&apos;fmiInteger&apos;</value>
                <value>&apos;&apos;</value>
                <value>-1</value>
                <value>-1</value>
                <value>42</value>
              </row>
              <row>
                <value>&apos;Ipar.(25,1)&apos;</value>
                <value>&apos;index:10 ,parameter variable:SCSINT32_COP&apos;</value>
                <value>&apos;fmiInteger&apos;</value>
                <value>&apos;&apos;</value>
                <value>0</value>
                <value>0</value>
                <value>41</value>
              </row>
              <row>
                <value>&apos;Ipar.(24,1)&apos;</value>
                <value>&apos;index:11 ,parameter variable:SCSINT32_COP&apos;</value>
                <value>&apos;fmiInteger&apos;</value>
                <value>&apos;&apos;</value>
                <value>1</value>
                <value>1</value>
                <value>40</value>
              </row>
              <row>
                <value>&apos;Ipar.(23,1)&apos;</value>
                <value>&apos;index:12 ,parameter variable:SCSINT32_COP&apos;</value>
                <value>&apos;fmiInteger&apos;</value>
                <value>&apos;&apos;</value>
                <value>1</value>
                <value>1</value>
                <value>39</value>
              </row>
              <row>
                <value>&apos;Ipar.(22,1)&apos;</value>
                <value>&apos;index:13 ,parameter variable:SCSINT32_COP&apos;</value>
                <value>&apos;fmiInteger&apos;</value>
                <value>&apos;&apos;</value>
                <value>0</value>
                <value>0</value>
                <value>38</value>
              </row>
              <row>
                <value>&apos;Ipar.(21,1)&apos;</value>
                <value>&apos;index:14 ,parameter variable:SCSINT32_COP&apos;</value>
                <value>&apos;fmiInteger&apos;</value>
                <value>&apos;&apos;</value>
                <value>1</value>
                <value>1</value>
                <value>37</value>
              </row>
              <row>
                <value>&apos;Ipar.(20,1)&apos;</value>
                <value>&apos;index:15 ,parameter variable:SCSINT32_COP&apos;</value>
                <value>&apos;fmiInteger&apos;</value>
                <value>&apos;&apos;</value>
                <value>1</value>
                <value>1</value>
                <value>36</value>
              </row>
              <row>
                <value>&apos;Ipar.(19,1)&apos;</value>
                <value>&apos;index:16 ,parameter variable:SCSINT32_COP&apos;</value>
                <value>&apos;fmiInteger&apos;</value>
                <value>&apos;&apos;</value>
                <value>1</value>
                <value>1</value>
                <value>35</value>
              </row>
              <row>
                <value>&apos;Ipar.(18,1)&apos;</value>
                <value>&apos;index:17 ,parameter variable:SCSINT32_COP&apos;</value>
                <value>&apos;fmiInteger&apos;</value>
                <value>&apos;&apos;</value>
                <value>-1</value>
                <value>-1</value>
                <value>34</value>
              </row>
              <row>
                <value>&apos;Ipar.(17,1)&apos;</value>
                <value>&apos;index:18 ,parameter variable:SCSINT32_COP&apos;</value>
                <value>&apos;fmiInteger&apos;</value>
                <value>&apos;&apos;</value>
                <value>-1</value>
                <value>-1</value>
                <value>33</value>
              </row>
              <row>
                <value>&apos;Ipar.(16,1)&apos;</value>
                <value>&apos;index:19 ,parameter variable:SCSINT32_COP&apos;</value>
                <value>&apos;fmiInteger&apos;</value>
                <value>&apos;&apos;</value>
                <value>1</value>
                <value>1</value>
                <value>32</value>
              </row>
              <row>
                <value>&apos;Ipar.(15,1)&apos;</value>
                <value>&apos;index:20 ,parameter variable:SCSINT32_COP&apos;</value>
                <value>&apos;fmiInteger&apos;</value>
                <value>&apos;&apos;</value>
                <value>0</value>
                <value>0</value>
                <value>31</value>
              </row>
              <row>
                <value>&apos;Ipar.(14,1)&apos;</value>
                <value>&apos;index:21 ,parameter variable:SCSINT32_COP&apos;</value>
                <value>&apos;fmiInteger&apos;</value>
                <value>&apos;&apos;</value>
                <value>1</value>
                <value>1</value>
                <value>30</value>
              </row>
              <row>
                <value>&apos;Ipar.(13,1)&apos;</value>
                <value>&apos;index:22 ,parameter variable:SCSINT32_COP&apos;</value>
                <value>&apos;fmiInteger&apos;</value>
                <value>&apos;&apos;</value>
                <value>1</value>
                <value>1</value>
                <value>29</value>
              </row>
              <row>
                <value>&apos;Ipar.(12,1)&apos;</value>
                <value>&apos;index:23 ,parameter variable:SCSINT32_COP&apos;</value>
                <value>&apos;fmiInteger&apos;</value>
                <value>&apos;&apos;</value>
                <value>0</value>
                <value>0</value>
                <value>28</value>
              </row>
              <row>
                <value>&apos;Ipar.(11,1)&apos;</value>
                <value>&apos;index:24 ,parameter variable:SCSINT32_COP&apos;</value>
                <value>&apos;fmiInteger&apos;</value>
                <value>&apos;&apos;</value>
                <value>1</value>
                <value>1</value>
                <value>27</value>
              </row>
              <row>
                <value>&apos;Ipar.(10,1)&apos;</value>
                <value>&apos;index:25 ,parameter variable:SCSINT32_COP&apos;</value>
                <value>&apos;fmiInteger&apos;</value>
                <value>&apos;&apos;</value>
                <value>1</value>
                <value>1</value>
                <value>26</value>
              </row>
              <row>
                <value>&apos;Ipar.(9,1)&apos;</value>
                <value>&apos;index:26 ,parameter variable:SCSINT32_COP&apos;</value>
                <value>&apos;fmiInteger&apos;</value>
                <value>&apos;&apos;</value>
                <value>1</value>
                <value>1</value>
                <value>25</value>
              </row>
              <row>
                <value>&apos;Ipar.(8,1)&apos;</value>
                <value>&apos;index:27 ,parameter variable:SCSINT32_COP&apos;</value>
                <value>&apos;fmiInteger&apos;</value>
                <value>&apos;&apos;</value>
                <value>1</value>
                <value>1</value>
                <value>24</value>
              </row>
              <row>
                <value>&apos;Ipar.(7,1)&apos;</value>
                <value>&apos;index:28 ,parameter variable:SCSINT32_COP&apos;</value>
                <value>&apos;fmiInteger&apos;</value>
                <value>&apos;&apos;</value>
                <value>1</value>
                <value>1</value>
                <value>23</value>
              </row>
              <row>
                <value>&apos;Ipar.(6,1)&apos;</value>
                <value>&apos;index:29 ,parameter variable:SCSINT32_COP&apos;</value>
                <value>&apos;fmiInteger&apos;</value>
                <value>&apos;&apos;</value>
                <value>1</value>
                <value>1</value>
                <value>22</value>
              </row>
              <row>
                <value>&apos;Ipar.(5,1)&apos;</value>
                <value>&apos;index:30 ,parameter variable:SCSINT32_COP&apos;</value>
                <value>&apos;fmiInteger&apos;</value>
                <value>&apos;&apos;</value>
                <value>1</value>
                <value>1</value>
                <value>21</value>
              </row>
              <row>
                <value>&apos;Ipar.(4,1)&apos;</value>
                <value>&apos;index:31 ,parameter variable:SCSINT32_COP&apos;</value>
                <value>&apos;fmiInteger&apos;</value>
                <value>&apos;&apos;</value>
                <value>1</value>
                <value>1</value>
                <value>20</value>
              </row>
              <row>
                <value>&apos;Ipar.(3,1)&apos;</value>
                <value>&apos;index:32 ,parameter variable:SCSINT32_COP&apos;</value>
                <value>&apos;fmiInteger&apos;</value>
                <value>&apos;&apos;</value>
                <value>1</value>
                <value>1</value>
                <value>19</value>
              </row>
              <row>
                <value>&apos;Ipar.(2,1)&apos;</value>
                <value>&apos;index:33 ,parameter variable:SCSINT32_COP&apos;</value>
                <value>&apos;fmiInteger&apos;</value>
                <value>&apos;&apos;</value>
                <value>1</value>
                <value>1</value>
                <value>18</value>
              </row>
              <row>
                <value>&apos;Ipar.(1,1)&apos;</value>
                <value>&apos;index:34 ,parameter variable:SCSINT32_COP&apos;</value>
                <value>&apos;fmiInteger&apos;</value>
                <value>&apos;&apos;</value>
                <value>1</value>
                <value>1</value>
                <value>17</value>
              </row>
              <row>
                <value>&apos;Power_3_1_1_2.opar3&apos;</value>
                <value>&apos;index:35 ,parameter variable:SCSINT32_COP&apos;</value>
                <value>&apos;fmiInteger&apos;</value>
                <value>&apos;&apos;</value>
                <value>0</value>
                <value>0</value>
                <value>16</value>
              </row>
              <row>
                <value>&apos;Power_3_1_1_2.opar2&apos;</value>
                <value>&apos;index:36 ,parameter variable:SCSBOOL_COP&apos;</value>
                <value>&apos;fmiBoolean&apos;</value>
                <value>&apos;&apos;</value>
                <value>false</value>
                <value>false</value>
                <value>4</value>
              </row>
              <row>
                <value>&apos;Power_3_1_1_2.opar1.(2,1)&apos;</value>
                <value>&apos;index:37 ,parameter variable:SCSREAL_COP&apos;</value>
                <value>&apos;fmiReal&apos;</value>
                <value>&apos;&apos;</value>
                <value>1.5</value>
                <value>1.5</value>
                <value>27</value>
              </row>
              <row>
                <value>&apos;Power_3_1_1_2.opar1.(1,1)&apos;</value>
                <value>&apos;index:38 ,parameter variable:SCSREAL_COP&apos;</value>
                <value>&apos;fmiReal&apos;</value>
                <value>&apos;&apos;</value>
                <value>1.5</value>
                <value>1.5</value>
                <value>26</value>
              </row>
              <row>
                <value>&apos;Power_3_1_1_1.opar3&apos;</value>
                <value>&apos;index:39 ,parameter variable:SCSINT32_COP&apos;</value>
                <value>&apos;fmiInteger&apos;</value>
                <value>&apos;&apos;</value>
                <value>0</value>
                <value>0</value>
                <value>15</value>
              </row>
              <row>
                <value>&apos;Power_3_1_1_1.opar2&apos;</value>
                <value>&apos;index:40 ,parameter variable:SCSBOOL_COP&apos;</value>
                <value>&apos;fmiBoolean&apos;</value>
                <value>&apos;&apos;</value>
                <value>false</value>
                <value>false</value>
                <value>3</value>
              </row>
              <row>
                <value>&apos;Power_3_1_1_1.opar1.(2,1)&apos;</value>
                <value>&apos;index:41 ,parameter variable:SCSREAL_COP&apos;</value>
                <value>&apos;fmiReal&apos;</value>
                <value>&apos;&apos;</value>
                <value>1.5</value>
                <value>1.5</value>
                <value>25</value>
              </row>
              <row>
                <value>&apos;Power_3_1_1_1.opar1.(1,1)&apos;</value>
                <value>&apos;index:42 ,parameter variable:SCSREAL_COP&apos;</value>
                <value>&apos;fmiReal&apos;</value>
                <value>&apos;&apos;</value>
                <value>1.5</value>
                <value>1.5</value>
                <value>24</value>
              </row>
              <row>
                <value>&apos;Power_3_1_4.opar3&apos;</value>
                <value>&apos;index:43 ,parameter variable:SCSINT32_COP&apos;</value>
                <value>&apos;fmiInteger&apos;</value>
                <value>&apos;&apos;</value>
                <value>0</value>
                <value>0</value>
                <value>14</value>
              </row>
              <row>
                <value>&apos;Power_3_1_4.opar2&apos;</value>
                <value>&apos;index:44 ,parameter variable:SCSBOOL_COP&apos;</value>
                <value>&apos;fmiBoolean&apos;</value>
                <value>&apos;&apos;</value>
                <value>true</value>
                <value>true</value>
                <value>2</value>
              </row>
              <row>
                <value>&apos;Power_3_1_4.opar1.(2,1)&apos;</value>
                <value>&apos;index:45 ,parameter variable:SCSREAL_COP&apos;</value>
                <value>&apos;fmiReal&apos;</value>
                <value>&apos;&apos;</value>
                <value>2.</value>
                <value>2.</value>
                <value>23</value>
              </row>
              <row>
                <value>&apos;Power_3_1_4.opar1.(1,1)&apos;</value>
                <value>&apos;index:46 ,parameter variable:SCSREAL_COP&apos;</value>
                <value>&apos;fmiReal&apos;</value>
                <value>&apos;&apos;</value>
                <value>2.</value>
                <value>2.</value>
                <value>22</value>
              </row>
              <row>
                <value>&apos;Power_3_1_3.opar3&apos;</value>
                <value>&apos;index:47 ,parameter variable:SCSINT32_COP&apos;</value>
                <value>&apos;fmiInteger&apos;</value>
                <value>&apos;&apos;</value>
                <value>0</value>
                <value>0</value>
                <value>13</value>
              </row>
              <row>
                <value>&apos;Power_3_1_3.opar2&apos;</value>
                <value>&apos;index:48 ,parameter variable:SCSBOOL_COP&apos;</value>
                <value>&apos;fmiBoolean&apos;</value>
                <value>&apos;&apos;</value>
                <value>true</value>
                <value>true</value>
                <value>1</value>
              </row>
              <row>
                <value>&apos;Power_3_1_3.opar1.(2,1)&apos;</value>
                <value>&apos;index:49 ,parameter variable:SCSREAL_COP&apos;</value>
                <value>&apos;fmiReal&apos;</value>
                <value>&apos;&apos;</value>
                <value>2.</value>
                <value>2.</value>
                <value>21</value>
              </row>
              <row>
                <value>&apos;Power_3_1_3.opar1.(1,1)&apos;</value>
                <value>&apos;index:50 ,parameter variable:SCSREAL_COP&apos;</value>
                <value>&apos;fmiReal&apos;</value>
                <value>&apos;&apos;</value>
                <value>2.</value>
                <value>2.</value>
                <value>20</value>
              </row>
              <row>
                <value>&apos;Power_3_1_2.opar3&apos;</value>
                <value>&apos;index:51 ,parameter variable:SCSINT32_COP&apos;</value>
                <value>&apos;fmiInteger&apos;</value>
                <value>&apos;&apos;</value>
                <value>0</value>
                <value>0</value>
                <value>12</value>
              </row>
              <row>
                <value>&apos;Power_3_1_2.opar2&apos;</value>
                <value>&apos;index:52 ,parameter variable:SCSBOOL_COP&apos;</value>
                <value>&apos;fmiBoolean&apos;</value>
                <value>&apos;&apos;</value>
                <value>true</value>
                <value>true</value>
                <value>0</value>
              </row>
              <row>
                <value>&apos;Power_3_1_2.opar1.(2,1)&apos;</value>
                <value>&apos;index:53 ,parameter variable:SCSREAL_COP&apos;</value>
                <value>&apos;fmiReal&apos;</value>
                <value>&apos;&apos;</value>
                <value>2.</value>
                <value>2.</value>
                <value>19</value>
              </row>
              <row>
                <value>&apos;Power_3_1_2.opar1.(1,1)&apos;</value>
                <value>&apos;index:54 ,parameter variable:SCSREAL_COP&apos;</value>
                <value>&apos;fmiReal&apos;</value>
                <value>&apos;&apos;</value>
                <value>2.</value>
                <value>2.</value>
                <value>18</value>
              </row>
              <row>
                <value>&apos;Gain_2.opar3&apos;</value>
                <value>&apos;index:55 ,parameter variable:SCSINT32_COP&apos;</value>
                <value>&apos;fmiInteger&apos;</value>
                <value>&apos;&apos;</value>
                <value>0</value>
                <value>0</value>
                <value>11</value>
              </row>
              <row>
                <value>&apos;Gain_2.opar2&apos;</value>
                <value>&apos;index:56 ,parameter variable:SCSINT32_COP&apos;</value>
                <value>&apos;fmiInteger&apos;</value>
                <value>&apos;&apos;</value>
                <value>0</value>
                <value>0</value>
                <value>10</value>
              </row>
              <row>
                <value>&apos;Gain_2.opar1&apos;</value>
                <value>&apos;index:57 ,parameter variable:SCSREAL_COP&apos;</value>
                <value>&apos;fmiReal&apos;</value>
                <value>&apos;&apos;</value>
                <value>0.987722529</value>
                <value>0.987722529</value>
                <value>17</value>
              </row>
              <row>
                <value>&apos;Gain_1_2.opar3&apos;</value>
                <value>&apos;index:58 ,parameter variable:SCSINT32_COP&apos;</value>
                <value>&apos;fmiInteger&apos;</value>
                <value>&apos;&apos;</value>
                <value>0</value>
                <value>0</value>
                <value>9</value>
              </row>
              <row>
                <value>&apos;Gain_1_2.opar2&apos;</value>
                <value>&apos;index:59 ,parameter variable:SCSINT32_COP&apos;</value>
                <value>&apos;fmiInteger&apos;</value>
                <value>&apos;&apos;</value>
                <value>0</value>
                <value>0</value>
                <value>8</value>
              </row>
              <row>
                <value>&apos;Gain_1_2.opar1&apos;</value>
                <value>&apos;index:60 ,parameter variable:SCSREAL_COP&apos;</value>
                <value>&apos;fmiReal&apos;</value>
                <value>&apos;&apos;</value>
                <value>0.012277471</value>
                <value>0.012277471</value>
                <value>16</value>
              </row>
              <row>
                <value>&apos;Gain_1_1_1.opar3&apos;</value>
                <value>&apos;index:61 ,parameter variable:SCSINT32_COP&apos;</value>
                <value>&apos;fmiInteger&apos;</value>
                <value>&apos;&apos;</value>
                <value>0</value>
                <value>0</value>
                <value>7</value>
              </row>
              <row>
                <value>&apos;Gain_1_1_1.opar2&apos;</value>
                <value>&apos;index:62 ,parameter variable:SCSINT32_COP&apos;</value>
                <value>&apos;fmiInteger&apos;</value>
                <value>&apos;&apos;</value>
                <value>0</value>
                <value>0</value>
                <value>6</value>
              </row>
              <row>
                <value>&apos;Gain_1_1_1.opar1&apos;</value>
                <value>&apos;index:63 ,parameter variable:SCSREAL_COP&apos;</value>
                <value>&apos;fmiReal&apos;</value>
                <value>&apos;&apos;</value>
                <value>2.</value>
                <value>2.</value>
                <value>15</value>
              </row>
              <row>
                <value>&apos;Gain_1_1.opar3&apos;</value>
                <value>&apos;index:64 ,parameter variable:SCSINT32_COP&apos;</value>
                <value>&apos;fmiInteger&apos;</value>
                <value>&apos;&apos;</value>
                <value>0</value>
                <value>0</value>
                <value>5</value>
              </row>
              <row>
                <value>&apos;Gain_1_1.opar2&apos;</value>
                <value>&apos;index:65 ,parameter variable:SCSINT32_COP&apos;</value>
                <value>&apos;fmiInteger&apos;</value>
                <value>&apos;&apos;</value>
                <value>0</value>
                <value>0</value>
                <value>4</value>
              </row>
              <row>
                <value>&apos;Gain_1_1.opar1&apos;</value>
                <value>&apos;index:66 ,parameter variable:SCSREAL_COP&apos;</value>
                <value>&apos;fmiReal&apos;</value>
                <value>&apos;&apos;</value>
                <value>2.</value>
                <value>2.</value>
                <value>14</value>
              </row>
              <row>
                <value>&apos;Gain_1.opar3&apos;</value>
                <value>&apos;index:67 ,parameter variable:SCSINT32_COP&apos;</value>
                <value>&apos;fmiInteger&apos;</value>
                <value>&apos;&apos;</value>
                <value>0</value>
                <value>0</value>
                <value>3</value>
              </row>
              <row>
                <value>&apos;Gain_1.opar2&apos;</value>
                <value>&apos;index:68 ,parameter variable:SCSINT32_COP&apos;</value>
                <value>&apos;fmiInteger&apos;</value>
                <value>&apos;&apos;</value>
                <value>0</value>
                <value>0</value>
                <value>2</value>
              </row>
              <row>
                <value>&apos;Gain_1.opar1&apos;</value>
                <value>&apos;index:69 ,parameter variable:SCSREAL_COP&apos;</value>
                <value>&apos;fmiReal&apos;</value>
                <value>&apos;&apos;</value>
                <value>0.012277471</value>
                <value>0.012277471</value>
                <value>13</value>
              </row>
              <row>
                <value>&apos;Gain.opar3&apos;</value>
                <value>&apos;index:70 ,parameter variable:SCSINT32_COP&apos;</value>
                <value>&apos;fmiInteger&apos;</value>
                <value>&apos;&apos;</value>
                <value>0</value>
                <value>0</value>
                <value>1</value>
              </row>
              <row>
                <value>&apos;Gain.opar2&apos;</value>
                <value>&apos;index:71 ,parameter variable:SCSINT32_COP&apos;</value>
                <value>&apos;fmiInteger&apos;</value>
                <value>&apos;&apos;</value>
                <value>0</value>
                <value>0</value>
                <value>0</value>
              </row>
              <row>
                <value>&apos;Gain.opar1&apos;</value>
                <value>&apos;index:72 ,parameter variable:SCSREAL_COP&apos;</value>
                <value>&apos;fmiReal&apos;</value>
                <value>&apos;&apos;</value>
                <value>0.987722529</value>
                <value>0.987722529</value>
                <value>12</value>
              </row>
              <row>
                <value>&apos;Constant_1.C&apos;</value>
                <value>&apos;index:73 ,parameter variable:SCSREAL_COP&apos;</value>
                <value>&apos;fmiReal&apos;</value>
                <value>&apos;&apos;</value>
                <value>-0.987722529</value>
                <value>-0.987722529</value>
                <value>11</value>
              </row>
              <row>
                <value>&apos;Constant.C&apos;</value>
                <value>&apos;index:74 ,parameter variable:SCSREAL_COP&apos;</value>
                <value>&apos;fmiReal&apos;</value>
                <value>&apos;&apos;</value>
                <value>0.012277471</value>
                <value>0.012277471</value>
                <value>10</value>
              </row>
              <row>
                <value>&apos;state[3]&apos;</value>
                <value>&apos;index:75 ,local variable:SCSREAL_COP&apos;</value>
                <value>&apos;fmiReal&apos;</value>
                <value>&apos;&apos;</value>
                <value>0.</value>
                <value>0.</value>
                <value>8</value>
              </row>
              <row>
                <value>&apos;state[2]&apos;</value>
                <value>&apos;index:77 ,local variable:SCSREAL_COP&apos;</value>
                <value>&apos;fmiReal&apos;</value>
                <value>&apos;&apos;</value>
                <value>0.994</value>
                <value>0.994</value>
                <value>6</value>
              </row>
              <row>
                <value>&apos;state[1]&apos;</value>
                <value>&apos;index:79 ,local variable:SCSREAL_COP&apos;</value>
                <value>&apos;fmiReal&apos;</value>
                <value>&apos;&apos;</value>
                <value>-2.00158510638</value>
                <value>-2.00158510638</value>
                <value>4</value>
              </row>
              <row>
                <value>&apos;state[0]&apos;</value>
                <value>&apos;index:81 ,local variable:SCSREAL_COP&apos;</value>
                <value>&apos;fmiReal&apos;</value>
                <value>&apos;&apos;</value>
                <value>0.</value>
                <value>0.</value>
                <value>2</value>
              </row>
            </rows>
          </parametertable>
        </section>
        <section name="Advanced">
          <parameter name="run_as_me" value="1"/>
          <parameter name="tolerancecontrolled" value="1"/>
          <parameter name="stoptimedefined" value="1"/>
          <parameter name="deleteafteruse" value="1"/>
          <parameter name="inevent" value="0"/>
          <parameter name="outevent" value="0"/>
          <parameter name="resources" value="&apos;&apos;"/>
          <parameter name="tempdir" value="&apos;&apos;"/>
          <parameter name="ipc" value="0"/>
        </section>
        <section name="Reporting">
          <parameter name="enable_fmulogging" value="1"/>
          <parameter name="simloglevel" value="&apos;Warning&apos;"/>
          <parameter name="add_Activate_messages" value="1"/>
          <parameter name="fmulogging_cats" value="&apos;&apos;"/>
          <parameter name="log_file_name" value="&apos;&apos;"/>
          <parameter name="csv" value="&apos;;&apos;"/>
          <parameter name="out_enum_as_int_flag" value="1"/>
          <parameter name="log_only_outputs" value="1"/>
          <parameter name="result_file" value="&apos;&apos;"/>
        </section>
        <section name="Model Exchange">
          <parameter name="stepevent" value="1"/>
          <parameter name="stateevent" value="1"/>
          <parameter name="timeevent" value="1"/>
          <parameter name="OutputOn" value="0"/>
          <parameter name="meshpoints" value="1"/>
          <parameter name="superdensetimes" value="1"/>
        </section>
        <section name="Co-Simulation">
          <parameter name="fixedComStepsize" value="0.0"/>
          <parameter name="provideDerivative" value="0"/>
          <parameter name="exploitOutDerivative" value="1"/>
          <parameter name="visible" value="0"/>
        </section>
      </parameters>
    </block>
    <block name="Split" type="regular_split">
      <template name="system/Links/Split"/>
      <properties>
        <property name="inlinable" value="0"/>
        <property name="masked" value="1"/>
        <property name="atomic" value="0"/>
      </properties>
      <graphics>
        <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
        <frame shape="ellipse" visible="1" color="0,0,0,255" thickness="1.5"/>
        <background color="64,64,64,255"/>
        <position x="470.3143005371094" y="196.0293120000001"/>
        <size width="0" height="0"/>
        <rotate angle="0"/>
        <texts>
          <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
        </texts>
        <images>
          <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
        </images>
        <flip value="0">
          <images>
            <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
          </images>
        </flip>
      </graphics>
      <ports>
        <port name="" type="fixedport">
          <properties>
            <property name="iotype" value="in"/>
            <property name="datatype" value="Explicit"/>
            <property name="portnumber" value="1"/>
          </properties>
          <graphics>
            <location position="left"/>
            <label visible="1" font="Arial,10" color="255,255,255,255"/>
            <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
          </graphics>
        </port>
        <port name="" type="fixedport">
          <properties>
            <property name="iotype" value="out"/>
            <property name="datatype" value="Explicit"/>
            <property name="portnumber" value="1"/>
          </properties>
          <graphics>
            <location position="right"/>
            <label visible="1" font="Arial,10" color="255,255,255,255"/>
            <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
          </graphics>
        </port>
        <port name="" type="fixedport">
          <properties>
            <property name="iotype" value="out"/>
            <property name="datatype" value="Explicit"/>
            <property name="portnumber" value="2"/>
          </properties>
          <graphics>
            <location position="right"/>
            <label visible="1" font="Arial,10" color="255,255,255,255"/>
            <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
          </graphics>
        </port>
        <port name="" type="fixedport">
          <properties>
            <property name="iotype" value="out"/>
            <property name="datatype" value="Explicit"/>
            <property name="portnumber" value="3"/>
          </properties>
          <graphics>
            <location position="right"/>
            <label visible="1" font="Arial,10" color="255,255,255,255"/>
            <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
          </graphics>
        </port>
      </ports>
      <parameters>
        <section name="Parameters">
        </section>
      </parameters>
    </block>
    <block name="FromCSV" type="block">
      <template name="system/SignalImporters/FromCSV"/>
      <properties>
        <property name="inlinable" value="0"/>
        <property name="masked" value="1"/>
        <property name="atomic" value="0"/>
      </properties>
      <graphics>
        <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
        <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
        <background color="255,255,255,255"/>
        <position x="494.01300048828125" y="413.12127685546875"/>
        <size width="120" height="72"/>
        <rotate angle="0"/>
        <texts>
          <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">Arenstorf_ref.csv</text>
        </texts>
        <images>
          <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
        </images>
        <flip value="0">
          <images>
            <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
          </images>
        </flip>
      </graphics>
      <ports>
        <port name="&quot;x_coor&quot; &quot;y_coor&quot;" type="variableport">
          <properties>
            <property name="iotype" value="out"/>
            <property name="datatype" value="Explicit"/>
            <property name="portnumber" value="nout"/>
          </properties>
          <graphics>
            <location position="right"/>
            <label visible="1" font="Arial,11" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
          </graphics>
        </port>
        <port name="" type="variableport">
          <properties>
            <property name="iotype" value="in"/>
            <property name="datatype" value="Activation"/>
            <property name="portnumber" value="externalActivation"/>
          </properties>
          <graphics>
            <location position="top"/>
            <label visible="1" font="Arial,11" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
            <background color="183,15,19,255"/>
          </graphics>
        </port>
        <port name="" type="variableport">
          <properties>
            <property name="iotype" value="out"/>
            <property name="datatype" value="Activation"/>
            <property name="portnumber" value="outevent"/>
          </properties>
          <graphics>
            <location position="bottom"/>
            <label visible="1" font="Arial,11" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
            <background color="183,15,19,255"/>
          </graphics>
        </port>
      </ports>
      <parameters>
        <section name="Parameters">
          <parameter name="fname" value="&apos;E:/FMI/Git_fmi-cross-check/fmus/2.0/me/win64/Altair_Activate/2020/Arenstorf/Arenstorf_ref.csv&apos;"/>
          <parameter name="nout" value="2"/>
          <parametertable name="outports">
            <columns number="2">
              <parameter name="varname" value="&apos;A&apos;"/>
              <parameter name="vardatatype" value="&apos;double&apos;"/>
            </columns>
            <rows number="nout">
              <row>
                <value>&apos;x_coor&apos;</value>
                <value>&apos;double&apos;</value>
              </row>
              <row>
                <value>&apos;y_coor&apos;</value>
                <value>&apos;double&apos;</value>
              </row>
            </rows>
          </parametertable>
          <parameter name="outevent" value="0"/>
          <parameter name="externalActivation" value="0"/>
        </section>
        <section name="Advanced">
          <parameter name="Method" value="&apos;Linear&apos;"/>
          <parameter name="Leftside" value="&apos;Zero&apos;"/>
          <parameter name="Rightside" value="&apos;Hold&apos;"/>
          <parameter name="Offset" value="2"/>
          <parameter name="Separator" value="&apos;&apos;"/>
        </section>
      </parameters>
    </block>
    <block name="EventClock_1_1" type="block">
      <template name="system/ActivationOperations/EventClock"/>
      <properties>
        <property name="inlinable" value="1"/>
        <property name="masked" value="1"/>
        <property name="atomic" value="0"/>
      </properties>
      <graphics>
        <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
        <frame shape="rectangle" visible="0" color="0,0,0,0" thickness="1.5"/>
        <background color="255,255,255,0"/>
        <position x="682.4365234375" y="359.5566023222656"/>
        <size width="50" height="40"/>
        <rotate angle="0"/>
        <texts>
          <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
        </texts>
        <images>
          <image name="image1" file="ActivationOperations/time.svg" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
        </images>
        <flip value="0">
          <images>
            <image name="image2" file="ActivationOperations/time.svg" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
          </images>
        </flip>
      </graphics>
      <ports>
        <port name="" type="fixedport">
          <properties>
            <property name="iotype" value="out"/>
            <property name="datatype" value="Activation"/>
            <property name="portnumber" value="1"/>
          </properties>
          <graphics>
            <location position="bottom"/>
            <label visible="1" font="Arial,10" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
            <background color="183,15,19,255"/>
          </graphics>
        </port>
      </ports>
      <parameters>
        <section name="Parameters">
          <parameter name="period" value="0.1"/>
          <parameter name="init" value="0"/>
        </section>
      </parameters>
    </block>
    <block name="ScopeXY_1" type="block">
      <template name="system/SignalViewers/ScopeXY"/>
      <properties>
        <property name="inlinable" value="0"/>
        <property name="masked" value="1"/>
        <property name="atomic" value="0"/>
      </properties>
      <graphics>
        <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
        <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
        <background color="255,255,255,255"/>
        <position x="687.4365234375" y="432.1580583222656"/>
        <size width="40" height="40"/>
        <rotate angle="0"/>
        <texts>
          <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
        </texts>
        <images>
          <image name="image1" file="SignalViewers/scopeXY.svg" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
        </images>
        <flip value="0">
          <images>
            <image name="image2" file="SignalViewers/scopeXY.svg" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
          </images>
        </flip>
      </graphics>
      <ports>
        <port name="" type="fixedport">
          <properties>
            <property name="iotype" value="in"/>
            <property name="datatype" value="Explicit"/>
            <property name="portnumber" value="1"/>
          </properties>
          <graphics>
            <location position="left"/>
            <label visible="1" font="Arial,10" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
          </graphics>
        </port>
        <port name="" type="fixedport">
          <properties>
            <property name="iotype" value="in"/>
            <property name="datatype" value="Explicit"/>
            <property name="portnumber" value="2"/>
          </properties>
          <graphics>
            <location position="left"/>
            <label visible="1" font="Arial,10" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
          </graphics>
        </port>
        <port name="" type="variableport">
          <properties>
            <property name="iotype" value="in"/>
            <property name="datatype" value="Activation"/>
            <property name="portnumber" value="externalActivation"/>
          </properties>
          <graphics>
            <location position="top"/>
            <label visible="1" font="Arial,10" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
            <background color="183,15,19,255"/>
          </graphics>
        </port>
      </ports>
      <parameters>
        <section name="Main">
          <parameter name="externalActivation" value="1"/>
          <parameter name="winSize" value="[400,400]"/>
          <parameter name="winPos" value="[300,300]"/>
          <parameter name="winNam" value="&apos;&apos;"/>
          <parameter name="winHidden" value="0"/>
          <parameter name="showAtEnd" value="0"/>
          <parameter name="option" value="&apos;Reuse&apos;"/>
        </section>
        <section name="Advanced">
          <parameter name="plotTitle" value="&apos;&apos;"/>
          <parameter name="plotColor" value="0"/>
          <parameter name="plotGrid" value="&apos;No Grid&apos;"/>
          <parameter name="xScale" value="&apos;linear&apos;"/>
          <parameter name="xInterval" value="[-1.5,1.5]"/>
          <parameter name="yScale" value="&apos;linear&apos;"/>
          <parameter name="yInterval" value="[-1.5,1.5]"/>
          <parameter name="curvesStyle" value="0"/>
        </section>
      </parameters>
    </block>
    <link name="" type="Activation">
      <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
      <from block="EventClock_1" port="1" iotype="out"/>
      <to block="ScopeXY" port="1" iotype="in"/>
      <pen shape="line" color="183,15,19,255" thickness="1.5"/>
      <points/>
    </link>
    <link name="" type="Explicit">
      <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
      <from block="arenstorf" port="1" iotype="out"/>
      <to block="Split" port="1" iotype="in"/>
      <pen shape="line" color="64,64,64,255" thickness="1.5"/>
      <points>
        <point x="338.83541899999994" y="196.02931200000006"/>
      </points>
    </link>
    <link name="" type="Explicit">
      <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
      <from block="Mux" port="1" iotype="out"/>
      <to block="Scope" port="1" iotype="in"/>
      <pen shape="line" color="64,64,64,255" thickness="1.5"/>
      <points/>
    </link>
    <link name="" type="Explicit">
      <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
      <from block="FMU_1" port="1" iotype="out"/>
      <to block="Mux" port="3" iotype="in"/>
      <pen shape="line" color="64,64,64,255" thickness="1.5"/>
      <points>
        <point x="454.677063" y="417.738739"/>
        <point x="454.67706300000003" y="241.30433700000012"/>
      </points>
    </link>
    <link name="" type="Explicit">
      <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
      <from block="FMU" port="1" iotype="out"/>
      <to block="Mux" port="2" iotype="in"/>
      <pen shape="line" color="64,64,64,255" thickness="1.5"/>
      <points>
        <point x="424.598663" y="289.218506"/>
        <point x="424.59866300000004" y="221.30433699999998"/>
      </points>
    </link>
    <link name="" type="Explicit">
      <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
      <from block="ScopeXY" port="2" iotype="in"/>
      <to block="arenstorf" port="2" iotype="out"/>
      <pen shape="line" color="64,64,64,255" thickness="1.5"/>
      <points>
        <point x="450.3143005371094" y="325.119049"/>
        <point x="450.3143005371094" y="216.029312"/>
      </points>
    </link>
    <link name="" type="Explicit">
      <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
      <from block="Mux" port="1" iotype="in"/>
      <to block="Split" port="2" iotype="out"/>
      <pen shape="line" color="64,64,64,255" thickness="1.5"/>
      <points>
        <point x="470.3143005371094" y="201.30433700000003"/>
      </points>
    </link>
    <link name="" type="Explicit">
      <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
      <from block="Split" port="1" iotype="out"/>
      <to block="ScopeXY" port="1" iotype="in"/>
      <pen shape="line" color="64,64,64,255" thickness="1.5"/>
      <points>
        <point x="470.3143005371094" y="305.119049"/>
      </points>
    </link>
    <link name="" type="Activation">
      <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
      <from block="EventClock_1_1" port="1" iotype="out"/>
      <to block="ScopeXY_1" port="1" iotype="in"/>
      <pen shape="line" color="183,15,19,255" thickness="1.5"/>
      <points/>
    </link>
    <link name="" type="Explicit">
      <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
      <from block="FromCSV" port="1" iotype="out"/>
      <to block="ScopeXY_1" port="1" iotype="in"/>
      <pen shape="line" color="64,64,64,255" thickness="1.5"/>
      <points>
        <point x="650.7247619628906" y="431.12127685546875"/>
        <point x="650.7247619628906" y="442.1580583222656"/>
      </points>
    </link>
    <link name="" type="Explicit">
      <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
      <from block="FromCSV" port="2" iotype="out"/>
      <to block="ScopeXY_1" port="2" iotype="in"/>
      <pen shape="line" color="64,64,64,255" thickness="1.5"/>
      <points>
        <point x="650.7247619628906" y="467.12127685546875"/>
        <point x="650.7247619628906" y="462.1580583222656"/>
      </points>
    </link>
    <annotation name="Annotation" type="text">
      <frame shape="rectangle" visible="0" color="0,0,0,255" cornerradius="0" thickness="1.5"/>
      <background color="0,0,0,0"/>
      <position x="276.915985" y="123.78057899999999"/>
      <size width="176" height="38"/>
      <rotate angle="0"/>
      <text font="Arial,10" color="0,0,0,255">Superblock to be exported &#xA;to test the FMU Export features</text>
    </annotation>
    <context/>
    <graphics>
      <viewport width="800" height="800" topleftx="0" toplefty="0"/>
      <window width="800" height="800" topleftx="0" toplefty="0"/>
    </graphics>
  </diagram>
  <simulation>
    <properties>
      <property name="InitialTime" value="0"/>
      <property name="FinalTime" value="20"/>
      <property name="RealTimeScale" value="0"/>
      <property name="AbsoluteErrorTolerance" value="0.000001"/>
      <property name="RelativeErrorTolerance" value="0.000001"/>
      <property name="MaxTimeInterval" value="-1"/>
      <property name="TimeTolerance" value="-1"/>
      <property name="Solver" value="euler_exp"/>
      <property name="MaxStepSize" value="0.000001"/>
      <property name="InitialStepSize" value="0"/>
      <property name="MinimalStepSize" value="0"/>
      <property name="ZeroCrossingThreshold" value="-1"/>
      <property name="NumberOfConsecutiveZeroCrossing" value="-1"/>
      <property name="TimeToleranceZeroCrossing" value="-1"/>
      <property name="AlgebraicSolver" value="idacalc"/>
      <property name="JacobianMethod" value="1"/>
    </properties>
  </simulation>
</model>
