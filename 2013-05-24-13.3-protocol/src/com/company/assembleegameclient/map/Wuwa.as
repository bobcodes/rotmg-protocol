package com.company.assembleegameclient.map
{
   import flash.display.Sprite;
   import flash.utils.Dictionary;
   import com.company.assembleegameclient.game.Nukomesih;
   import com.company.assembleegameclient.objects.Player;
   import luzy.Background;
   import wyrovu.Tivehy;
   import fezeker.Haji;
   import __AS3__.vec.Vector;
   import com.company.assembleegameclient.objects.Miv;
   import com.company.assembleegameclient.objects.BasicObject;
   import flash.geom.Point;


   public class Wuwa extends Sprite
   {
      public function Wuwa() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.goDict_=new Dictionary();
         this.map_=new Sprite();
         this.lilytiwim=new Vector.<Square>();
         this.squares_=new Vector.<Square>();
         this.tulitezu=new Dictionary();
         this.merchLookup_=new Object();
         super();
         return;
      }

      public var goDict_:Dictionary;

      public var gs_:Nukomesih;

      public var name_:String;

      public var player_:Player = null;

      public var showDisplays_:Boolean;

      public var width_:int;

      public var height_:int;

      public var kypodap:int;

      public var allowPlayerTeleport_:Boolean;

      public var background_:Background = null;

      public var map_:Sprite;

      public var myqu:Pyladulin = null;

      public var lyb:Vuwu = null;

      public var mapOverlay_:Tivehy = null;

      public var partyOverlay_:Haji = null;

      public var lilytiwim:Vector.<Square>;

      public var squares_:Vector.<Square>;

      public var tulitezu:Dictionary;

      public var merchLookup_:Object;

      public var party_:Miv = null;

      public var quest_:Quest = null;

      public function setProps(param1:int, param2:int, param3:String, param4:int, param5:Boolean, param6:Boolean) : void {
         return;
      }

      public function addObj(param1:BasicObject, param2:Number, param3:Number) : void {
         return;
      }

      public function setGroundTile(param1:int, param2:int, param3:uint) : void {
         return;
      }

      public function initialize() : void {
         return;
      }

      public function dispose() : void {
         return;
      }

      public function update(param1:int, param2:int) : void {
         return;
      }

      public function pSTopW(param1:Number, param2:Number) : Point {
         return null;
      }

      public function removeObj(param1:int) : void {
         return;
      }

      public function draw(param1:Wypyj, param2:int) : void {
         return;
      }
   }

}